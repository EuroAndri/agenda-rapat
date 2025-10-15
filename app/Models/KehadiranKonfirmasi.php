<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class KehadiranKonfirmasi extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'kehadiran_konfirmasi';
    protected $guarded = [];

    public function kehadiran()
    {
        return $this->belongsTo(Kehadiran::class);
    }

    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class);
    }

    public function rapat()
    {
        return $this->belongsTo(Rapat::class);
    }
}