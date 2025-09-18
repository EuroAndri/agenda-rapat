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
        $faker = Faker::create('id_ID');  // Membuat instance Faker dengan locale Indonesia

        $rapats = Rapat::all();  // Mengambil semua rapat
        $penggunas = Pengguna::all();  // Mengambil semua pengguna

        // Loop untuk menghubungkan pengguna ke rapat
        foreach ($rapats as $rapat) {
            // Ambil 3 pengguna acak untuk setiap rapat dan hubungkan dengan notulen
            foreach ($penggunas->random(3) as $pengguna) {  // Ambil 3 pengguna acak untuk setiap rapat
                Notulen::create([
                    'id_rapat' => $rapat->id,  // ID rapat
                    'Dibuat_oleh' => $pengguna->id,  // ID pengguna
                    'konten_path' => Notulen::uploadPDF($faker->randomElement(['notulen1', 'notulen2', 'notulen3']) . '.pdf'),  // Path file notulen
                ]);
            }
        }
    }
}
