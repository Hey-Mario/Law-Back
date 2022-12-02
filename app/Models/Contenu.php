<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contenu extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function info()
    {
        return $this->belongsTo(Info::class);
    }
}
