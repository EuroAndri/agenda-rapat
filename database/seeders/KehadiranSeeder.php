<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Kehadiran;
use App\Models\Pengguna;
use App\Models\Rapat;
use Faker\Factory as Faker;  // Import Faker

class KehadiranSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');  

        $rapats = Rapat::all();  
        $penggunas = Pengguna::all();  

        
        foreach ($rapats as $rapat) {
            
            foreach ($penggunas->random(5) as $pengguna) {  
                Kehadiran::create([
                    'id_rapat' => $rapat->id,  
                    'id_pengguna' => $pengguna->id, 
                    'status' => $faker->randomElement(['hadir', 'tidak']),  
                ]);
            }
        }
    }
}
