<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Notulen;
use App\Models\Rapat;
use App\Models\Pengguna;
use Faker\Factory as Faker;

class NotulenSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $rapats = Rapat::all();
        $penggunas = Pengguna::all();

        foreach ($rapats as $rapat) {
            foreach ($penggunas->random(3) as $pengguna) {
                Notulen::create([
                    'rapat_id' => $rapat->id,
                    'pengguna_id' => $pengguna->id,
                    'isi' => $faker->sentence(10), // opsional: isi notulen
                    'berkas' => $faker->randomElement([
                        'notulen1.pdf',
                        'notulen2.pdf',
                        'notulen3.pdf'
                    ]),
                ]);
            }
        }
    }
}