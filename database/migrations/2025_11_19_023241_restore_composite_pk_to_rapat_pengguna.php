<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {
            $table->primary(['rapat_id', 'pengguna_id']);
        });
    }

    public function down(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {
            $table->dropPrimary();
        });
    }
};
