<?php

namespace App\Http\Controllers;

use App\Models\Berita;
use Illuminate\Http\Request;

class ActivityController extends Controller
{
    public static function deleteImage($id) {
        $id = Berita::where('id_berita', $id)->get();

        $count = count($id);

        if ($count != null) {
            $img = (String) $id[0] -> sampul;
            $filepath = public_path('/img/information/'.$img);
            if (file_exists($filepath)) {
                unlink($filepath);
            }
        }
    }

    //Generate Automatic ID : Activity
    public static function activityCheckID() {
        $id = Berita::selectRaw('RIGHT (id_berita, 3) AS id_berita')->orderBy('id_berita', 'desc')->limit(1)->get();

        $count = count($id);

        if ($count != null) {
            $idn = $id[0] -> id_berita;

            $a = substr($idn, -3);

            $f = $a+1;

            $final = "BR-00".$f;
        } else {
            $final = "BR-001";
        }

        return $final;
    }

    public function activity_submit(Request $request) {
        $img = $request->foto;
        $imgext = $request->foto->extension();
        $imgname = time().'-'.self::activityCheckID().'.'.$imgext;

        $list_delete = array(',', '<', '>', '?', '/', ';', ':', '"', '{', '[', '}', ']', '_', '=', '+', ')', '(', '*', '&', '^', '%', '$', '#', '@', '!', '~', '`', '.');
        $list = array(' ');
        $url_slug = str_replace($list, '-', strtolower($request->judul));
        $url_slug_final = str_replace($list_delete, '', strtolower($url_slug));

        $img->move(public_path('/img/information'), $imgname);

        Berita::insert([
            'id_berita' => self::activityCheckID(),
            'judul'     => $request->judul,
            'tgl_kirim' => date('Y-m-d'),
            'isi'       => $request->isi,
            'sampul'    => $imgname,
            'url_slug'  => $url_slug_final,
        ]);

        return redirect('/admin-area/agenda-kegiatan')->with('success', 'Data Berhasil Tersimpan');;
    }

    public function activity_edit($id) {
        $activity = Berita::where('id_berita', decrypt($id))->get();

        return view('admin.activity_edit', [
            'title' => 'Edit Data Informasi Umum',
            'activity' => $activity,
        ]);
    }

    public function activity_update(Request $request) {
        $img = $request->foto;

        $list_delete = array(',', '<', '>', '?', '/', ';', ':', '"', '{', '[', '}', ']', '_', '=', '+', ')', '(', '*', '&', '^', '%', '$', '#', '@', '!', '~', '`', '.');
        $list = array(' ');

        $url_slug = str_replace($list, '-', strtolower($request->judul));
        $url_slug_final = str_replace($list_delete, '', strtolower($url_slug));

        if ($img != null) {
            self::deleteImage($request->id_kegiatan);

            $imgext = $request->foto->extension();
            $imgname = time().'-'.$request -> id_kegiatan.'.'.$imgext;

            $img->move(public_path('/img/information'), $imgname);

            Berita::where('id_berita', $request -> id_kegiatan)->update([
                'judul'     => $request->judul,
                'isi'       => $request->isi,
                'sampul'    => $imgname,
                'url_slug'  => $url_slug_final,
            ]);
        } else {
            Berita::where('id_berita', $request -> id_kegiatan)->update([
                'judul'     => $request->judul,
                'isi'       => $request->isi,
                'url_slug'  => $url_slug_final,
            ]);
        }

        return redirect('/admin-area/agenda-kegiatan')->with('success', 'Data Berhasil Diubah');;
    }

    public function activity_delete($id) {
        self::deleteImage(decrypt($id));
        
        $activity = Berita::where('id_berita', decrypt($id))->delete();

        return redirect('/admin-area/agenda-kegiatan')->with('success', 'Data Berhasil Dihapus');;
    }

    public function activity_search(Request $request) {
        $request->merge([
            'cari' => '%'.$request->cari.'%',
        ]);

        $validated = $request->validate([
            'cari' => 'required',
        ]);

        $query = Berita::where('judul', 'like',$validated)->orWhere('id_berita', 'like',$validated)->paginate(8);

        //dd($query);

        if ($query == true) {
            if (count($query) == 0) {
                return redirect()->back()->with('message', 'Akun tidak ditemukan.');
            } else {
                return view('admin.activity', [
                    'title' => 'Hasil Pencarian Akun : '.$request->cari,
                    'menu' => 'pengguna',
                    'activity' => $query,
                ]);
            }
        } else {
            return redirect()->back()->with('message', 'Terjadi kesalahan dalam pencarian akun.');
        }
    }
}
