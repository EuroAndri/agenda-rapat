<?php

namespace App\Filament\Resources\Rapats\RelationManagers;

use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Facades\Filament;

class KehadiranRelation extends RelationManager
{
    protected static string $relationship = 'kehadiranKonfirmasi';
    protected static ?string $title = 'Kehadiran Peserta';

   public function table(Table $table): Table
{
    $user = Filament::auth()->user();

    return $table
        ->columns([
            Tables\Columns\TextColumn::make('pengguna.nama')->label('Nama Pegawai'),

            Tables\Columns\SelectColumn::make('status')
                ->label('Status Kehadiran')
                ->options([
                    'hadir' => 'Hadir',
                    'izin'  => 'Izin',
                    'tidak' => 'Tidak Hadir',
                ])
                ->disabled(fn () => $user->role === 'pegawai')    // ⛔ pegawai tidak bisa edit
                ->updateStateUsing(fn ($state, $record) =>
                    $record->update(['status' => $state])
                ),
        ])
        ->actions([]); // ⛔ pastikan tidak ada EditAction muncul
}

}
