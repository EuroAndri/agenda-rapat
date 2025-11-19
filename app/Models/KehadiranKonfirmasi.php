<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class KehadiranKonfirmasi extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'kehadiran_konfirmasi';

    protected $fillable = [
        'rapat_id',
        'pengguna_id',
        'status',
        'catatan',
    ];

    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'rapat_id');
    }

    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id');
    }
}
