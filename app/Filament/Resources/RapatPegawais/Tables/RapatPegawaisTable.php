<?php

namespace App\Filament\Resources\RapatPegawais\Tables;

use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\SelectColumn;
use Filament\Actions\Action;
use App\Models\KehadiranKonfirmasi;
use Illuminate\Support\Facades\Storage;

class RapatPegawaisTable
{
    public static function configure(Table $table, string $userId): Table
    {
        return $table
            ->columns([
                TextColumn::make('judul')
                    ->label('Judul Rapat')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('waktu_mulai')
                    ->label('Mulai'),

                TextColumn::make('waktu_selesai')
                    ->label('Selesai'),

                SelectColumn::make('status')
                    ->label('Konfirmasi Kehadiran')
                    ->options([
                        'hadir' => 'Hadir',
                        'izin' => 'Izin',
                        'tidak hadir' => 'Tidak Hadir',
                    ])
                    ->getStateUsing(function ($record) use ($userId) {
                        return KehadiranKonfirmasi::where('rapat_id', $record->id)
                            ->where('pengguna_id', $userId)
                            ->value('status');
                    })
                    ->updateStateUsing(function ($state, $record) use ($userId) {
                        KehadiranKonfirmasi::updateOrCreate(
                            [
                                'rapat_id' => $record->id,
                                'pengguna_id' => $userId,
                            ],
                            [
                                'status' => $state,
                            ]
                        );
                    }),
            ])
            ->recordActions([
                Action::make('download_notulen')
                    ->label('Download Notulen')
                    ->icon('heroicon-o-arrow-down-tray')
                    ->action(function ($record) {
                        $notulens = $record->notulens;
                        if ($notulens->isEmpty()) {
                            session()->flash('danger', 'Belum ada notulen untuk rapat ini.');
                            return;
                        }

                        // ambil berkas pertama
                        $file = $notulens->first()->berkas;

                        if (!$file || !Storage::disk('public')->exists($file)) {
                            session()->flash('danger', 'File not found');
                            return;
                        }

                        return response()->download(Storage::disk('public')->path($file));
                    }),
            ])
            ->filters([])
            ->toolbarActions([])
            ->bulkActions([]);
    }
}