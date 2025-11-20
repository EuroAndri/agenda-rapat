<?php

namespace App\Filament\Resources\NotulenPegawais;

use App\Filament\Resources\NotulenPegawais\Pages\ListNotulenPegawais;
use App\Filament\Resources\NotulenPegawais\Schemas\NotulenPegawaiForm;
use App\Filament\Resources\NotulenPegawais\Tables\NotulenPegawaisTable;
use App\Models\Notulen;
use App\Models\Pengguna;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class NotulenPegawaiResource extends Resource
{
    protected static ?string $model = Notulen::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedDocumentText;
    protected static ?string $navigationLabel = 'Notulen';
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 3;

    protected static ?string $recordTitleAttribute = 'isi';

    
    protected static function hasAccess(): bool
    {
        $user = filament()->auth()->user();

        return $user instanceof Pengguna
            && method_exists($user, 'hasRole')
            && $user->hasRole(['pegawai']);
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
        return false;
    }

    public static function canEdit($record): bool
    {
        return false; 
    }

    public static function canDelete($record): bool
    {
        return false; 
    }

    
    public static function getEloquentQuery(): \Illuminate\Database\Eloquent\Builder
    {
        $user = filament()->auth()->user();

        return parent::getEloquentQuery()
            ->whereHas('rapat.penggunas', function ($q) use ($user) {
                $q->where('pengguna_id', $user->id);
            });
    }

    
    public static function form(Schema $schema): Schema
    {
        return NotulenPegawaiForm::configure($schema);
    }

    
    public static function table(Table $table): Table
    {
        return NotulenPegawaisTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListNotulenPegawais::route('/'),
        ];
    }
}
