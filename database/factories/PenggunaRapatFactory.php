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
        $faker = Faker::create('id_ID');  // Menggunakan locale Indonesia

        $rapats = Rapat::all();  // Mengambil semua rapat
        $penggunas = Pengguna::all();  // Mengambil semua pengguna

        // Loop untuk menghubungkan pengguna ke rapat
        foreach ($rapats as $rapat) {
            foreach ($penggunas->random(5) as $pengguna) {  // Ambil 5 pengguna acak untuk setiap rapat
                $rapat->pengguna()->attach($pengguna->id);  // Menambahkan pengguna ke rapat
            }
        }
    }
}
