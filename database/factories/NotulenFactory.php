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
        
        $pengguna = Pengguna::inRandomOrder()->first();
        $rapat = Rapat::inRandomOrder()->first();

        return [
            'id_rapat' => $rapat->id,  
            'Dibuat_oleh' => $pengguna->id,  
            'konten_path' => $this->faker->word . '.pdf',  
        ];
    }
}
