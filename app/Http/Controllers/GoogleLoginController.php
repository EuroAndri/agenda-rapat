<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Google_Client;
use App\Models\User;
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
        $user = User::where('email', $googleUser['email'])->first();

        if (!$user) {
            // buat user baru tanpa role
            $user = User::create([
                'name' => $googleUser['name'],
                'email' => $googleUser['email'],
                'google_id' => $googleUser['sub'],
                'password' => bcrypt(str()->random(16)),
            ]);

            // redirect ke halaman pilih role
            return redirect()->route('register.chooseRole', ['user' => $user->id]);
        }

        Auth::login($user);
        return redirect()->intended('/dashboard');
    }

    public function chooseRole(User $user)
    {
        return view('auth.choose-role', compact('user'));
    }

    public function setRole(Request $request, User $user)
    {
        $request->validate([
            'role' => 'required|in:admin,operator,pegawai',
        ]);

        $user->role = $request->role;
        $user->save();

        Auth::login($user);
        return redirect()->intended('/dashboard');
    }
}