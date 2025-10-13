<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;  
use App\Models\Tempat;  

class TempatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Tempat::factory(10)->create();  
    }
}