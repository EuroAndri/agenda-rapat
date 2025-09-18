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

    public $incrementing = false;  // Tidak menggunakan auto-increment
    protected $keyType = 'string'; // Menggunakan string (UUID) sebagai key type

    protected $fillable = [
        'id_rapat', 'Dibuat_oleh', 'konten_path',
    ];

    // Relasi ke tabel Rapat
    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'id_rapat', 'id');
    }
 
    // Relasi ke tabel Pengguna
    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class, 'Dibuat_oleh', 'id');
    }

    // Auto generate UUID saat membuat Notulen baru
    protected static function booted()
    {
        static::creating(function ($notulen) {
            if (!$notulen->id) {
                $notulen->id = (string) Str::uuid();  // Generate UUID untuk kolom id
            }
        });
    }

    public static function uploadPDF($file)
    {
        return 'notulen/' . $file;  // Menghasilkan path (tidak menyimpan file fisik)
    }
}
