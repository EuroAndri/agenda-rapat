<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('kehadiran_konfirmasi', function (Blueprint $table) {
            $table->dropForeign(['kehadiran_id']);
            $table->dropColumn('kehadiran_id');
        });
    }

    public function down(): void
    {
        Schema::table('kehadiran_konfirmasi', function (Blueprint $table) {
            $table->uuid('kehadiran_id');
        });
    }
};
