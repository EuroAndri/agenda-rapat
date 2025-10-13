<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
    use HasFactory;

    protected $table = 'Pengguna';

    protected $primaryKey = 'id';

    public $incrementing = false;

    protected $keyType = 'string';

    protected $fillable = [
        'nama', 'email', 'password', 'google_id',
    ];

    public function kehadirans()
    {
        return $this->hasMany(Kehadiran::class, 'id_pengguna', 'id');
    }

    public function notulens()
    {
        return $this->hasMany(Notulen::class, 'Dibuat_oleh', 'id');
    }

    public function rapats()
    {
        return $this->belongsToMany(Rapat::class, 'Pengguna_Rapat', 'id_pengguna', 'id_rapat');
    }
}
