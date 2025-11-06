<?php

namespace App\Filament\Resources\Penggunas\Pages;

use App\Filament\Resources\Penggunas\PenggunaResource;
use Filament\Resources\Pages\CreateRecord;

class CreatePengguna extends CreateRecord
{
    protected static string $resource = PenggunaResource::class;

    protected function afterCreate(): void
    {
        
        $data = $this->data;

        
        if (!empty($data['roles'])) {
            $this->record->syncRoles($data['roles']);
        }
    }
}
