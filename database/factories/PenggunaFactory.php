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
        $faker = \Faker\Factory::create('id_ID');  // Locale Indonesia

        return [
            'id' => (string) \Illuminate\Support\Str::uuid(),  // UUID untuk id
            'nama' => $faker->name,  // Nama acak (dengan format Indonesia)
            'email' => $faker->unique()->userName . '@gmail.com',  // Email dengan domain @gmail.com
            'password' => bcrypt('password'),  // Password yang di-hash
            'google_id' => $faker->uuid,  // UUID untuk google_id
        ];
    }
}
