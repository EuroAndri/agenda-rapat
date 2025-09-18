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
        $faker = Faker::create('id_ID');  // Membuat instance Faker dengan locale Indonesia

        $rapats = Rapat::all();  // Mengambil semua rapat
        $penggunas = Pengguna::all();  // Mengambil semua pengguna

        // Loop untuk menghubungkan pengguna ke rapat
        foreach ($rapats as $rapat) {
            // Ambil 5 pengguna acak untuk setiap rapat dan tambahkan status kehadiran
            foreach ($penggunas->random(5) as $pengguna) {  // Ambil 5 pengguna acak untuk setiap rapat
                Kehadiran::create([
                    'id_rapat' => $rapat->id,  // ID rapat
                    'id_pengguna' => $pengguna->id,  // ID pengguna
                    'status' => $faker->randomElement(['hadir', 'tidak']),  // Status kehadiran acak
                ]);
            }
        }
    }
}
