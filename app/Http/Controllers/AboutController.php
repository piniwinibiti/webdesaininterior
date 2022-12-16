<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tentang;
use Illuminate\Support\Facades\DB;

class AboutController extends Controller
{
    public static function deleteImage($data) {
        $filepath = public_path('/main/img/'.$data);
        if (file_exists($filepath)) {
            unlink($filepath);
        }
    }

    public function photo_edit(Request $request) {
        $img = $request->foto;

        if ($img != null) {
            Tentang::deleteImage($request->foto_old);

            $imgext = $request->foto->extension();
            $imgname = 'about.'.$imgext;

            $request->merge([
                'foto_sampul' => $imgname,
            ]);

            $validated = $request->validate([
                'foto_sampul' => 'required'
            ]);

            $img->move(public_path('/main/img'), $imgname);

            $query = Tentang::where('id_tentang', 'TG_001')->update($validated);
        } else {
            return redirect()->back()->with('error', 'File foto tidak boleh kosong.');
        }

        if ($query == true) {
            return redirect('/admin-area/informasi-umum')->with('success', 'Foto berhasil diubah.');
        } else {
            return redirect('/admin-area/informasi-umum')->with('error', 'Terdapat kesalahan dalam mengedit foto.');
        }
    }

    public function informasi_edit(Request $request) {
        DB::table('tentang')->update([
            'informasi_umum' => $request->deskripsi,
        ]);

        return redirect('/admin-area/informasi-umum')->with('success', 'Data Berhasil Diubah');
    }

    public function visi_edit(Request $request) {
        DB::table('tentang')->update([
            'visi' => $request->deskripsi,
        ]);

        return redirect('/admin-area/informasi-umum')->with('success', 'Data Berhasil Diubah');
    }

    public function misi_edit(Request $request) {
        DB::table('tentang')->update([
            'misi' => $request->deskripsi,
        ]);

        return redirect('/admin-area/informasi-umum')->with('success', 'Data Berhasil Diubah');
    }

    public function tujuan_edit(Request $request) {
        DB::table('tentang')->update([
            'tujuan' => $request->deskripsi,
        ]);

        return redirect('/admin-area/informasi-umum')->with('success', 'Data Berhasil Diubah');
    }

    public function sasaran_edit(Request $request) {
        DB::table('tentang')->update([
            'sasaran' => $request->deskripsi,
        ]);

        return redirect('/admin-area/informasi-umum')->with('success', 'Data Berhasil Diubah');
    }

    public static function strategi_edit(Request $request) {
        DB::table('tentang')->update([
            'strategi' => $request->deskripsi,
        ]);

        return redirect('/admin-area/informasi-umum')->with('success', 'Data Berhasil Diubah');
    }
}
