<?php

namespace Database\Factories;

use App\Models\Tempat;
use Illuminate\Database\Eloquent\Factories\Factory;

class TempatFactory extends Factory
{
    protected $model = Tempat::class;

    public function definition()
    {
        $faker = \Faker\Factory::create('id_ID');

        return [
            'id' => $faker->uuid,
            'nama' => $faker->company,
            'deskripsi' => $faker->text(200), 
        ];
    }
}