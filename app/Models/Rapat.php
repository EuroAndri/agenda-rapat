<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids; 

use App\Models\Pengguna;
use App\Models\Kehadiran;
use App\Models\Notulen;
use App\Models\Tempat;

class Rapat extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'rapat';
    protected $guarded = [];
    
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
}