<?php

namespace Database\Factories;

use App\Models\Bahan;
use Illuminate\Database\Eloquent\Factories\Factory;

class BahanFactory extends Factory
{
    protected $model = Bahan::class;

    public function definition()
    {
        return [
            'rapat_id' => \App\Models\Rapat::inRandomOrder()->first()->id,
            'pengguna_id' => \App\Models\Pengguna::inRandomOrder()->first()->id,
            'isi' => $this->faker->paragraph(),
            'berkas' => $this->faker->randomElement(['bahan1.pdf', 'bahan2.pptx', 'bahan3.jpg']),
        ];
    }
}