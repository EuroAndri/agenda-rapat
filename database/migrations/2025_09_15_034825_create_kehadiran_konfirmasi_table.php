<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('kehadiran_konfirmasi', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->foreignUuid('rapat_id')->constrained('rapat')->cascadeOnDelete();
            $table->foreignUuid('pengguna_id')->constrained('pengguna')->cascadeOnDelete();
            $table->foreignUuid('kehadiran_id')->constrained('kehadiran')->cascadeOnDelete();
            $table->enum('status', ['hadir', 'tidak hadir', 'izin'])->default('izin');
            $table->text('catatan')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('kehadiran_konfirmasi');
    }
};