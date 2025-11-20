<?php

namespace App\Filament\Resources\Notulens\Tables;

use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Actions\EditAction;
use Filament\Actions\DeleteAction;
use Filament\Actions\Action;
use Illuminate\Support\Facades\Storage;

class NotulensTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')->hidden(),

                TextColumn::make('rapat.judul')
                    ->label('Rapat')
                    ->sortable()
                    ->searchable()
                    ->formatStateUsing(fn($state, $record) => $record?->rapat?->judul ?? '-'),

                TextColumn::make('isi')
                    ->label('Isi Notulen')
                    ->limit(50),

                TextColumn::make('pembuat.nama')
                    ->label('Operator')
                    ->sortable()
                    ->formatStateUsing(fn($state, $record) => $record?->pembuat?->nama ?? '-'),

                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->dateTime('d/m/Y H:i'),
            ])
            ->recordActions([
                EditAction::make(),

                
                Action::make('download')
                    ->label('Download PDF')
                    ->icon('heroicon-o-arrow-down')
                    ->action(function ($record) {
                        if (!empty($record->berkas)) {
                            $path = 'notulen/' . $record->berkas;
                            if (Storage::disk('public')->exists($path)) {
                                return response()->download(Storage::disk('public')->path($path));
                            }
                        }

                        session()->flash('danger', 'File not found!');
                        return redirect()->back();
                    })
                    ->hidden(fn ($record) => empty($record?->berkas)),
            ])
            ->bulkActions([
                DeleteAction::make()
                    ->hidden(fn($record) => $record === null),
            ]);
    }
}
