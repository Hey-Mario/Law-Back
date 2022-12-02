<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAviesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('avies', function (Blueprint $table) {
            $table->id();
            $table->string('nom')->default('Anonyme');
            $table->string('email')->nullable();
            $table->longText('description')->nullable();
            $table->timestamps();
        });
        Schema::create('plaintes', function (Blueprint $table) {
            $table->id();
            $table->string('nom')->default('Anonyme');
            $table->string('email')->nullable();
            $table->longText('description')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('avies');
    }
}
