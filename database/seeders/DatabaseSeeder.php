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
            PenggunaSeeder::class,  
            RapatSeeder::class,     
            RuanganSeeder::class,   
            NotulenSeeder::class,   
            KehadiranSeeder::class,
            PenggunaRapatSeeder::class, 
        ]);
        
        
    }
}
