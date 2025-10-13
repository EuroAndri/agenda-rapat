<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Tempat extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'tempat';
    protected $guarded = [];
    protected $keyType = 'string';
    public $incrementing = false;

    // ✅ Relasi: Tempat punya banyak Rapat
    public function rapats()
    {
        return $this->hasMany(Rapat::class, 'tempat_id');
    }
}