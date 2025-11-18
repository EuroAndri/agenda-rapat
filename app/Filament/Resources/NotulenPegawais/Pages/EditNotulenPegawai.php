<?php

namespace App\Filament\Resources\NotulenPegawais\Pages;

use App\Filament\Resources\NotulenPegawais\NotulenPegawaiResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditNotulenPegawai extends EditRecord
{
    protected static string $resource = NotulenPegawaiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
