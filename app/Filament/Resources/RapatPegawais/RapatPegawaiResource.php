<?php

namespace App\Filament\Resources\RapatPegawais;

use App\Filament\Resources\RapatPegawais\Pages\CreateRapatPegawai;
use App\Filament\Resources\RapatPegawais\Pages\EditRapatPegawai;
use App\Filament\Resources\RapatPegawais\Pages\ListRapatPegawais;

use App\Filament\Resources\RapatPegawais\RelationManagers\KehadiranPegawaiRelation;
use App\Filament\Resources\RapatPegawais\RelationManagers\NotulenPegawaiRelation;

use App\Filament\Resources\RapatPegawais\Schemas\RapatPegawaiForm;
use App\Filament\Resources\RapatPegawais\Tables\RapatPegawaisTable;

use App\Models\RapatPegawai;

use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables\Table as FilamentTable;
use Filament\Tables\Actions;
use Filament\Forms;
use Filament\Tables;
use BackedEnum;
use Filament\Support\Icons\Heroicon;


class RapatPegawaiResource extends Resource
{
    protected static ?string $model = RapatPegawai::class;

   protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedClipboardDocumentList;
    protected static ?string $navigationLabel = 'Rapat';
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 2;

    protected static ?string $recordTitleAttribute = 'judul';

    public static function form(Schema $schema): Schema
    {
        return RapatPegawaiForm::configure($schema);
    }

   public static function table(FilamentTable $table): FilamentTable
    {
        $userId = filament()->auth()->id(); // ID user login

        return RapatPegawaisTable::configure($table, $userId)
            ->modifyQueryUsing(function ($query) use ($userId) {
                return $query->whereHas('penggunas', function ($q) use ($userId) {
                    $q->where('pengguna_id', $userId);
                });
            });
    }

    public static function getRelations(): array
{
    return [
        KehadiranPegawaiRelation::class,
        NotulenPegawaiRelation::class,
    ];
}

    public static function getPages(): array
    {
        return [
            'index' => ListRapatPegawais::route('/'),
            'create' => CreateRapatPegawai::route('/create'),
            'edit' => EditRapatPegawai::route('/{record}/edit'),
        ];
    }
}
