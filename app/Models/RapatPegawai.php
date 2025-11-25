<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use App\Models\Pengguna;
use App\Models\Tempat;
use App\Models\KehadiranKonfirmasi;
use App\Models\Notulen;

class RapatPegawai extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'rapat';        // TABEL RAPAT HASIL SQL MU
    protected $guarded = [];           // Bebas isi kolom
    protected $keyType = 'string';     // PK UUID
    public $incrementing = false;

    /*
    |--------------------------------------------------------------------------
    | RELASI RAPAT PEGAWAI
    |--------------------------------------------------------------------------
    */

    // Pembuat rapat (pengguna_id)
    public function pembuat()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id');
    }

    // Tempat rapat (tempat_id)
    public function tempat()
    {
        return $this->belongsTo(Tempat::class, 'tempat_id');
    }

    // Relasi kehadiran — masuk ke tabel kehadiran_konfirmasi
    public function kehadiranKonfirmasi()
    {
        return $this->hasMany(KehadiranKonfirmasi::class, 'rapat_id', 'id');
    }

    // Relasi notulen — masuk ke tabel notulen
    public function notulens()
    {
        return $this->hasMany(Notulen::class, 'rapat_id', 'id');
    }

    // Relasi peserta rapat (opsional)
    public function penggunas()
    {
        return $this->belongsToMany(Pengguna::class, 'rapat_pengguna', 'rapat_id', 'pengguna_id')
            ->withPivot('status_kehadiran')
            ->withTimestamps();
    }
}
