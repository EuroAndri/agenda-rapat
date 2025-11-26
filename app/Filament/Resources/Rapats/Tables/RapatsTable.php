<?php

namespace App\Filament\Resources\Rapats\Tables;

use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\TagsColumn;
use Filament\Actions\Action;
use Filament\Actions\EditAction;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;

class RapatsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('judul')
                    ->label('Judul')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('tempat.nama')
                    ->label('Ruangan')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('waktu_mulai')
                    ->label('Mulai')
                    ->dateTime('d M Y H:i')
                    ->sortable(),

                TextColumn::make('waktu_selesai')
                    ->label('Selesai')
                    ->dateTime('d M Y H:i')
                    ->sortable(),

                TagsColumn::make('penggunas.nama')
                    ->label('Pegawai')
                    ->limit(3)
                    ->separator(', '),

                TextColumn::make('deskripsi')
                    ->label('Deskripsi')
                    ->limit(50),
            ])

            ->actions([

    Action::make('kehadiran')
        ->label('Kehadiran')
        ->icon('heroicon-o-check-circle')
        ->color('success')
        ->url(fn ($record) => route('filament.admin.resources.rapats.edit', $record) . '#kehadiran'),

    Action::make('notulen')
        ->label('Notulen')
        ->icon('heroicon-o-document-text')
        ->color('warning')
        ->url(fn ($record) => route('filament.admin.resources.rapats.edit', $record) . '#notulen'),

    EditAction::make(),
    DeleteAction::make(),
])


            ->bulkActions([
                DeleteBulkAction::make(),
            ]);
    }
}
