<?php

namespace Database\Factories;

use App\Models\Ruangan;
use Illuminate\Database\Eloquent\Factories\Factory;

class RuanganFactory extends Factory
{
    protected $model = Ruangan::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $faker = \Faker\Factory::create('id_ID');  

        return [
            'id' => $faker->uuid,
            'nama_ruangan' => $faker->company . ' ' . $faker->word,
            'deskripsi' => $faker->paragraph,
        ];
    }
}
