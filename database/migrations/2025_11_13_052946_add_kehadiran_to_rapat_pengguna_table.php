<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {
            $table->enum('status_kehadiran', ['hadir', 'tidak', 'mungkin'])->nullable()->after('pengguna_id');
        });
    }

    public function down(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {
            $table->dropColumn('status_kehadiran');
        });
    }
};
