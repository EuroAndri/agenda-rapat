<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('notulen', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('rapat_id');     // ✅ Tambahkan kolom dulu
            $table->uuid('pengguna_id');  // ✅ Tambahkan kolom dulu
            $table->text('isi')->nullable();      
            $table->string('berkas')->nullable();
            $table->timestamps();

            // ✅ Baru tambahkan foreign key
            $table->foreign('rapat_id')->references('id')->on('rapat')->onDelete('cascade');
            $table->foreign('pengguna_id')->references('id')->on('pengguna')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('notulen');
    }
};