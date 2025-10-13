<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('Notulen', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('id_rapat');
            $table->uuid('Dibuat_oleh');
            $table->string('konten_path');
            $table->timestamps();

            $table->foreign('id_rapat')->references('id')->on('Rapat')->onDelete('restrict');
            $table->foreign('Dibuat_oleh')->references('id')->on('Pengguna')->onDelete('restrict');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('Notulen');
    }
};
