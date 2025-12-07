<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GoogleAuthController;

Route::get('/', function () {
    return redirect('/admin');
});

Route::get('/auth/google', [GoogleAuthController::class, 'redirect'])->name('google.redirect');
Route::get('/oauth2callback', [GoogleAuthController::class, 'callback'])->name('google.callback');
Route::get('/events', [GoogleAuthController::class, 'listEvents'])->name('google.events');

Route::get('/auth/google/logout', function () {
    session()->forget('google_token');

    return redirect('/admin/google-calendar')
        ->with('success', 'Anda sudah logout dari Google Calendar.');
})->name('google.logout');
