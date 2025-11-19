<?php

namespace App\Filament\Resources\Rapats\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\DateTimePicker;
use Filament\Facades\Filament;
use App\Models\Rapat;

class RapatForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema->components([
            TextInput::make('judul')
                ->label('Judul Rapat')
                ->required()
                ->maxLength(255),

            Textarea::make('deskripsi')
                ->label('Deskripsi')
                ->rows(3)
                ->maxLength(1000),

            Select::make('tempat_id')
                ->label('Ruangan')
                ->relationship('tempat', 'nama')
                ->searchable()
                ->preload()
                ->required(),

            DateTimePicker::make('waktu_mulai')
                ->label('Waktu Mulai')
                ->required(),

            DateTimePicker::make('waktu_selesai')
                ->label('Waktu Selesai')
                ->required(),

            Select::make('penggunas')
                ->label('Peserta Rapat')
                ->multiple()
                ->relationship('penggunas', 'nama')
                ->searchable()
                ->preload()
                ->visible(function () {
                    $user = Filament::auth()->user();
                    return $user instanceof \App\Models\Pengguna && $user->hasRole('operator');
                }),
        ]);
    }

    public static function afterSave(Rapat $rapat, array $data)
    {
        if (isset($data['penggunas'])) {
            foreach ($data['penggunas'] as $penggunaId) {
                $rapat->attachPengguna($penggunaId);
            }
        }
    }
}
