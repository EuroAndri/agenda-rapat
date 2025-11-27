<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use Filament\Support\Enums\Icon;
use Google_Client;
use Google_Service_Calendar;

class GoogleCalendar extends Page
{
    protected static \BackedEnum|string|null $navigationIcon = 'heroicon-o-calendar';
    protected string $view = 'filament.pages.google-calendar';
    protected static ?string $navigationLabel = 'Google Calendar';
    protected static ?string $title = 'Google Calendar';

    public array $events = [];

    public static function canAccess(): bool
    {
        return true; // semua role bisa akses
    }

    public function mount(): void
    {
        $token = session('google_token');
        if (!$token) {
            $this->events = [];
            return;
        }

        $client = new Google_Client();
        $client->setAccessToken($token);

        if ($client->isAccessTokenExpired() && isset($token['refresh_token'])) {
            $client->fetchAccessTokenWithRefreshToken($token['refresh_token']);
            session(['google_token' => $client->getAccessToken()]);
        }

        $service = new Google_Service_Calendar($client);
        $calendarId = env('GOOGLE_CALENDAR_ID', 'primary');

        $events = $service->events->listEvents($calendarId, [
            'maxResults' => 50,
            'singleEvents' => true,
            'orderBy' => 'startTime',
            'timeMin' => now()->startOfMonth()->toRfc3339String(),
            'timeMax' => now()->endOfMonth()->toRfc3339String(),
        ]);

        $items = [];
        foreach ($events->getItems() as $event) {
            $start = $event->getStart()->getDateTime() ?: $event->getStart()->getDate();
            $end   = $event->getEnd()->getDateTime() ?: $event->getEnd()->getDate();

            $items[] = [
                'title' => $event->getSummary(),
                'start' => $start,
                'end'   => $end,
            ];
        }

        // kalau tidak ada event, tetap isi dummy tanggal 1–akhir bulan
        

        $this->events = $items;
    }
}