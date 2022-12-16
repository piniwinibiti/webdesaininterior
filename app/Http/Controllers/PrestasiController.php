<?php

namespace App\Http\Controllers;

use App\Models\Prestasi;
use Illuminate\Http\Request;

class PrestasiController extends Controller
{

    public static function deleteImage($id) {
        $id = Prestasi::where('id_prestasi', $id)->get();

        $count = count($id);

        if ($count != null) {
            $img = (String) $id[0] -> sampul;
            $filepath = public_path('/img/prestasi/'.$img);
            if (file_exists($filepath)) {
                unlink($filepath);
            }
        }
    }

    //Generate Automatic ID : Activity
    public static function activityCheckID() {
        $id = Prestasi::selectRaw('RIGHT (id_prestasi, 3) AS id_prestasi')->orderBy('id_prestasi', 'desc')->limit(1)->get();

        $count = count($id);

        if ($count != null) {
            $idn = $id[0] -> id_prestasi;

            $a = substr($idn, -3);

            $f = $a+1;

            $final = "PR-00".$f;
        } else {
            $final = "PR-001";
        }

        return $final;
    }

    public function prestasi_submit(Request $request) {
        $img = $request->foto;
        $imgext = $request->foto->extension();
        $imgname = time().'-'.self::activityCheckID().'.'.$imgext;

        $list_delete = array(',', '<', '>', '?', '/', ';', ':', '"', '{', '[', '}', ']', '_', '=', '+', ')', '(', '*', '&', '^', '%', '$', '#', '@', '!', '~', '`', '.');
        $list = array(' ');
        $url_slug = str_replace($list, '-', strtolower($request->nama));
        $url_slug_final = str_replace($list_delete, '', strtolower($url_slug));

        $img->move(public_path('/img/prestasi'), $imgname);

        Prestasi::insert([
            'id_prestasi' => self::activityCheckID(),
            'nrp'     => $request->nrp,
            'nama'  => $request->nama,
            'prestasi'  => $request->prestasi,
            'tingkat'  => $request->tingkat,
            'nama_kegiatan'  => $request->nama_kegiatan,
            'tahun' => date('Y-m-d'),
            'url_slug'  => $url_slug_final,
            'sampul'    => $imgname,
        ]);

        return redirect('/admin-area/prestasi-mahasiswa')->with('success', 'Data Berhasil Tersimpan');
    }

    public function prestasi_edit($id) {
        $prestasi = Prestasi::where('id_prestasi', decrypt($id))->get();

        return view('admin.prestasi_edit', [
            'title' => 'Edit Data Prestasi Mahasiswa',
            'prestasi' => $prestasi,
        ]);
    }

    public function prestasi_update(Request $request) {
        $img = $request->foto;

        $list_delete = array(',', '<', '>', '?', '/', ';', ':', '"', '{', '[', '}', ']', '_', '=', '+', ')', '(', '*', '&', '^', '%', '$', '#', '@', '!', '~', '`', '.');
        $list = array(' ');

        $url_slug = str_replace($list, '-', strtolower($request->nama));
        $url_slug_final = str_replace($list_delete, '', strtolower($url_slug));

        if ($img != null) {
            self::deleteImage($request->id_prestasi);

            $imgext = $request->foto->extension();
            $imgname = time().'-'.$request -> id_prestasi.'.'.$imgext;

            $img->move(public_path('/img/prestasi'), $imgname);

            Prestasi::where('id_prestasi', $request -> id_prestasi)->update([
                'nrp'     => $request->nrp,
                'nama'  => $request->nama,
                'prestasi'  => $request->prestasi,
                'tingkat'  => $request->tingkat,
                'nama_kegiatan'  => $request->nama_kegiatan,
                'url_slug'  => $url_slug_final,
                'sampul'    => $imgname,
            ]);
        } else {
            Prestasi::where('id_prestasi', $request -> id_prestasi)->update([
                'nrp'     => $request->nrp,
                'nama'  => $request->nama,
                'prestasi'  => $request->prestasi,
                'tingkat'  => $request->tingkat,
                'nama_kegiatan'  => $request->nama_kegiatan,
                'url_slug'  => $url_slug_final,
            ]);
        }

        return redirect('/admin-area/prestasi-mahasiswa')->with('success', 'Data Berhasil Diubah');
    }

    public function prestasi_delete($id) {
        self::deleteImage(decrypt($id));
        
        $prestasi = Prestasi::where('id_prestasi', decrypt($id))->delete();

        return redirect('/admin-area/prestasi-mahasiswa')->with('success', 'Data Berhasil Dihapus');
    }

    public function prestasi_search(Request $request) {
        $request->merge([
            'cari' => '%'.$request->cari.'%',
        ]);

        $validated = $request->validate([
            'cari' => 'required',
        ]);

        $query = Prestasi::where('nama', 'like',$validated)->orWhere('nrp', 'like',$validated)->orWhere('id_prestasi', 'like',$validated)->paginate(8);

        //dd($query);

        if ($query == true) {
            if (count($query) == 0) {
                return redirect()->back()->with('message', 'Akun tidak ditemukan.');
            } else {
                return view('admin.prestasi', [
                    'title' => 'Hasil Pencarian Akun : '.$request->cari,
                    'menu' => 'pengguna',
                    'prestasi' => $query,
                ]);
            }
        } else {
            return redirect()->back()->with('message', 'Terjadi kesalahan dalam pencarian akun.');
        }
    }

}