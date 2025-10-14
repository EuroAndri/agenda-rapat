<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids; 

use App\Models\Rapat;
use App\Models\Pengguna;

class Notulen extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'notulen';
    protected $guarded = [];
    protected $keyType = 'string';
    public $incrementing = false;

    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'rapat_id');
    }

    public function pembuat()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id');
    }
}