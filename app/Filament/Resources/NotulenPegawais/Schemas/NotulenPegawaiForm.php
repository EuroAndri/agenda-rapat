<?php

namespace App\Filament\Resources\NotulenPegawais\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;

class NotulenPegawaiForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema->components([

            TextInput::make('rapat.judul')
                ->label('Rapat')
                ->disabled(),

            TextInput::make('pembuat.nama')
                ->label('Operator')
                ->disabled(),

            Textarea::make('isi')
                ->label('Isi Notulen')
                ->rows(6)
                ->disabled(),

            FileUpload::make('berkas')
                ->label('Berkas')
                ->directory('notulen')
                ->preserveFilenames()
                ->downloadable()
                ->previewable()
                ->disabled(),

        ]);
    }
}
