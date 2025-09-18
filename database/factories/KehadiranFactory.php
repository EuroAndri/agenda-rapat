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
        // Memilih pengguna dan rapat secara acak
        $pengguna = Pengguna::inRandomOrder()->first();
        $rapat = Rapat::inRandomOrder()->first();

        return [
            'id' => $this->faker->uuid,  // UUID untuk id kehadiran
            'id_rapat' => $rapat->id,  // id_rapat dari rapat yang dipilih secara acak
            'id_pengguna' => $pengguna->id,  // id_pengguna dari pengguna yang dipilih secara acak
            'status' => $this->faker->randomElement(['hadir', 'tidak']),  // Status kehadiran acak
        ];
    }
}
