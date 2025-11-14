<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        // Tabel rapat_pengguna sudah ada, jadi tidak dibuat ulang
    }

    public function down(): void
    {
        // Tidak dihapus agar data tetap aman
    }
};
