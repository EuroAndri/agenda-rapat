<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('model_has_permissions', function (Blueprint $table) {
            $table->uuid('model_id');  
            $table->foreignId('permission_id')->constrained('permissions')->onDelete('cascade');  
            $table->string('model_type');  
            $table->primary(['model_id', 'permission_id', 'model_type']);  
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('model_has_permissions');
    }
};

