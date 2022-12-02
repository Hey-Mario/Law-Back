<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Info extends Model
{
    use HasFactory;

    protected $guarded = [];
    
    public function type()
    {
        return $this->belongsTo(Type::class);
    }

    public function theme()
    {
        return $this->belongsTo(Theme::class);
    }

    public function contenus()
    {
        return $this->hasMany(Contenu::class);
    }
}
