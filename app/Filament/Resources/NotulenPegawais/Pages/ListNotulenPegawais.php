<?php

namespace App\Filament\Resources\NotulenPegawais\Pages;

use App\Filament\Resources\NotulenPegawais\NotulenPegawaiResource;
use Filament\Resources\Pages\ListRecords;

class ListNotulenPegawais extends ListRecords
{
    protected static string $resource = NotulenPegawaiResource::class;

    // 🔥 Hilangkan tombol "New notulen"
    protected function getHeaderActions(): array
    {
        return []; // kosong → tidak ada tombol create
    }
}
