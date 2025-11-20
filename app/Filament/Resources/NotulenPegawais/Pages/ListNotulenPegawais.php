<?php

namespace App\Filament\Resources\NotulenPegawais\Pages;

use App\Filament\Resources\NotulenPegawais\NotulenPegawaiResource;
use Filament\Resources\Pages\ListRecords;

class ListNotulenPegawais extends ListRecords
{
    protected static string $resource = NotulenPegawaiResource::class;

    protected function getHeaderActions(): array
    {
        return []; 
    }
}
