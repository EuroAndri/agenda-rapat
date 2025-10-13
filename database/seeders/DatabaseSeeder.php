<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pengguna;  
use App\Models\Rapat;     

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Menjalankan seeder PenggunaSeeder dan RapatSeeder
        $this->call([
            PenggunaSeeder::class, // Memanggil seeder PenggunaSeeder  
            TempatSeeder::class,   // Memanggil seeder RuanganSeeder
            RapatSeeder::class,    // Memanggil seeder RapatSeeder 
            KehadiranSeeder::class, // Memanggil seeder KehadiranSeeder
            NotulenSeeder::class,   // Memanggil seeder NotulenSeeder
        ]);
        
        
    }
}
