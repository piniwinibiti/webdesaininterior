<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Organisasi extends Model
{
    use HasFactory;
    protected $table = 'organisasi';
    protected $primaryKey = 'id_organisasi';
    protected $keyType = 'string';
    
    public $incrementing = false;
    public $timestamps = false;
}
