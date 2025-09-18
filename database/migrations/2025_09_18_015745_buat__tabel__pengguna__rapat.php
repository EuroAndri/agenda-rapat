<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('Pengguna_Rapat', function (Blueprint $table) {
            $table->uuid('id_pengguna');
            $table->uuid('id_rapat');
            $table->timestamps();

            $table->primary(['id_pengguna', 'id_rapat']);
            $table->foreign('id_pengguna')->references('id')->on('Pengguna')->onDelete('restrict');
            $table->foreign('id_rapat')->references('id')->on('Rapat')->onDelete('restrict');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('Pengguna_Rapat');
    }
};
