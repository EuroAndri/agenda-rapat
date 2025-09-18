<?php

namespace Database\Factories;

use App\Models\Pengguna;
use Illuminate\Database\Eloquent\Factories\Factory;

class PenggunaFactory extends Factory
{
    protected $model = Pengguna::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $faker = \Faker\Factory::create('id_ID'); 

        return [
            'id' => (string) \Illuminate\Support\Str::uuid(),  
            'nama' => $faker->name,  
            'email' => $faker->unique()->userName . '@gmail.com',  
            'password' => bcrypt('password'), 
            'google_id' => $faker->uuid,  
        ];
    }
}
