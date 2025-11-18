<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KehadiranKonfirmasi extends Model
{
    protected $table = 'rapat_pengguna';

    protected $primaryKey = 'id';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $guarded = [];

    public function getRouteKeyName(): string
    {
        return 'id'; 
    }

    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'rapat_id');
    }

    public function pengguna()
    {
        return $this->belongsTo(Pengguna::class, 'pengguna_id');
    }
}
