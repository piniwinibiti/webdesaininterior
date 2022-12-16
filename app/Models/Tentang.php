<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tentang extends Model
{
    use HasFactory;

    protected $table = 'tentang';
    protected $primaryKey = null;
    
    public $incrementing = false;
    public $timestamps = false;
}
