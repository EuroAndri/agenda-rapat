<?php

namespace App\Filament\Resources\Penggunas;

use App\Filament\Resources\Penggunas\Pages\CreatePengguna;
use App\Filament\Resources\Penggunas\Pages\EditPengguna;
use App\Filament\Resources\Penggunas\Pages\ListPenggunas;
use App\Filament\Resources\Penggunas\Schemas\PenggunaForm;
use App\Filament\Resources\Penggunas\Tables\PenggunasTable;
use App\Models\Pengguna;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

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

    public static function getPages(): array
    {
        return [
            'index' => ListPenggunas::route('/'),
            'create' => CreatePengguna::route('/create'),
            'edit' => EditPengguna::route('/{record}/edit'),
        ];
    }

    
    public static function mutateFormDataBeforeCreate(array $data): array
    {
        $roles = $data['roles'] ?? [];
        unset($data['roles']);
        $data['_roles'] = $roles;
        return $data;
    }

    public static function mutateFormDataBeforeSave(array $data): array
    {
        $roles = $data['roles'] ?? [];
        unset($data['roles']);
        $data['_roles'] = $roles;
        return $data;
    }

    public static function afterCreate($record, array $data): void
    {
        if (!empty($data['_roles'])) {
            $record->syncRoles($data['_roles']);
        }
    }

    public static function afterSave($record, array $data): void
    {
        if (!empty($data['_roles'])) {
            $record->syncRoles($data['_roles']);
        }
    }

    
    protected static function isAdmin(): bool
    {
        $user = filament()->auth()->user();
        return $user instanceof \App\Models\Pengguna && $user->hasRole('admin');
    }

    public static function shouldRegisterNavigation(): bool
    {
        return self::isAdmin();
    }

    public static function canViewAny(): bool
    {
        return self::isAdmin();
    }

    public static function canCreate(): bool
    {
        return self::isAdmin();
    }

    public static function canEdit($record): bool
    {
        return self::isAdmin();
    }

    public static function canDelete($record): bool
    {
        return self::isAdmin();
    }
}
