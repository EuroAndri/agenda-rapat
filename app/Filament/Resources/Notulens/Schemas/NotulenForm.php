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
                ->directory('notulen')   // folder di storage/app/public/notulen
                ->disk('public')          // pakai disk public
                ->acceptedFileTypes(['application/pdf'])
                ->maxSize(5120)           // max 5 MB
                ->required(),

            // bisa tambahkan Textarea untuk isi notulen
            \Filament\Forms\Components\Textarea::make('isi')
                ->label('Isi Notulen')
                ->required(),

            // Pilihan rapat
            \Filament\Forms\Components\Select::make('rapat_id')
                ->label('Rapat')
                ->relationship('rapat', 'judul')
                ->required(),
        ]);
    }
}
