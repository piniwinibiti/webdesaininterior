<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Dosen extends Model
{
    use HasFactory;

    protected $table = 'data_dosen';
    protected $primaryKey = 'nidn';
    protected $keyType = 'string';
    
    public $incrementing = false;
    public $timestamps = false;

    public static function vdosen() {
        $query = DB::table('vdosen');
        return $query;
    }

    public static function pendidikan_dosen() {
        $query = DB::table('pendidikan_dosen');
        return $query;
    }

    public static function publikasi_dosen() {
        $query = DB::table('publikasi_dosen');
        return $query;
    }

    public static function referensi_dosen() {
        $query = DB::table('referensi_dosen');
        return $query;
    }

    
}
