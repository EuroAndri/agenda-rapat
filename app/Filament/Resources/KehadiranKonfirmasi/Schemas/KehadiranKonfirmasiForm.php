<?php

namespace App\Filament\Resources\KehadiranKonfirmasi\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;

class KehadiranKonfirmasiForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema->components([
            Select::make('rapat_id')
                ->label('Rapat')
                ->relationship('rapat','judul')
                ->disabled(),

            Select::make('pengguna_id')
                ->label('Pegawai')
                ->relationship('pengguna','nama')
                ->disabled(),

            Select::make('status')
                ->label('Status Kehadiran')
                ->options([
                    'hadir' => 'Hadir',
                    'tidak hadir' => 'Tidak Hadir',
                    'izin' => 'Izin',
                ]),

            Textarea::make('catatan')->label('Catatan'),
        ]);
    }
}
