<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
       Schema::create('notulens', function (Blueprint $table) {
    $table->uuid('id')->primary();
    $table->foreignUuid('rapat_id')->constrained('rapat')->onDelete('cascade');
    $table->foreignUuid('pengguna_id')->constrained('pengguna')->onDelete('cascade');

    $table->text('isi')->nullable();
    $table->string('berkas')->nullable();

    $table->timestamps();
    });
    }

    public function down(): void
    {
        Schema::dropIfExists('notulen');
    }
};

