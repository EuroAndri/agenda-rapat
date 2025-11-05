<?php

namespace App\Filament\Resources\Penggunas\Pages;

use App\Filament\Resources\Penggunas\PenggunaResource;
use Filament\Resources\Pages\CreateRecord;

class CreatePengguna extends CreateRecord
{
    protected static string $resource = PenggunaResource::class;

    protected function afterCreate(): void
    {
        // Ambil data dari form
        $data = $this->data;

        // Sinkronisasi role jika ada
        if (!empty($data['roles'])) {
            $this->record->syncRoles($data['roles']);
        }
    }
}
