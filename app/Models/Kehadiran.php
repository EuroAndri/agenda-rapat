<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;  

class Kehadiran extends Model
{
    use HasUuids, HasFactory;

    protected $table = 'kehadiran'; 
    protected $guarded = [];
    
    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'rapat_id');
    }
   
    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id');
    }
}
