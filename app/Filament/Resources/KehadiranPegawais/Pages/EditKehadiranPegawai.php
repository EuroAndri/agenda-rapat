<?php

namespace App\Filament\Resources\KehadiranPegawais\Pages;

use App\Filament\Resources\KehadiranPegawais\KehadiranPegawaiResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditKehadiranPegawai extends EditRecord
{
    protected static string $resource = KehadiranPegawaiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
