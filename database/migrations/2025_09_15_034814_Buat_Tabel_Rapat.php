<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('Rapat', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('Judul');
            $table->text('Deskripsi');
            $table->timestamp('Waktu_Mulai');
            $table->timestamp('Waktu_Selesai')->nullable();;
            $table->uuid('Dibuat_Oleh'); 
            $table->timestamps();

           
            $table->foreign('Dibuat_Oleh')->references('id')->on('Pengguna')->onDelete('restrict');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('Rapat');
    }
};
