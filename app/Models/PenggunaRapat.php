<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PenggunaRapat extends Model
{
    use HasFactory;

    
    protected $table = 'Pengguna_Rapat'; 
    protected $primaryKey = null; 

    public $incrementing = false; 
    protected $fillable = [
        'id_pengguna', 'id_rapat',
    ];

    
    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class, 'id_pengguna', 'id');
    }

    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'id_rapat', 'id');
    }
}
