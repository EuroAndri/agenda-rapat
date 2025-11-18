<?php

namespace App\Filament\Resources\NotulenPegawais\Tables;

use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Actions\Action;
use Illuminate\Support\Facades\Storage;

class NotulenPegawaisTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([

                TextColumn::make('rapat.judul')
                    ->label('Rapat')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('rapat.waktu_mulai')
                    ->label('Tanggal')
                    ->date('d/m/Y'),

                TextColumn::make('pembuat.nama')
                    ->label('Operator'),

                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->dateTime('d/m/Y H:i'),
            ])

            ->recordActions([
                Action::make('download')
                    ->label('Download')
                    ->icon('heroicon-o-arrow-down-tray')
                    ->action(function ($record) {
                        if (!$record->berkas) {
                            session()->flash('danger', 'File not found');
                            return;
                        }

                        $path = 'notulen/' . $record->berkas;

                        if (!Storage::disk('public')->exists($path)) {
                            session()->flash('danger', 'File not found in storage');
                            return;
                        }

                        return response()->download(Storage::disk('public')->path($path));
                    }),
            ])

            ->bulkActions([])
            ->filters([]);
    }
}
