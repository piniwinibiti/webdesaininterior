<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Galeri;

class GalleryController extends Controller
{
    public static function deleteImage($id) {
        $id = Galeri::where('id_galeri', $id)->get();

        $count = count($id);

        if ($count != null) {
            $img = (String) $id[0] -> foto;
            $filepath = public_path('/img/gallery/'.$img);
            if (file_exists($filepath)) {
                unlink($filepath);
            }
        }
    }

    //Generate Automatic ID : Gallery
    public static function galleryCheckID() {
        $id = Galeri::selectRaw('RIGHT (id_galeri, 3) AS id_galeri')->orderBy('id_galeri', 'desc')->limit(1)->get();

        $count = count($id);

        if ($count != null) {
            $idn = $id[0] -> id_galeri;

            $a = substr($idn, -3);

            $f = $a+1;

            $final = "GL-00".$f;
        } else {
            $final = "GL-001";
        }

        return $final;
    }

    public static function categoryCheckID() {
        $id = Galeri::kategori()->selectRaw('RIGHT (id_kategori, 3) AS id_kategori')->orderBy('id_kategori', 'desc')->limit(1)->get();

        $count = count($id);

        if ($count != null) {
            $idn = $id[0] -> id_kategori;

            $a = substr($idn, -3);

            $f = $a+1;

            $final = "KT-00".$f;
        } else {
            $final = "KT-001";
        }

        return $final;
    }

    public function gallery_submit(Request $request) {
        $img = $request->foto;
        $imgext = $request->foto->extension();
        $imgname = time().'-'.self::galleryCheckID().'.'.$imgext;

        $img->move(public_path('/img/gallery'), $imgname);

        if (is_null($request->kategori_new)) {
            Galeri::insert([
                'id_galeri'         => self::galleryCheckID(),
                'id_kategori'       => $request->kategori,
                'judul'             => $request->judul,
                'deskripsi'         => $request->keterangan,
                'foto'              => $imgname
            ]);
        } else {
            $gallery = Galeri::kategori()->where('id_kategori', $request->kategori_new)->get();

            if (count($gallery) == 0) {
                $id = self::categoryCheckID();

                Galeri::kategori()->insert([
                    'id_kategori'       => $id,
                    'nama_kategori'     => $request->kategori_new,
                ]);
            }

            Galeri::insert([
                'id_galeri'         => self::galleryCheckID(),
                'id_kategori'       => $id,
                'judul'             => $request->judul,
                'deskripsi'         => $request->keterangan,
                'foto'              => $imgname
            ]);
        }

        return redirect('/admin-area/galeri')->with('success', 'Data Berhasil Tersimpan');
    }

    public function gallery_edit($id) {
        //Get data
		$gallery = Galeri::vgaleri()->where('id_galeri', decrypt($id))->get();
        $category = Galeri::kategori()->get();

		//Send result to view 
		return view('admin.gallery_edit', [
            'gallery' => $gallery,
            'category' => $category,
            'title' => 'Edit Foto'
        ]);
    }

    public function gallery_update(Request $request) {
        $img = $request->foto;

        if ($img != null) {
            self::deleteImage($request->id_galeri);

            $imgext = $request->foto->extension();
            $imgname = time().'-'.$request->id_galeri.'.'.$imgext;
            $img->move(public_path('/img/gallery'), $imgname);
    
            Galeri::where('id_galeri', $request->id_galeri)->update([
                'judul'             => $request->judul,
                'deskripsi'         => $request->keterangan,
                'foto'              => $imgname
            ]);
        } else {
            Galeri::where('id_galeri', $request->id_galeri)->update([
                'judul'             => $request->judul,
                'deskripsi'         => $request->keterangan
            ]);
        }

        return redirect('/admin-area/galeri')->with('success', 'Data Berhasil Diubah');
    }

    public function gallery_delete($id) {
        self::deleteImage(decrypt($id));

        Galeri::where('id_galeri', decrypt($id))->delete();

		return redirect('/admin-area/galeri')->with('success', 'Data Berhasil Dihapus');
	}

    public function gallery_category_details($id) {
        $category = Galeri::kategori()->where('id_kategori', decrypt($id))->get();
        $gallery = Galeri::where('id_kategori', decrypt($id))->get();

        return view('admin.gallery_category_details', [
            'title' => 'Detail Kategori',
            'category' => $category,
            'gallery' => $gallery
        ]);
    }

    public function gallery_category_edit($id) {
        $category = Galeri::kategori()->where('id_kategori', decrypt($id))->get();

        return view('admin.gallery_category_edit', [
            'title' => 'Edit Kategori',
            'category' => $category
        ]);
    }

    public function gallery_category_update(Request $request) {
        Galeri::kategori()->where('id_kategori', $request->category_id)->update([
            'nama_kategori'     => $request->category_name,
        ]);

        return redirect('/admin-area/kategori-galeri')->with('success', 'Data Berhasil Diubah');
    }

    public function gallery_category_submit(Request $request) {
        Galeri::kategori()->insert([
            'id_kategori'       => self::categoryCheckID(),
            'nama_kategori'     => $request->category_name,
        ]);
        
        return redirect('/admin-area/kategori-galeri')->with('success', 'Data Berhasil Tersimpan');
    }

    public function gallery_category_delete($id) {
        Galeri::kategori()->where('id_kategori', decrypt($id))->delete();

        return redirect('/admin-area/kategori-galeri')->with('success', 'Data Berhasil Dihapus');
    }
}
