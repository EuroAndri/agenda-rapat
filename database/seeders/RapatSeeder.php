<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Rapat;
use App\Models\Tempat;
use App\Models\Pengguna;

class RapatSeeder extends Seeder
{
    public function run(): void
    {
        $tempatList = Tempat::all();
        $penggunaList = Pengguna::all();

        Rapat::factory(20)->make()->each(function ($rapat) use ($tempatList, $penggunaList) {
            $rapat->tempat_id = $tempatList->random()->id;
            $rapat->pengguna_id = $penggunaList->random()->id;
            $rapat->save();
        });
    }
}
//todo: ubah seperti kehadiran / notulen (sudah)