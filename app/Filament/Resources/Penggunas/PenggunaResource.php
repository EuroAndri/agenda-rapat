<?php

namespace App\Filament\Resources\Penggunas;

use App\Filament\Resources\Penggunas\Pages\CreatePengguna;
use App\Filament\Resources\Penggunas\Pages\EditPengguna;
use App\Filament\Resources\Penggunas\Pages\ListPengguna;
use App\Filament\Resources\Penggunas\Schemas\PenggunaForm;
use App\Filament\Resources\Penggunas\Tables\PenggunasTable;
use App\Models\Pengguna;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Model;

class PenggunaResource extends Resource
{
    protected static ?string $model = Pengguna::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedUsers;
    protected static ?string $navigationLabel = 'Pengguna';
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 2;

    protected static ?string $recordTitleAttribute = 'nama';

    public static function form(Schema $schema): Schema
    {
        return PenggunaForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return PenggunasTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListPengguna::route('/'),
            'create' => CreatePengguna::route('/create'),
            'edit' => EditPengguna::route('/{record}/edit'),
        ];
    }

    protected static function hasAccess(): bool
    {
        $user = filament()->auth()->user();

        return $user instanceof Pengguna
            && method_exists($user, 'hasRole')
            && $user->hasRole(['admin', 'operator']);
    }

    public static function shouldRegisterNavigation(): bool
    {
        return self::hasAccess();
    }

    public static function canViewAny(): bool
    {
        return self::hasAccess();
    }

    public static function canCreate(): bool
    {
        return self::hasAccess();
    }

    public static function canEdit(Model $record): bool
    {
        return self::hasAccess();
    }

    public static function canDelete(Model $record): bool
    {
        return self::hasAccess();
    }
}
