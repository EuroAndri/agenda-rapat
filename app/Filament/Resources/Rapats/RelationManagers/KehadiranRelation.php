<?php

namespace App\Filament\Resources\Rapats\RelationManagers;

use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;

class KehadiranRelation extends RelationManager
{
    protected static string $relationship = 'kehadiranKonfirmasi';
    protected static ?string $title = 'Kehadiran Peserta';

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('pengguna.nama')->label('Nama Pegawai'),

                Tables\Columns\SelectColumn::make('status')
                    ->label('Status Kehadiran')
                    ->options([
                        'hadir' => 'Hadir',
                        'izin' => 'Izin',
                        'tidak' => 'Tidak Hadir',
                    ])
                    ->updateStateUsing(fn ($state, $record) =>
                        $record->update(['status' => $state])
                    ),
            ]);
    }
}
