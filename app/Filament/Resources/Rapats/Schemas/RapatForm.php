<?php

namespace App\Filament\Resources\Rapats\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\DateTimePicker;

class RapatForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema->components([
            TextInput::make('judul')
                ->label('Judul Rapat')
                ->required()
                ->maxLength(255),

            Textarea::make('deskripsi')
                ->label('Deskripsi')
                ->rows(3)
                ->maxLength(1000),

            Select::make('tempat_id')
                ->label('Ruangan')
                ->relationship('tempat', 'nama') // relasi otomatis ke model Tempat
                ->searchable()
                ->preload()
                ->required(),

            DateTimePicker::make('waktu_mulai')
                ->label('Waktu Mulai')
                ->required(),

            DateTimePicker::make('waktu_selesai')
                ->label('Waktu Selesai')
                ->required(),
        ]);
    }
}
