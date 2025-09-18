<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kehadiran extends Model
{
    use HasFactory;

    protected $table = 'Kehadiran'; 
    protected $primaryKey = 'id'; 

    public $incrementing = false; 
    protected $keyType = 'string'; 

    protected $fillable = [
        'id_rapat', 'id_pengguna', 'status',
    ];
    
    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'id_rapat', 'id');
    }
   
    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class, 'id_pengguna', 'id');
    }
}
