<?php

namespace Database\Factories;

use App\Models\KehadiranKonfirmasi;
use App\Models\Rapat;
use App\Models\Pengguna;
use App\Models\Kehadiran;
use Illuminate\Database\Eloquent\Factories\Factory;

class KehadiranKonfirmasiFactory extends Factory
{
    protected $model = KehadiranKonfirmasi::class;

    public function definition()
    {
        return [
            'rapat_id' => Rapat::inRandomOrder()->first()->id,
            'pengguna_id' => Pengguna::inRandomOrder()->first()->id,
            'kehadiran_id' => Kehadiran::inRandomOrder()->first()->id,
            'status' => $this->faker->randomElement(['hadir', 'tidak hadir', 'izin']),
            'catatan' => $this->faker->optional()->sentence(),
        ];
    }
}