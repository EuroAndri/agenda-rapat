<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GoogleAuthController;
use App\Http\Controllers\GoogleLoginController;

Route::get('/', function () {
    return redirect('/admin');
});

// Google Calendar
Route::get('/auth/google', [GoogleAuthController::class, 'redirect'])->name('google.redirect');
Route::get('/oauth2callback', [GoogleAuthController::class, 'callback'])->name('google.callback');
Route::get('/events', [GoogleAuthController::class, 'listEvents'])->name('google.events');

// Google Login/Register
Route::get('/auth/google/login', [GoogleLoginController::class, 'redirect'])->name('google.login');
Route::get('/auth/google/callback', [GoogleLoginController::class, 'callback'])->name('google.login.callback');

Route::get('/register/choose-role/{user}', [GoogleLoginController::class, 'chooseRole'])->name('register.chooseRole');
Route::post('/register/set-role/{user}', [GoogleLoginController::class, 'setRole'])->name('register.setRole');