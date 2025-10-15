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

    public function canAccessPanel(Panel $panel): bool
    {
        return $this->hasRole(['admin', 'operator', 'pegawai']);
    }

    public function getFilamentName(): string
    {
        return $this->nama ?? $this->email ?? 'Pengguna';
    }

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
}