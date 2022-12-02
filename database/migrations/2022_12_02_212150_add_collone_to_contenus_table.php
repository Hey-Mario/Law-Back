<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColloneToContenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('contenus', function (Blueprint $table) {
            $table->string('titreMg')->nullable();
            $table->string('chapitreMg')->nullable();
            $table->string('sectionMg')->nullable();
            $table->longText('articleMg')->nullable();
            $table->string('sousSectionMg')->nullable();
        });
        Schema::table('infos', function (Blueprint $table) {
            $table->string('titreTypeMg')->nullable();
        });
        Schema::table('themes', function (Blueprint $table) {
            $table->string('nomMg')->nullable();
        });
        Schema::table('types', function (Blueprint $table) {
            $table->string('nomMg')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('contenus', function (Blueprint $table) {
            //
        });
    }
}
