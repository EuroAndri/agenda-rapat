<?php

namespace App\Filament\Resources\KehadiranKonfirmasi;

use App\Filament\Resources\KehadiranKonfirmasi\Pages\CreateKehadiranKonfirmasi;
use App\Filament\Resources\KehadiranKonfirmasi\Pages\EditKehadiranKonfirmasi;
use App\Filament\Resources\KehadiranKonfirmasi\Pages\ListKehadiranKonfirmasi;
use App\Filament\Resources\KehadiranKonfirmasi\Schemas\KehadiranKonfirmasiForm;
use App\Filament\Resources\KehadiranKonfirmasi\Tables\KehadiranKonfirmasiTables;
use App\Models\KehadiranKonfirmasi;
use App\Models\Pengguna;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables\Table;

class KehadiranKonfirmasiResource extends Resource
{
    protected static ?string $model = KehadiranKonfirmasi::class;

    protected static ?string $slug = 'kehadiran-konfirmasi';

    protected static ?string $navigationLabel = 'Kehadiran Konfirmasi';
    protected static ?int $navigationSort = 3;
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    
    public static function form(Schema $schema): Schema
    {
        return KehadiranKonfirmasiForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return KehadiranKonfirmasiTables::configure($table);
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index'  => ListKehadiranKonfirmasi::route('/'),
            'create' => CreateKehadiranKonfirmasi::route('/create'),
            'edit'   => EditKehadiranKonfirmasi::route('/{record}/edit'),
        ];
    }

    protected static function hasAccess(): bool
    {
        $user = filament()->auth()->user();

        if (!($user instanceof Pengguna)) {
            return false;
        }

        return $user->hasRole(['admin', 'operator']);
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

    public static function canEdit($record): bool
    {
        return self::hasAccess();
    }

    public static function canDelete($record): bool
    {
        return self::hasAccess();
    }
}
