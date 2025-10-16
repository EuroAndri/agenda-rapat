<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pengguna;  
use App\Models\Rapat;
use Spatie\Permission\Contracts\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            PenggunaSeeder::class, 
            TempatSeeder::class,   
            RapatSeeder::class,    
            KehadiranSeeder::class, 
            NotulenSeeder::class,   
            KehadiranKonfirmasiSeeder::class, 
            BahanSeeder::class, 
            RoleSeeder::class, 
        ]);
        
        
    }
}
