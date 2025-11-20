<?php

namespace App\Filament\Resources\Notulens\Pages;

use App\Filament\Resources\Notulens\NotulenResource;
use Filament\Resources\Pages\EditRecord;
use Filament\Actions\DeleteAction;

class EditNotulen extends EditRecord
{
    protected static string $resource = NotulenResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make()
                ->requiresConfirmation()
                ->action(function () {
                    $this->record->delete();

                    $this->notify('success', 'Notulen berhasil dihapus.');

                    return redirect()->route('filament.resources.notulens.index');
                }),
        ];
    }
}
