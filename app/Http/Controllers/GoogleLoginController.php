<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Google_Client;
use App\Models\Pengguna; // gunakan model Pengguna sesuai migration
use Illuminate\Support\Facades\Auth;

class GoogleLoginController extends Controller
{
    protected function makeClient(): Google_Client
    {
        $client = new Google_Client();
        $client->setClientId(config('services.google.client_id'));
        $client->setClientSecret(config('services.google.client_secret'));
        $client->setRedirectUri(route('google.login.callback'));

        // scope untuk login user
        $client->addScope('email');
        $client->addScope('profile');

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
            return redirect()->route('google.login')->with('error', 'Kode otorisasi tidak ditemukan.');
        }

        $client = $this->makeClient();
        $token = $client->fetchAccessTokenWithAuthCode($request->get('code'));

        if (isset($token['error'])) {
            return redirect()->route('google.login')->with('error', 'Gagal mendapatkan token: ' . $token['error']);
        }

        $client->setAccessToken($token);
        $googleUser = $client->verifyIdToken();

        if (!$googleUser) {
            return redirect()->route('google.login')->with('error', 'Gagal verifikasi user Google.');
        }

        // cek apakah user sudah ada
        $user = Pengguna::where('email', $googleUser['email'])->first();

        if (!$user) {
            // buat user baru langsung dengan role pegawai
            $user = Pengguna::create([
                'nama' => $googleUser['name'],
                'email' => $googleUser['email'],
                'google_id' => $googleUser['sub'],
                'google_avatar' => $googleUser['picture'] ?? null,
                'role' => 'pegawai', // otomatis pegawai
                'password' => bcrypt(str()->random(16)), // password random
            ]);
        }

        Auth::login($user);
        return redirect()->intended('/dashboard');
    }
}