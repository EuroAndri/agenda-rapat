<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Google_Client;
use Google_Service_Calendar;
use Carbon\Carbon;


class GoogleAuthController extends Controller
{
    protected function makeClient(): Google_Client
    {
        $client = new Google_Client();
        $client->setClientId(config('services.google.client_id'));
        $client->setClientSecret(config('services.google.client_secret'));
        $client->setRedirectUri(config('services.google.redirect'));

        // Scope untuk akses kalender
        $client->addScope(Google_Service_Calendar::CALENDAR);

        // Agar dapat refresh token
        $client->setAccessType('offline');
        $client->setPrompt('consent');

        return $client;
    }

    public function redirect()
    {
        $client = $this->makeClient();
        return redirect()->away($client->createAuthUrl());
    }

    public function callback(Request $request)
    {
        if (!$request->has('code')) {
            return redirect()->route('google.redirect')
                ->with('error', 'Kode otorisasi tidak ditemukan.');
        }

        $client = $this->makeClient();
        $token = $client->fetchAccessTokenWithAuthCode($request->get('code'));

        if (isset($token['error'])) {
            return redirect()->route('google.redirect')
                ->with('error', 'Gagal mendapatkan token: ' . $token['error']);
        }

        // Simpan token ke session (atau database)
        session(['google_token' => $token]);

        return redirect('/')->with('success', 'Google Calendar berhasil terhubung!');
    }

    public function listEvents()
    {
        $token = session('google_token');
        if (!$token) {
            return redirect()->route('google.redirect')->with('warning', 'Hubungkan Google terlebih dahulu.');
        }

        $client = $this->makeClient();
        $client->setAccessToken($token);

        // Refresh token jika expired
        if ($client->isAccessTokenExpired() && isset($token['refresh_token'])) {
            $client->fetchAccessTokenWithRefreshToken($token['refresh_token']);
            session(['google_token' => $client->getAccessToken()]);
        }

        $service = new Google_Service_Calendar($client);
        $calendarId = env('GOOGLE_CALENDAR_ID', 'primary');

        $events = $service->events->listEvents($calendarId, [
            'maxResults' => 10,
            'singleEvents' => true,
            'orderBy' => 'startTime',
            'timeMin' => now()->startOfDay()->toRfc3339String(),
        ]);

        $items = collect($events->getItems())->map(function ($event) {
            $start = $event->getStart()->getDateTime() ?: $event->getStart()->getDate();
            return [
                'summary' => $event->getSummary(),
                'start' => $start,
            ];
        });

        return response()->json($items);
    }
}