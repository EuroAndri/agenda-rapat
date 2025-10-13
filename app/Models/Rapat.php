<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Support\Str;
use App\Models\Pengguna;
use App\Models\Kehadiran;
use App\Models\Notulen;

class Rapat extends Model
{
    use HasUuids, HasFactory;

    protected $table = 'rapat';
    protected $guarded = [];

    public function pembuat()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id');
    }

    public function kehadirans()
    {
        return $this->hasMany(Kehadiran::class, 'pengguna_id');
    }

    public function notulens()
    {
        return $this->hasMany(Notulen::class, 'rapat_id');
    }
}
