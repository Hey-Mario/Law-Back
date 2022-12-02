<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Theme extends Model
{
    use HasFactory;

    public function types()
    {
        return $this->belongsToMany(Type::class, 'App\Models\Content');
    }

    public function contents()
    {
        return $this->hasMany(Content::class);
    }
}
