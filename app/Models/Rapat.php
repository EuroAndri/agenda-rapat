<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids; // ✅ trait Laravel resmi

use App\Models\Pengguna;
use App\Models\Kehadiran;
use App\Models\Notulen;
use App\Models\Tempat;

class Rapat extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'rapat';
    protected $guarded = [];
    protected $keyType = 'string';
    public $incrementing = false;

    // ✅ Relasi ke pembuat rapat
    public function pembuat()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id');
    }

    // ✅ Relasi ke tempat
    public function tempat()
    {
        return $this->belongsTo(Tempat::class, 'tempat_id');
    }

    // ✅ Relasi ke kehadiran (per rapat, bukan per pengguna)
    public function kehadirans()
    {
        return $this->hasMany(Kehadiran::class, 'rapat_id');
    }

    // ✅ Relasi ke notulen (biasanya satu notulen per rapat)
    public function notulen()
    {
        return $this->hasOne(Notulen::class, 'rapat_id');
    }
}