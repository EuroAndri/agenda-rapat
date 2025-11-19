<?php

namespace App\Filament\Resources\KehadiranKonfirmasi\Tables;

use Filament\Tables\Table;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\BadgeColumn;

class KehadiranKonfirmasiTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('pengguna.nama')->label('Pegawai'),
                TextColumn::make('rapat.judul')->label('Rapat'),
                BadgeColumn::make('status')->label('Status'),
                TextColumn::make('created_at')->label('Dikonfirmasi')->dateTime(),
            ])
            ->recordActions([
                EditAction::make(),
            ]);
    }
}
