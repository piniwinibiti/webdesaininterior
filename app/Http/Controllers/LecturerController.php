<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dosen;

class LecturerController extends Controller
{
    public static function deleteImage($id) {
        $id = Dosen::where('nidn', $id)->get();

        $count = count($id);

        if ($count != null) {
            $img = (String) $id[0] -> foto;
            $filepath = public_path('/img/'.$img);
            if (file_exists($filepath)) {
                unlink($filepath);
            }
        }
    }

    public function lecturer_submit(Request $request) {        
        $img = $request->foto;
        $imgext = $request->foto->extension();
        $imgname = time().'-'.$request->nidn.'.'.$imgext;

        $img->move(public_path('/img'), $imgname);

        Dosen::insert([
            'nidn'          => $request->nidn,
            'nama_dosen'    => $request->nama_dosen,
            'keahlian'      => $request->keahlian,
            'kontak'        => '-',
            'alamat'        => '-',
            'foto'          => $imgname
        ]);
        
        Dosen::pendidikan_dosen()->insert([
            'nidn'          => $request->nidn,
            's1'            => $request->s1,
            's2'            => $request->s2,
            's3'            => $request->s3
        ]);

        Dosen::publikasi_dosen()->insert([
            'nidn'              => $request->nidn,
            'data_publikasi'    => $request->publikasi
        ]);

        Dosen::referensi_dosen()->insert([
            'nidn'              => $request->nidn,
            'google_scholar'    => $request->google_scholar,
            'shinta'            => $request->shinta,
            'scopus'            => $request->scopus
        ]);

        return redirect('/admin-area/dosen-pengajar')->with('success', 'Data Berhasil Tersimpan');
    }

    public function lecturer_edit($id) {
        //Get data from 4 table
        $lecturer = Dosen::where('nidn', decrypt($id))->get();
        $lecturer_degree = Dosen::pendidikan_dosen()->where('nidn', decrypt($id))->get();
        $lecturer_publication = Dosen::publikasi_dosen()->where('nidn', decrypt($id))->get();
        $lecturer_reference = Dosen::referensi_dosen()->where('nidn', decrypt($id))->get();

        //Send result to view 
        return view('admin.lecturer_edit', [
            'lecturer' => $lecturer,
            'lecturer_degree' => $lecturer_degree,
            'lecturer_publication' => $lecturer_publication,
            'lecturer_reference' => $lecturer_reference,
            'title' => 'Edit Data Dosen'
        ]);
    }

    public function lecturer_delete($id) {
        self::deleteImage(decrypt($id));

        Dosen::referensi_dosen()->where('nidn', decrypt($id))->delete();
        Dosen::publikasi_dosen()->where('nidn', decrypt($id))->delete();
        Dosen::pendidikan_dosen()->where('nidn', decrypt($id))->delete();
        Dosen::where('nidn', decrypt($id))->delete();

		return redirect('/admin-area/dosen-pengajar')->with('success', 'Data Berhasil Dihapus');
	}

    public function lecturer_update(Request $request) {        
        $img = $request->foto;

        if ($img != null) {
            self::deleteImage($request->nidn);

            $imgext = $request->foto->extension();
            $imgname = time().'-'.$request->nidn.'.'.$imgext;
            $img->move(public_path('/img'), $imgname);

            Dosen::where('nidn', $request->nidn)->update([
                'nama_dosen'    => $request->nama_dosen,
                'keahlian'      => $request->keahlian,
                'kontak'        => '-',
                'alamat'        => '-',
                'foto'          => $imgname
            ]);
            
            Dosen::pendidikan_dosen()->where('nidn', $request->nidn)->update([
                's1'            => $request->s1,
                's2'            => $request->s2,
                's3'            => $request->s3
            ]);

            Dosen::publikasi_dosen()->where('nidn', $request->nidn)->update([
                'data_publikasi'    => $request->publikasi
            ]);

            Dosen::referensi_dosen()->where('nidn', $request->nidn)->update([
                'google_scholar'    => $request->google_scholar,
                'shinta'            => $request->shinta,
                'scopus'            => $request->scopus
            ]);
        } else {
            Dosen::where('nidn', $request->nidn)->update([
                'nama_dosen'    => $request->nama_dosen,
                'keahlian'      => $request->keahlian,
                'kontak'        => '-',
                'alamat'        => '-'
            ]);
            
            Dosen::pendidikan_dosen()->where('nidn', $request->nidn)->update([
                's1'            => $request->s1,
                's2'            => $request->s2,
                's3'            => $request->s3
            ]);

            Dosen::publikasi_dosen()->where('nidn', $request->nidn)->update([
                'data_publikasi'    => $request->publikasi
            ]);

            Dosen::referensi_dosen()->where('nidn', $request->nidn)->update([
                'google_scholar'    => $request->google_scholar,
                'shinta'            => $request->shinta,
                'scopus'            => $request->scopus
            ]);
        }

        return redirect('/admin-area/dosen-pengajar')->with('success', 'Data Berhasil Diubah');
    }

    public function dosen_search(Request $request) {
        $request->merge([
            'cari' => '%'.$request->cari.'%',
        ]);

        $validated = $request->validate([
            'cari' => 'required',
        ]);

        $query = Dosen::where('nama_dosen', 'like',$validated)->orWhere('nidn', 'like',$validated)->paginate(8);

        //dd($query);

        if ($query == true) {
            if (count($query) == 0) {
                return redirect()->back()->with('message', 'Akun tidak ditemukan.');
            } else {
                return view('admin.lecturer', [
                    'title' => 'Hasil Pencarian Akun : '.$request->cari,
                    'menu' => 'pengguna',
                    'dosen' => $query,
                ]);
            }
        } else {
            return redirect()->back()->with('message', 'Terjadi kesalahan dalam pencarian akun.');
        }
    }
}
