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

   
    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedClipboardDocumentList;
    protected static ?string $navigationLabel = 'Rapat';
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 2;

    protected static ?string $recordTitleAttribute = 'judul';

    
    public static function form(Schema $schema): Schema
    {
        return RapatForm::configure($schema);
    }

    
    public static function table(Table $table): Table
    {
        return RapatsTable::configure($table);
    }

    
    public static function getRelations(): array
    {
        return [];
    }

   
    public static function getPages(): array
    {
        return [
            'index' => ListRapats::route('/'),
            'create' => CreateRapat::route('/create'),
            'edit' => EditRapat::route('/{record}/edit'),
        ];
    }

    
    protected static function isAdmin(): bool
    {
        $user = filament()->auth()->user();

        if (! $user instanceof \App\Models\Pengguna) {
            return false;
        }

        if (! method_exists($user, 'hasRole')) {
            return false;
        }

        return $user->hasRole('admin');
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

    public static function canEdit(Model $record): bool
    {
        return self::isAdmin();
    }

    public static function canDelete(Model $record): bool
    {
        return self::isAdmin();
    }
}
