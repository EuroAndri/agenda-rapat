<?php

namespace Database\Seeders;

use App\Models\Rapat;
use Illuminate\Database\Seeder;

class RapatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        Rapat::factory(10)->create();
    }
}
