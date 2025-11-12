<?php

namespace App\Filament\Resources\Penggunas;

use App\Filament\Resources\Penggunas\PenggunaResource\Pages;
use App\Models\Pengguna;
use Filament\Resources\Resource;
use Filament\Tables\Table;
use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Model;
use UnitEnum;
use BackedEnum;

class PenggunaResource extends Resource
{
    protected static ?string $model = Pengguna::class;

    protected static ?string $navigationLabel = 'Pengguna';
    protected static UnitEnum|string|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 2;
    protected static BackedEnum|string|null $navigationIcon = 'heroicon-o-users';

    protected static ?string $recordTitleAttribute = 'nama';

    public static function form(Schema $schema): Schema
    {
        return $schema->schema([
            TextInput::make('nama')->required(),
            TextInput::make('email')->email()->required(),
            Select::make('roles')
                ->multiple()
                ->relationship('roles', 'name')
                ->preload()
                ->label('Peran'),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table->columns([
            TextColumn::make('nama')->label('Nama'),
            TextColumn::make('email')->label('Email'),
            TextColumn::make('roles.name')->label('Peran')->badge(),
        ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPengguna::route('/'),
            'create' => Pages\CreatePengguna::route('/create'),
            'edit' => Pages\EditPengguna::route('/{record}/edit'),
        ];
    }

    public static function shouldRegisterNavigation(): bool
    {
        return auth()->user()->hasRole(['admin', 'operator']);
    }

    public static function canViewAny(): bool
    {
        return auth()->user()->hasRole(['admin', 'operator']);
    }

    public static function canCreate(): bool
    {
        return auth()->user()->hasRole('admin');
    }

    public static function canEdit(Model $record): bool
    {
        return auth()->user()->hasRole('admin');
    }

    public static function canDelete(Model $record): bool
    {
        return auth()->user()->hasRole('admin');
    }
}