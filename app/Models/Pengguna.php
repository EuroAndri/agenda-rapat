<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
    use HasFactory;

    protected $table = 'pengguna'; 
    protected $primaryKey = 'id'; 

    public $incrementing = false; 
    protected $keyType = 'string'; 

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

//nama kolom dan tabel kecil
