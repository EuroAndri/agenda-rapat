<?php

namespace App\Filament\Resources\Notulens;

use App\Filament\Resources\Notulens\Pages\CreateNotulen;
use App\Filament\Resources\Notulens\Pages\EditNotulen;
use App\Filament\Resources\Notulens\Pages\ListNotulens;
use App\Filament\Resources\Notulens\Schemas\NotulenForm;
use App\Filament\Resources\Notulens\Tables\NotulensTable;
use App\Models\Notulen;
use App\Models\Pengguna;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Model;

class NotulenResource extends Resource
{
    protected static ?string $model = Notulen::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedDocumentText;
    protected static ?string $navigationLabel = 'Notulen';
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 3;

    protected static ?string $recordTitleAttribute = 'isi';

    public static function form(Schema $schema): Schema
    {
        return NotulenForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return NotulensTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListNotulens::route('/'),
            'create' => CreateNotulen::route('/create'),
            'edit' => EditNotulen::route('/{record}/edit'),
        ];
    }

    protected static function hasAccess(): bool
    {
        $user = filament()->auth()->user();

        if (!($user instanceof Pengguna)) {
            return false;
        }

        if (!method_exists($user, 'hasRole')) {
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

    public static function canEdit(Model $record): bool
    {
        return self::hasAccess();
    }

    public static function canDelete(Model $record): bool
    {
        return self::hasAccess();
    }

    protected static function mutateFormDataBeforeCreate(array $data): array
    {
        $data['pengguna_id'] = filament()->auth()->user()->id;
        return $data;
    }

    protected static function mutateFormDataBeforeUpdate(array $data): array
    {
        if (empty($data['berkas'])) {
            unset($data['berkas']);
        }

        return $data;
    }
}