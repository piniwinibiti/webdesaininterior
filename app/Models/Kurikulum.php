<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kurikulum extends Model
{
    use HasFactory;

    protected $table = 'kurikulum';
    protected $primaryKey = 'id_kurikulum';
    protected $keyType = 'string';
    
    public $incrementing = false;
    public $timestamps = false;
}
