<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {

            // 1. DROP PRIMARY KEY COMPOSITE
            $table->dropPrimary(); // drop PK (rapat_id, pengguna_id)

            // 2. Jadikan id sebagai PRIMARY KEY
            $table->primary('id');
        });
    }

    public function down(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {

            // Kembalikan id bukan primary
            $table->dropPrimary();

            // Kembalikan composite key
            $table->primary(['rapat_id', 'pengguna_id']);
        });
    }
};
