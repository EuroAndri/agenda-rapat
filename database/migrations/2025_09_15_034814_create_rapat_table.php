<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('rapat', function (Blueprint $table) {
        $table->uuid('id')->primary();
        $table->string('judul');
        $table->string('penyelenggara')->nullable();
        $table->text('deskripsi')->nullable();
        $table->uuid('tempat_id');
        $table->uuid('pengguna_id');
        $table->foreign('tempat_id')->references('id')->on('tempat')->onDelete('restrict');
        $table->foreign('pengguna_id')->references('id')->on('pengguna')->onDelete('restrict');
        $table->timestamp('waktu_mulai')->nullable();
        $table->timestamp('waktu_selesai')->nullable();
        $table->timestamps();
    });
    }

    public function down(): void
    {
        Schema::dropIfExists('rapat');
    }
};
