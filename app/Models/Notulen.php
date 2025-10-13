<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use App\Models\Rapat;     
use App\Models\Pengguna;  

class Notulen extends Model
{
    use HasUuids, HasFactory;

    protected $table = 'notulen';
    protected $guarded = [];

    
    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'rapat_id');
    }
 
    
    public function pembuat()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id');
    }
}
