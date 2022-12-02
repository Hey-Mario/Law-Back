<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Theme extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function types()
    {
        return $this->belongsToMany(Type::class, 'App\Models\Info');
    }

    public function Infos()
    {
        return $this->hasMany(Info::class);
    }
}
