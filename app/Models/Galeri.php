<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Galeri extends Model
{
    use HasFactory;

    protected $table = 'galeri';
    protected $primaryKey = 'id_galeri';
    protected $keyType = 'string';
    
    public $incrementing = false;
    public $timestamps = false;

    public static function vgaleri() {
        $query = DB::table('vgaleri');
        return $query;
    }

    public static function kategori() {
        $query = DB::table('kategori');
        return $query;
    }
}
