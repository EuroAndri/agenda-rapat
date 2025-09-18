<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use App\Models\Pengguna;
use App\Models\Kehadiran;
use App\Models\Notulen;

class Rapat extends Model
{
    use HasFactory;

    protected $table = 'Rapat';
    protected $primaryKey = 'id'; 
    public $incrementing = false;  
    protected $keyType = 'string'; 

    protected $fillable = [
        'Judul', 'Deskripsi', 'Waktu_Mulai', 'Waktu_Selesai', 'Dibuat_Oleh',
    ];

    protected static function booted()
    {
        static::creating(function ($rapat) {
            if (!$rapat->id) {
                $rapat->id = (string) Str::uuid(); 
            }
        });
    }

    public function pembuat()
    {
        return $this->belongsTo(Pengguna::class, 'Dibuat_Oleh', 'id');
    }

    public function kehadirans()
    {
        return $this->hasMany(Kehadiran::class, 'id_rapat', 'id');
    }

    public function notulens()
    {
        return $this->hasMany(Notulen::class, 'id_rapat', 'id');
    }

    public function pengguna()
    {
        return $this->belongsToMany(Pengguna::class, 'Pengguna_Rapat', 'id_rapat', 'id_pengguna');
    }
}
