<?php

namespace App\Filament\Resources\KehadiranKonfirmasi\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;

class KehadiranKonfirmasiForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                
                Select::make('pengguna_id')
                    ->label('Pegawai')
                    ->relationship('pengguna', 'nama')
                    ->searchable()
                    ->disabled(),

                Select::make('rapat_id')
                    ->label('Rapat')
                    ->relationship('rapat', 'judul')
                    ->searchable()
                    ->disabled(),

                Select::make('status')
                    ->label('Status Kehadiran')
                    ->options([
                        'hadir' => 'Hadir',
                        'tidak hadir' => 'Tidak Hadir',
                        'izin' => 'Izin',
                    ])
                    ->required(),

                Textarea::make('catatan')
                    ->label('Catatan (Opsional)')
                    ->rows(3)
                    ->columnSpanFull(),

            ]);
    }
}
 

