<?php

namespace App\Filament\Resources\RapatPegawais\RelationManagers;

use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Support\Facades\Storage;

class NotulenPegawaiRelation extends RelationManager
{
    protected static string $relationship = 'notulens';
    protected static ?string $title = 'Notulen';

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('rapat.judul')
                    ->label('Rapat')
                    ->sortable()
                    ->searchable(),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Tanggal Dibuat')
                    ->dateTime('d/m/Y H:i'),

                Tables\Columns\TextColumn::make('pembuat.nama')
                    ->label('Operator'),

                Tables\Columns\TextColumn::make('berkas')
                    ->label('Lampiran')
                    ->formatStateUsing(fn ($state) => $state ? '📄 Unduh Berkas' : '-')
                    ->url(fn ($record) => $record->berkas ? Storage::url('notulen/'.$record->berkas) : null, true)
                    ->openUrlInNewTab(),
            ])
            ->headerActions([]) // Pegawai tidak bisa tambah
            ->actions([])       // Hanya download via kolom
            ->bulkActions([])
            ->filters([]);
    }
}
