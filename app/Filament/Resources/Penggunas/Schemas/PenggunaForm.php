<?php

namespace App\Filament\Resources\Penggunas\Schemas;

use Filament\Forms;
use Filament\Schemas\Schema;
use Spatie\Permission\Models\Role;

class PenggunaForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema->schema([

            Forms\Components\TextInput::make('nama')
                ->label('Nama')
                ->required()
                ->maxLength(255),

            Forms\Components\TextInput::make('email')
                ->label('Email')
                ->email()
                ->unique(ignoreRecord: true)
                ->required(),

            Forms\Components\TextInput::make('password')
                ->label('Password')
                ->password()
                ->maxLength(255)
                ->dehydrateStateUsing(fn($state) => filled($state) ? bcrypt($state) : null)
                ->required(fn(string $context): bool => $context === 'create')
                ->revealable(),

            Forms\Components\Select::make('roles')
                ->label('Role')
                ->options(Role::pluck('name', 'name'))
                ->multiple()
                ->preload()
                ->searchable()
                ->required()
                ->afterStateHydrated(function ($component, $record) {
                    if ($record && method_exists($record, 'roles')) {
                        $component->state($record->roles->pluck('name')->toArray());
                    }
                })
                ->dehydrateStateUsing(fn($state) => array_values((array) $state)),
        ]);
    }
}
