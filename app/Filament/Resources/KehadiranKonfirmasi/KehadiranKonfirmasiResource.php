<?php

namespace App\Filament\Resources\KehadiranKonfirmasi;

use App\Filament\Resources\KehadiranKonfirmasi\Pages;
use App\Filament\Resources\KehadiranKonfirmasi\Tables\KehadiranKonfirmasiTable;
use App\Filament\Resources\KehadiranKonfirmasi\Schemas\KehadiranKonfirmasiForm;

use App\Models\KehadiranKonfirmasi;
use App\Models\Pengguna;

use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables\Table;
use Filament\Support\Icons\Heroicon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;
use BackedEnum;

class KehadiranKonfirmasiResource extends Resource
{
    protected static ?string $model = KehadiranKonfirmasi::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedClipboardDocumentList;
    protected static ?string $navigationLabel = 'Kehadiran Konfirmasi';
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 3;

    public static function form(Schema $schema): Schema
    {
        return KehadiranKonfirmasiForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return KehadiranKonfirmasiTable::configure($table);
    }

    protected static function adminOnly(): bool
    {
        $user = Auth::user();
        return $user instanceof Pengguna
            && $user->hasRole(['admin','operator']);
    }

    public static function shouldRegisterNavigation(): bool
    {
        return self::adminOnly();
    }

    public static function canViewAny(): bool
    {
        return self::adminOnly();
    }

    public static function canEdit(Model $record): bool
    {
        return self::adminOnly();
    }

    public static function canCreate(): bool
    {
        return false;
    }

    public static function canDelete(Model $record): bool
    {
        return false;
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListKehadiranKonfirmasi::route('/'),
            'edit'  => Pages\EditKehadiranKonfirmasi::route('/{record}/edit'),
        ];
    }
}
