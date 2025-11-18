<?php

namespace App\Filament\Resources\KehadiranKonfirmasi\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\BadgeColumn;

class KehadiranKonfirmasiTables
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('pengguna.nama')
                    ->label('Pegawai')
                    ->searchable(),

                TextColumn::make('rapat.judul')
                    ->label('Rapat')
                    ->searchable(),

                BadgeColumn::make('status_kehadiran')
                    ->label('Status')
                    ->colors([
                        'success' => 'hadir',
                        'danger' => 'tidak',
                        'warning' => 'mungkin',
                    ])
                    ->formatStateUsing(fn ($state) => ucfirst($state)),

                TextColumn::make('catatan')
                    ->label('Catatan')
                    ->limit(20),

                TextColumn::make('created_at')
                    ->label('Waktu Konfirmasi')
                    ->dateTime('d M Y H:i'),
            ])

            ->filters([
                Tables\Filters\SelectFilter::make('status_kehadiran')
                    ->label('Filter Status')
                    ->options([
                        'hadir' => 'Hadir',
                        'tidak' => 'Tidak Hadir',
                        'mungkin' => 'Mungkin',
                    ]),
            ])

            ->recordActions([
                EditAction::make(),
            ])

            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
