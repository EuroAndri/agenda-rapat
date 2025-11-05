<?php

namespace App\Filament\Resources\Rapats;

use App\Filament\Resources\Rapats\Pages\CreateRapat;
use App\Filament\Resources\Rapats\Pages\EditRapat;
use App\Filament\Resources\Rapats\Pages\ListRapats;
use App\Filament\Resources\Rapats\Schemas\RapatForm;
use App\Filament\Resources\Rapats\Tables\RapatsTable;
use App\Models\Rapat;
use App\Models\Pengguna;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Model;

class RapatResource extends Resource
{
    protected static ?string $model = Rapat::class;

    // 🎨 Navigasi Sidebar
    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedClipboardDocumentList;
    protected static ?string $navigationLabel = 'Rapat';
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 2;

    protected static ?string $recordTitleAttribute = 'judul';

    // 🧾 Form konfigurasi
    public static function form(Schema $schema): Schema
    {
        return RapatForm::configure($schema);
    }

    // 📋 Tabel konfigurasi
    public static function table(Table $table): Table
    {
        return RapatsTable::configure($table);
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
            'index' => ListRapats::route('/'),
            'create' => CreateRapat::route('/create'),
            'edit' => EditRapat::route('/{record}/edit'),
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
