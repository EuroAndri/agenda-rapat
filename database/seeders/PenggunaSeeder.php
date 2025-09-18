<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pengguna;

class PenggunaSeeder extends Seeder
{
    
    public function run(): void
    {
        
        Pengguna::factory(10)->create();
    }
}