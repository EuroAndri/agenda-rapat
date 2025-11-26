<?php

namespace App\Filament\Resources\Rapats\RelationManagers;

use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Forms;
use Filament\Actions;
use Filament\Facades\Filament;
use Illuminate\Support\Facades\Storage;

class NotulenRelation extends RelationManager
{
    protected static string $relationship = 'notulens';
    protected static ?string $title = 'Notulen Rapat';

    public function table(Table $table): Table
    {
        $user = Filament::auth()->user();

        return $table
            ->columns([
                Tables\Columns\TextColumn::make('pembuat.nama')
                    ->label('Pembuat')
                    ->sortable()
                    ->searchable()
                    ->getStateUsing(fn ($record) => $record->pembuat?->nama ?? '-'),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Tanggal')
                    ->dateTime('d M Y H:i')
                    ->sortable(),

                Tables\Columns\TextColumn::make('berkas')
                    ->label('Lampiran')
                    ->formatStateUsing(fn ($state) => $state ? '📄 Unduh Berkas' : '-')
                    ->url(fn ($record) => $record->berkas ? Storage::url($record->berkas) : null, true)
                    ->openUrlInNewTab(),
            ])

            // === HANYA ADMIN / PIMPINAN YANG BISA TAMBAH ===
            ->headerActions([
                Actions\CreateAction::make()
                    ->label('Tambah Notulen')
                    ->visible(fn () => $user->role !== 'pegawai') // ⛔ pegawai tidak bisa tambah
                    ->mutateFormDataUsing(function (array $data): array {
                        $data['pengguna_id'] = Filament::auth()->id();
                        return $data;
                    })
                    ->form([
                        Forms\Components\Textarea::make('isi')
                            ->label('Isi Notulen')
                            ->required(),

                        Forms\Components\FileUpload::make('berkas')
                            ->label('Lampiran')
                            ->directory('notulen')
                            ->downloadable()
                            ->openable()
                            ->previewable(false),
                    ]),
            ])

            // === EDIT & DELETE DIHILANGKAN DARI PEGAWAI ===
            ->actions([
                Actions\EditAction::make()
                    ->visible(fn () => $user->role !== 'pegawai') // ⛔ pegawai tidak bisa edit
                    ->form([
                        Forms\Components\Textarea::make('isi')
                            ->label('Isi Notulen')
                            ->required(),

                        Forms\Components\FileUpload::make('berkas')
                            ->label('Lampiran')
                            ->directory('notulen')
                            ->disk('public')
                            ->preserveFilenames()
                            ->downloadable()
                            ->openable()
                            ->previewable(false),
                    ]),

                Actions\DeleteAction::make()
                    ->visible(fn () => $user->role !== 'pegawai'), // ⛔ pegawai tidak bisa delete
            ]);
    }
}
