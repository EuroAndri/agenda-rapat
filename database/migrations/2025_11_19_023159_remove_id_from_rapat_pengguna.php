<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {
            if (Schema::hasColumn('rapat_pengguna', 'id')) {
                $table->dropColumn('id');
            }
        });
    }

    public function down(): void
    {
        Schema::table('rapat_pengguna', function (Blueprint $table) {
            $table->uuid('id')->nullable()->first();
        });
    }
};
