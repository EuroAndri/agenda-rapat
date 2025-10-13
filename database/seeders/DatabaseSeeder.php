<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Memanggil seeder lainnya
        $this->call([
            PenggunaSeeder::class,
            RapatSeeder::class,
            RuanganSeeder::class,
            NotulenSeeder::class,
            KehadiranSeeder::class,
            PenggunaRapatSeeder::class,
        ]);

    }
}
