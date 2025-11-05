<?php

namespace App\Models;

use Filament\Models\Contracts\FilamentUser;
use Filament\Models\Contracts\HasName;
use Filament\Panel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Spatie\Permission\Traits\HasRoles;

class Pengguna extends Authenticatable implements FilamentUser, HasName
{
    use HasFactory, HasUuids, HasRoles, Notifiable;

    protected $table = 'pengguna';
    protected $primaryKey = 'id';   

    protected $fillable = [
        'nama',
        'email',
        'password',
        'google_id',
        'google_avatar',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    // 🔑 IZIN AKSES PANEL FILAMENT
    public function canAccessPanel(Panel $panel): bool
    {
        // Hanya role tertentu yang bisa login ke dashboard
        return $this->hasRole(['admin', 'operator', 'pegawai']);
    }

    // 🧾 NAMA YANG DITAMPILKAN DI FILAMENT
    public function getFilamentName(): string
    {
        return $this->nama ?? $this->email ?? 'Pengguna';
    }

    // 🧩 RELASI
    public function kehadirans()
    {
        return $this->hasMany(Kehadiran::class, 'pengguna_id');
    }

    public function notulens()
    {
        return $this->hasMany(Notulen::class, 'pengguna_id');
    }

    public function rapats()
    {
        return $this->hasMany(Rapat::class, 'pengguna_id');
    }

    // 🛠️ OTOMATIS SIMPAN ROLE DARI FORM FILAMENT (aman untuk login & seeder)
    protected static function booted()
    {
        static::saved(function ($pengguna) {
            // Jalankan hanya saat menyimpan data lewat panel admin
            if (request()->is('admin/*') && request()->has('roles')) {
                $roles = request()->input('roles');
                $pengguna->syncRoles(is_array($roles) ? $roles : [$roles]);
            }
        });
    }
}
