<?php

namespace Database\Factories;

use App\Models\Tempat;
use Illuminate\Database\Eloquent\Factories\Factory;

class TempatFactory extends Factory
{
    protected $model = Tempat::class;

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
            'nama' => $faker->company,
            'deskripsi' => $faker->paragraph,
        ];
    }
}
