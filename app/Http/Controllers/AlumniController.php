<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Alumni;

class AlumniController extends Controller
{

    public static function deleteAlumni($id) {
        $id = Alumni::where('id_alumni', $id)->get();
        $count = count($id);

        if ($count != null) {
            $img = (String) $id[0] -> foto;
            $filepath = public_path('/img/alumni/'.$img);
            if (file_exists($filepath)) {
                unlink($filepath);
            }
        }
    }

    //Generate Automatic ID : Gallery
    public static function alumniCheckID() {
        $id = Alumni::selectRaw('RIGHT (id_alumni, 3) AS id_alumni')->orderBy('id_alumni', 'desc')->limit(1)->get();

        $count = count($id);

        if ($count != null) {
            $idn = $id[0] -> id_alumni;

            $a = substr($idn, -3);

            $f = $a+1;

            $final = "AL-00".$f;
        } else {
            $final = "AL-001";
        }

        return $final;
    }


    public function alumni_submit(Request $request) {
        $img = $request->foto;
        $imgext = $request->foto->extension();
        $imgname = time().'-'.self::alumniCheckID().'.'.$imgext;

        $img->move(public_path('/img/alumni'), $imgname);

        Alumni::insert([
            'id_alumni'         => self::alumniCheckID(),
            'nama_alumni'             => $request->nama_alumni,
            'angkatan'         => $request->angkatan,
            'testimoni'        => $request->testimoni,
            'foto'              => $imgname
        ]);

        return redirect('/admin-area/alumni')->with('success', 'Data Berhasil Tersimpan');
    }

    public function alumni_edit($id) {
        //Get data
		$alumni = Alumni::where('id_alumni', decrypt($id))->get();

		//Send result to view 
		return view('admin.alumni_edit', [
            'alumni' => $alumni,
            'title' => 'Edit Alumni'
        ]);
    }

    public function alumni_update(Request $request) {
        $img = $request->foto;

        if ($img != null) {
            self::deleteAlumni($request->id_alumni);

            $imgext = $request->foto->extension();
            $imgname = time().'-'.$request->id_alumni.'.'.$imgext;
            $img->move(public_path('/img/alumni'), $imgname);
    
            Alumni::where('id_alumni', $request->id_alumni)->update([
            
                'nama_alumni'      => $request->nama_alumni,
                'angkatan'         => $request->angkatan,
                'testimoni'        => $request->testimoni,
                'foto'             => $imgname
            ]);
        } else {
            Alumni::where('id_alumni', $request->id_alumni)->update([
                'nama_alumni'      => $request->nama_alumni,
                'angkatan'         => $request->angkatan,
            ]);
        }

        return redirect('/admin-area/alumni')->with('success', 'Data Berhasil Diubah');
    }

    public function alumni_delete($id) {
        self::deleteAlumni(decrypt($id));

        Alumni::where('id_alumni', decrypt($id))->delete();

		return redirect('/admin-area/alumni')->with('success', 'Data Berhasil Dihapus');
	}

    public function alumni_search(Request $request) {
        $request->merge([
            'cari' => '%'.$request->cari.'%',
        ]);

        $validated = $request->validate([
            'cari' => 'required',
        ]);

        $query = Alumni::where('nama_alumni', 'like',$validated)->orWhere('id_alumni', 'like',$validated)->paginate(8);

        //dd($query);

        if ($query == true) {
            if (count($query) == 0) {
                return redirect()->back()->with('message', 'Akun tidak ditemukan.');
            } else {
                return view('admin.alumni', [
                    'title' => 'Hasil Pencarian Akun : '.$request->cari,
                    'menu' => 'pengguna',
                    'alumni' => $query,
                ]);
            }
        } else {
            return redirect()->back()->with('message', 'Terjadi kesalahan dalam pencarian akun.');
        }
    }

}