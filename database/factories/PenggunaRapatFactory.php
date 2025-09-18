<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pengguna;
use App\Models\Rapat;
use Faker\Factory as Faker;

class PenggunaRapatSeeder extends Seeder
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
                $rapat->pengguna()->attach($pengguna->id);  
            }
        }
    }
}
