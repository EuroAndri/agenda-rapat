<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Bahan;

class BahanSeeder extends Seeder
{
    public function run(): void
    {
        Bahan::factory()->count(30)->create();
    }
}