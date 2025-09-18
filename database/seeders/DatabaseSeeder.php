<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pengguna;  // Pastikan sudah mengimpor model Pengguna
use App\Models\Rapat;     // Pastikan sudah mengimpor model Rapat

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Menjalankan seeder PenggunaSeeder dan RapatSeeder
        $this->call([
            PenggunaSeeder::class,  // Memanggil seeder PenggunaSeeder
            RapatSeeder::class,     // Memanggil seeder RapatSeeder
            RuanganSeeder::class,   // Memanggil seeder RuanganSeeder
            NotulenSeeder::class,   // Memanggil seeder NotulenSeeder
            KehadiranSeeder::class, // Memanggil seeder KehadiranSeeder
            PenggunaRapatSeeder::class, // Memanggil seeder PenggunaRapatSeeder
        ]);
        
        // Jika kamu ingin menambahkan data pengguna tambahan secara manual:
             // Menggunakan factory untuk membuat data rapat secara otomatis
    }
}
