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
       
        $faker = \Faker\Factory::create('id_ID');  

        return [
            'id' => (string) Str::uuid(),  
            'Judul' => $faker->sentence,  
            'Deskripsi' => $faker->paragraph,  
            'Waktu_Mulai' => $faker->dateTimeThisMonth,  
            'Waktu_Selesai' => $faker->dateTimeThisMonth,  
            'Dibuat_Oleh' => Pengguna::inRandomOrder()->first()->id,  
        ];
    }
}
