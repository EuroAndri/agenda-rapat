<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {
            // Tambah kolom id (sementara nullable agar bisa diisi)
            $table->uuid('id')->nullable()->first();
        });

        // Isi semua baris existing dengan UUID
        DB::table('rapat_pengguna')->get()->each(function ($row) {
            DB::table('rapat_pengguna')
                ->where('rapat_id', $row->rapat_id)
                ->where('pengguna_id', $row->pengguna_id)
                ->update(['id' => Str::uuid()->toString()]);
        });

        // Jadikan kolom id sebagai PRIMARY KEY
        Schema::table('rapat_pengguna', function (Blueprint $table) {
            $table->primary('id');
        });
    }

    public function down(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {
            $table->dropPrimary(['id']);
            $table->dropColumn('id');
        });
    }
};
