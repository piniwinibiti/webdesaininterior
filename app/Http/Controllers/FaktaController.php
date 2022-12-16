<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Fakta;

class FaktaController extends Controller
{
    

    public static function faktaCheckID() {
        $id = Fakta::selectRaw('RIGHT (id_fakta, 3) AS id_fakta')->orderBy('id_fakta', 'desc')->limit(1)->get();

        $count = count($id);

        if ($count != null) {
            $idn = $id[0] -> id_fakta;

            $a = substr($idn, -3);

            $f = $a+1;

            $final = "FK-00".$f;
        } else {
            $final = "FK-001";
        }

        return $final;
    }


    public function fakta_edit($id) {
        $fakta = Fakta::where('id_fakta', '1')->get();

        return view('admin.fakta_edit', [
            'title' => "Edit Data Fakta",
            'fakta' => $fakta,
        ]);
    }

    public function fakta_update(Request $request) {
        Fakta::where('id_fakta', '1')->update([
            'mahasiswa_aktif'    => $request -> mahasiswa_aktif,
            'lulusan'    => $request -> lulusan,
            'dosen_unggulan'    => $request -> dosen_unggulan,
            'mata_kuliah'    => $request -> mata_kuliah,
        ]);

        return redirect('/admin-area/fakta')->with('success', 'Data Berhasil Diubah');
    }

    // public function curriculum_delete($id) {
    //     $curriculum = DB::table('kurikulum')->where('id_kurikulum', decrypt($id))->delete();

    //     return redirect('/admin-area/kurikulum');
    // }
}
