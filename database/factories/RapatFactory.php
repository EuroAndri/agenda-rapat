<?php

namespace Database\Factories;

use App\Models\Rapat;
use App\Models\Pengguna;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class RapatFactory extends Factory
{
    protected $model = Rapat::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // Set Faker locale to Indonesia
        $faker = \Faker\Factory::create('id_ID');  // Locale Indonesia

        return [
            'id' => (string) Str::uuid(),  // UUID untuk id
            'Judul' => $faker->sentence,  // Judul rapat acak
            'Deskripsi' => $faker->paragraph,  // Deskripsi rapat acak
            'Waktu_Mulai' => $faker->dateTimeThisMonth,  // Waktu mulai rapat
            'Waktu_Selesai' => $faker->dateTimeThisMonth,  // Waktu selesai rapat
            'Dibuat_Oleh' => Pengguna::inRandomOrder()->first()->id,  // Pilih ID pengguna acak
        ];
    }
}
