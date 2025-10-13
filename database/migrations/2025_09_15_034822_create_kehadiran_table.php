<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('Kehadiran', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('id_rapat');
            $table->uuid('id_pengguna');
            $table->enum('status', ['hadir', 'tidak'])->default('hadir');
            $table->timestamps();

            $table->foreign('id_rapat')->references('id')->on('Rapat')->onDelete('restrict');
            $table->foreign('id_pengguna')->references('id')->on('Pengguna')->onDelete('restrict');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('Kehadiran');
    }
};
