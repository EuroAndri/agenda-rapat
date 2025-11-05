<?php

namespace App\Filament\Resources\Rapats\Pages;

use App\Filament\Resources\Rapats\RapatResource;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\Facades\Auth;

class CreateRapat extends CreateRecord
{
    protected static string $resource = RapatResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        // Isi otomatis kolom pengguna_id dengan user yang sedang login
        $data['pengguna_id'] = Auth::id();

        return $data;
    }
}
