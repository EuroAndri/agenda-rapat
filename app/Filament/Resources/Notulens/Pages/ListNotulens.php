<?php

namespace App\Filament\Resources\Notulens\Pages;

use App\Filament\Resources\Notulens\NotulenResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListNotulens extends ListRecords
{
    protected static string $resource = NotulenResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
