<?php

namespace App\Filament\Resources\Rapats\RelationManagers;

use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Forms;
use Filament\Actions;
use Illuminate\Support\Facades\Storage;

class NotulenRelation extends RelationManager
{
    // relasi di model Rapat
    protected static string $relationship = 'notulens';
    protected static ?string $title = 'Notulen Rapat';

    public function table(Table $table): Table
    {
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
            ->headerActions([
                Actions\CreateAction::make()
                    ->label('Tambah Notulen')
                    ->mutateFormDataUsing(function (array $data): array {
                        // ambil user login dari Filament
                        $user = filament()->auth()->user();
                        if (!$user) {
                            throw new \Exception('User harus login.');
                        }
                        $data['pengguna_id'] = $user->id;
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
            ->actions([
                Actions\EditAction::make()
                    ->form([
                        Forms\Components\Textarea::make('isi')
                            ->label('Isi Notulen')
                            ->required(),

                              Forms\Components\FileUpload::make('berkas')
                            ->label('Lampiran')
                            ->directory('notulen')
                            ->disk('public')
                            ->preserveFilenames() // penting supaya bisa diakses lewat browser
                            ->downloadable()
                            ->openable()
                            ->previewable(false),
                    ]),

                Actions\DeleteAction::make(),
            ]);
    }
}
