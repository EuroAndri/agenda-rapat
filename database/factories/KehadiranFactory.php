<?php

namespace Database\Factories;

use App\Models\Kehadiran;
use App\Models\Pengguna;
use App\Models\Rapat;
use Illuminate\Database\Eloquent\Factories\Factory;

class KehadiranFactory extends Factory
{
    protected $model = Kehadiran::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        $pengguna = Pengguna::inRandomOrder()->first();
        $rapat = Rapat::inRandomOrder()->first();

        return [
            'id' => $this->faker->uuid,
            'id_rapat' => $rapat->id,
            'id_pengguna' => $pengguna->id,
            'status' => $this->faker->randomElement(['hadir', 'tidak']),
        ];
    }
}
