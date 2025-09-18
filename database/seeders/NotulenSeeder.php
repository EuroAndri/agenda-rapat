<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Notulen;
use App\Models\Rapat;
use App\Models\Pengguna;
use Faker\Factory as Faker;

class NotulenSeeder extends Seeder
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
            
            foreach ($penggunas->random(3) as $pengguna) {  
                Notulen::create([
                    'id_rapat' => $rapat->id,  
                    'Dibuat_oleh' => $pengguna->id,  
                    'konten_path' => Notulen::uploadPDF($faker->randomElement(['notulen1', 'notulen2', 'notulen3']) . '.pdf'),  // Path file notulen
                ]);
            }
        }
    }
}