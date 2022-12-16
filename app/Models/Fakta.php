<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fakta extends Model
{
    use HasFactory;

    protected $table = 'fakta';
    protected $primaryKey = 'id_fakta';
    protected $keyType = 'string';
    
    public $incrementing = false;
    public $timestamps = false;
}
