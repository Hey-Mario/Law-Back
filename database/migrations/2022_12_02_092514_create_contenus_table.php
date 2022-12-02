<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contenus', function (Blueprint $table) {
            $table->id();
            $table->string('numtitre')->nullable();
            $table->string('titre')->nullable();
            $table->string('numChapitre')->nullable();
            $table->string('chapitre')->nullable();
            $table->string('numSection')->nullable();
            $table->string('section')->nullable();
            $table->string('numSousSection')->nullable();
            $table->string('sousSection')->nullable();
            $table->string('numArticle')->nullable();
            $table->string('article')->nullable();
            $table->foreignId('info_id')->constrained()->onDelete('cascade');
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
        Schema::dropIfExists('contenus');
    }
}
