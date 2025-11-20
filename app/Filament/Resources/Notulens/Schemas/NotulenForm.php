<?php

namespace App\Filament\Resources\Notulens\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\FileUpload;

class NotulenForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema->components([
            FileUpload::make('berkas')
                ->label('File Notulen (PDF)')
                ->directory('notulen')   
                ->disk('public')         
                ->acceptedFileTypes(['application/pdf'])
                ->preserveFilenames()
                ->visibility('public')
                ->maxSize(5120)           
                ->required()
                ->multiple(false),

            \Filament\Forms\Components\Textarea::make('isi')
                ->label('Isi Notulen')
                ->required(),

            \Filament\Forms\Components\Select::make('rapat_id')
                ->label('Rapat')
                ->relationship('rapat', 'judul')
                ->required(),
        ]);
    }
}
