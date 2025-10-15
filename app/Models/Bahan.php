<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Bahan extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'bahan';
    protected $guarded = [];

    public function rapat()
    {
        return $this->belongsTo(Rapat::class, 'rapat_id');
    }
}