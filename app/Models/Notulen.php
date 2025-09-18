<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Notulen extends Model
{
    use HasFactory;

    protected $table = 'Notulen';
    protected $primaryKey = 'id';

    public $incrementing = false;  
    protected $keyType = 'string'; 

    protected $fillable = [
        'id_rapat', 'Dibuat_oleh', 'konten_path',
    ];

    
    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'id_rapat', 'id');
    }
 
    
    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class, 'Dibuat_oleh', 'id');
    }

    
    protected static function booted()
    {
        static::creating(function ($notulen) {
            if (!$notulen->id) {
                $notulen->id = (string) Str::uuid();  
            }
        });
    }

    public static function uploadPDF($file)
    {
        return 'notulen/' . $file;  
    }
}
