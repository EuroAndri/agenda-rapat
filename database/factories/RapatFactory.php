<?php

namespace Database\Factories;

use App\Models\Rapat;
use App\Models\Pengguna;
use App\Models\Tempat;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class RapatFactory extends Factory
{
    protected $model = Rapat::class;

    public function definition()
    {
        $faker = \Faker\Factory::create('id_ID');

        return [
            'id' => (string) Str::uuid(),
            'judul' => $faker->sentence,
            'penyelenggara' => $faker->company,
            'deskripsi' => $faker->paragraph,
            'waktu_mulai' => $faker->dateTimeThisMonth,
            'waktu_selesai' => $faker->dateTimeThisMonth,
            'tempat_id' => Tempat::inRandomOrder()->first()->id,
            'pengguna_id' => Pengguna::inRandomOrder()->first()->id,
        ];
    }
}