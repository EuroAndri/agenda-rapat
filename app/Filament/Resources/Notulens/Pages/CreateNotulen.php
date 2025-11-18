<?php

namespace App\Filament\Resources\Notulens\Pages;

use App\Filament\Resources\Notulens\NotulenResource;
use Filament\Resources\Pages\CreateRecord;

class CreateNotulen extends CreateRecord
{
    protected static string $resource = NotulenResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        // Mengisi kolom pengguna_id dengan pengguna Filament yang sedang login
        $data['pengguna_id'] = filament()->auth()->user()?->id;

        return $data;
    }
}
