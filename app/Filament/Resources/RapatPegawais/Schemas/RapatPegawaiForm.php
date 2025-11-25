<?php

namespace App\Filament\Resources\RapatPegawais\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms;

class RapatPegawaiForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema->schema([

            Forms\Components\TextInput::make('judul')
                ->label('Judul Rapat')
                ->maxLength(255)
                ->required(),

            Forms\Components\DateTimePicker::make('waktu_mulai')
                ->label('Waktu Mulai')
                ->required(),

            Forms\Components\DateTimePicker::make('waktu_selesai')
                ->label('Waktu Selesai')
                ->required(),

            Forms\Components\Select::make('pengguna_id')
                ->relationship('pembuat', 'nama')
                ->label('Dibuat Oleh')
                ->required(),

            Forms\Components\Select::make('tempat_id')
                ->relationship('tempat', 'nama')
                ->label('Tempat')
                ->required(),

            Forms\Components\Textarea::make('deskripsi')
                ->label('Deskripsi')
                ->columnSpanFull(),
        ]);
    }
}
