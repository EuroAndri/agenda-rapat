<?php

namespace App\Filament\Resources\KehadiranPegawais;

use App\Filament\Resources\KehadiranPegawais\Pages;
use App\Models\Rapat;
use App\Models\Pengguna;
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
                    $query->whereRaw('0 = 1');
                    return;
                }

                if ($user->hasRole(['admin', 'operator'])) {
                    return;
                }

                if ($user->hasRole('pegawai')) {
                    $query->whereHas('penggunas', function ($q) use ($user) {
                        $q->where('pengguna_id', $user->id);
                    });
                } else {
                    $query->whereRaw('0 = 1');
                }
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

                SelectColumn::make('pivot.status_kehadiran')
                    ->label('Kehadiran')
                    ->options([
                        'hadir' => '✅ Hadir',
                        'mungkin' => '🟡 Mungkin',
                        'tidak' => '❌ Tidak Hadir',
                    ])
                    ->getStateUsing(function (Model $record) {
                        $pivot = $record->penggunas()
                            ->where('pengguna_id', Auth::id())
                            ->first()?->pivot;

                        return $pivot?->status_kehadiran;
                    })
                    ->updateStateUsing(function ($state, Model $record) {
                        $record->penggunas()
                            ->updateExistingPivot(Auth::id(), ['status_kehadiran' => $state]);
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
            && method_exists($user, 'hasRole')
            && $user->hasRole('pegawai');
    }

    public static function shouldRegisterNavigation(): bool
    {
        return self::userHasRolePegawai();
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
