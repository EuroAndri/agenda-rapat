<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\KehadiranKonfirmasi;
use App\Models\Rapat;
use App\Models\Pengguna;
use App\Models\Kehadiran;

class KehadiranKonfirmasiSeeder extends Seeder
{
    public function run(): void
    {
        $rapats = Rapat::all();
        $penggunas = Pengguna::all();
        $kehadirans = Kehadiran::all();

        foreach ($kehadirans as $kehadiran) {
            KehadiranKonfirmasi::factory()->create([
                'rapat_id' => $rapats->random()->id,
                'pengguna_id' => $penggunas->random()->id,
                'kehadiran_id' => $kehadiran->id,
            ]);
        }
    }
}