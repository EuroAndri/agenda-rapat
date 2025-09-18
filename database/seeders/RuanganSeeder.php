<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;  // Impor kelas Seeder yang benar
use App\Models\Ruangan;  // Impor model Ruangan

class RuanganSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Ruangan::factory(10)->create();  // Membuat 10 data ruangan
    }
}