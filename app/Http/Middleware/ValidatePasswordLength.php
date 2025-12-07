<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class ValidatePasswordLength
{
    public function handle(Request $request, Closure $next)
    {
        // Cek hanya saat login POST
        if ($request->isMethod('post') && $request->routeIs('filament.admin.login')) {
            $password = $request->input('password');
            if ($password && strlen($password) < 8) {
                return back()->withErrors([
                    'password' => 'Password minimal 8 karakter.',
                ]);
            }
        }

        return $next($request);
    }
}