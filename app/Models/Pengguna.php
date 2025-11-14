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

    public string $guard_name = 'web';

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

    public function rapats_diikuti()
    {
        return $this->belongsToMany(Rapat::class, 'rapat_pengguna', 'pengguna_id', 'rapat_id')
            ->withPivot('status_kehadiran')
            ->withTimestamps();
    }

    protected static function booted()
    {
        static::saved(function ($pengguna) {
            if (request()->is('admin/*') && request()->has('roles')) {
                $roles = request()->input('roles');
                $pengguna->syncRoles(is_array($roles) ? $roles : [$roles]);
            }
        });
    }
}
