<?php

namespace App\Filament\Resources\Tempats\Pages;

use App\Filament\Resources\Tempats\TempatResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListTempats extends ListRecords
{
    protected static string $resource = TempatResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
