<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ruangan extends Model
{
    use HasFactory;

    protected $table = 'Ruangan'; 
    protected $primaryKey = 'id'; 

    public $incrementing = false; 
    protected $keyType = 'string'; 

    protected $fillable = [
        'nama_ruangan', 'deskripsi',
    ];
}
