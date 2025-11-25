<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Support\Str;

class Rapat extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'rapat';
    protected $guarded = [];

    // Relasi
    public function pembuat()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id');
    }

    public function tempat()
    {
        return $this->belongsTo(Tempat::class, 'tempat_id');
    }

    public function kehadirans()
    {
        return $this->hasMany(Kehadiran::class, 'rapat_id');
    }

    public function notulen()
    {
        return $this->hasOne(Notulen::class, 'rapat_id');
    }

    public function bahans()
    {
        return $this->hasMany(Bahan::class, 'rapat_id');
    }

    public function penggunas()
    {
    return $this->belongsToMany(Pengguna::class, 'rapat_pengguna', 'rapat_id', 'pengguna_id');
    }


    // Method attach pivot dengan UUID
   // Method attach pivot dengan UUID
public function attachPengguna($penggunaId, $status = null)
{
    $this->penggunas()->syncWithoutDetaching([
        $penggunaId => ['status_kehadiran' => $status],
    ]);
}


    public function kehadiranKonfirmasi()
    {
    return $this->hasMany(KehadiranKonfirmasi::class, 'rapat_id');
    }

    public function notulens()
    {
    return $this->hasMany(Notulen::class);
    }
}
