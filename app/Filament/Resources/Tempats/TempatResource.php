<?php

namespace App\Filament\Resources\Tempats;

use App\Filament\Resources\Tempats\Pages\CreateTempat;
use App\Filament\Resources\Tempats\Pages\EditTempat;
use App\Filament\Resources\Tempats\Pages\ListTempats;
use App\Filament\Resources\Tempats\Schemas\TempatForm;
use App\Filament\Resources\Tempats\Tables\TempatsTable;
use App\Models\Tempat;
use App\Models\Pengguna;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Model;

class TempatResource extends Resource
{
    protected static ?string $model = Tempat::class;

    // 🎨 Navigasi Sidebar
    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedBuildingOffice2;
    protected static ?string $navigationLabel = 'Ruangan';
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 1;

    protected static ?string $recordTitleAttribute = 'nama';

    // 🧾 Form konfigurasi
    public static function form(Schema $schema): Schema
    {
        return TempatForm::configure($schema);
    }

    // 📋 Tabel konfigurasi
    public static function table(Table $table): Table
    {
        return TempatsTable::configure($table);
    }

    // 🔗 Relasi antar tabel
    public static function getRelations(): array
    {
        return [];
    }

    // 📄 Halaman CRUD
    public static function getPages(): array
    {
        return [
            'index' => ListTempats::route('/'),
            'create' => CreateTempat::route('/create'),
            'edit' => EditTempat::route('/{record}/edit'),
        ];
    }

    // 🔒 Akses hanya untuk admin
    protected static function isAdmin(): bool
{
    // Ambil user dari Filament guard (lebih aman untuk Filament v4)
    $user = filament()->auth()->user();

    // Jika belum login atau bukan model Pengguna, kembalikan false
    if (! $user instanceof \App\Models\Pengguna) {
        return false;
    }

    // Pastikan method hasRole tersedia
    if (! method_exists($user, 'hasRole')) {
        return false;
    }

    return $user->hasRole('admin');
}

    // 🔐 Kontrol akses navigasi & CRUD
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

    public static function canEdit(Model $record): bool
    {
        return self::isAdmin();
    }

    public static function canDelete(Model $record): bool
    {
        return self::isAdmin();
    }
}
