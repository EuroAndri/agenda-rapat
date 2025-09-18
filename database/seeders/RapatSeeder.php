<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Rapat;

class RapatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Menggunakan factory untuk membuat 10 data rapat
        Rapat::factory(10)->create();
    }
}
