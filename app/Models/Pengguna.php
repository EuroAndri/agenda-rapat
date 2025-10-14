<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Pengguna extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'pengguna'; 
    protected $primaryKey = 'id'; 

    protected $fillable = [
        'nama', 'email', 'password', 'google_id', 'google_avatar',
    ];

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
