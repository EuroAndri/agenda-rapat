<?php

namespace App\Filament\Resources\KehadiranPegawais;

use App\Filament\Resources\KehadiranPegawais\Pages;
use App\Models\Rapat;
use App\Models\Pengguna;
use App\Models\KehadiranKonfirmasi;

use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\SelectColumn;

use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;
use BackedEnum;
use Filament\Support\Icons\Heroicon;

class KehadiranPegawaiResource extends Resource
{
    protected static ?string $model = Rapat::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedClipboardDocumentList;
    protected static ?string $navigationLabel = 'Kehadiran Pegawai';
    protected static string|\UnitEnum|null $navigationGroup = 'Master Data';
    protected static ?int $navigationSort = 3;

    public static function table(Table $table): Table
    {
        return $table

            
            ->modifyQueryUsing(function ($query) {

                $user = Auth::user();

                if (! $user instanceof Pengguna) {
                    return $query->whereRaw('0 = 1');
                }

                if ($user->hasRole(['admin', 'operator'])) {
                    return $query;
                }

                if ($user->hasRole('pegawai')) {
                    return $query->whereHas('penggunas', function ($q) use ($user) {
                        $q->where('pengguna_id', $user->id);
                    });
                }

                return $query->whereRaw('0 = 1');
            })

           
            ->columns([
                TextColumn::make('judul')
                    ->label('Judul Rapat')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('waktu_mulai')
                    ->label('Mulai'),

                TextColumn::make('waktu_selesai')
                    ->label('Selesai'),

                
                SelectColumn::make('status')
    ->label('Kehadiran')
    ->options([
    'hadir' => 'Hadir',
    'izin' => 'Izin',                    
    'tidak hadir' => 'Tidak Hadir', 
    ])

    ->getStateUsing(function (Rapat $rapat) {
        return KehadiranKonfirmasi::where('rapat_id', $rapat->id)
            ->where('pengguna_id', Auth::id())
            ->value('status');
    })

   ->updateStateUsing(function ($state, Rapat $rapat) {
    KehadiranKonfirmasi::updateOrCreate(
        [
            'rapat_id' => $rapat->id,
            'pengguna_id' => Auth::id(),
        ],
        [
            'status' => $state
        ]
    );
}),

            ])

            ->paginated(false);
    }

    public static function canCreate(): bool { return false; }
    public static function canEdit(Model $record): bool { return false; }
    public static function canDelete(Model $record): bool { return false; }

    protected static function userHasRolePegawai(): bool
    {
        $user = Auth::user();
        return $user instanceof Pengguna
            && $user->hasRole(['pegawai', 'admin', 'operator']);
    }

    public static function shouldRegisterNavigation(): bool
    {
        return false;
    }

    public static function canViewAny(): bool
    {
        return self::userHasRolePegawai();
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListKehadiranPegawais::route('/'),
        ];
    }
}
