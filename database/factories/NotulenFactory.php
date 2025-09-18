<?php

namespace Database\Factories;

use App\Models\Notulen;
use App\Models\Rapat;
use App\Models\Pengguna;
use Illuminate\Database\Eloquent\Factories\Factory;

class NotulenFactory extends Factory
{
    protected $model = Notulen::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // Pilih pengguna dan rapat acak
        $pengguna = Pengguna::inRandomOrder()->first();
        $rapat = Rapat::inRandomOrder()->first();

        return [
            'id_rapat' => $rapat->id,  // ID rapat
            'Dibuat_oleh' => $pengguna->id,  // ID pengguna
            'konten_path' => $this->faker->word . '.pdf',  // Path file notulen
        ];
    }
}
