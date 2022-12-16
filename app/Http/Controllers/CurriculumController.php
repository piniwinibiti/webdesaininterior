<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kurikulum;

class CurriculumController extends Controller
{
    public static function curriculumCheckID() {
        $id = Kurikulum::selectRaw('RIGHT (id_kurikulum, 3) AS id_kurikulum')->orderBy('id_kurikulum', 'desc')->limit(1)->get();

        $count = count($id);

        if ($count != null) {
            $idn = $id[0] -> id_kurikulum;

            $a = substr($idn, -3);

            $f = $a+1;

            $final = "KK-00".$f;
        } else {
            $final = "KK-001";
        }

        return $final;
    }

    public function curriculum_submit(Request $request) {
        Kurikulum::insert([
            'id_kurikulum'      => self::curriculumCheckID(),
            'data_kurikulum'    => $request -> data_kurikulum,
        ]);

        return redirect('/admin-area/kurikulum')->with('success', 'Data Berhasil Tersimpan');
    }

    public function curriculum_edit($id) {
        $curriculum = Kurikulum::where('id_kurikulum', decrypt($id))->get();

        return view('admin.curriculum_edit', [
            'title' => "Edit Data Kurikulum",
            'curriculum' => $curriculum,
        ]);
    }

    public function curriculum_update(Request $request) {
        Kurikulum::where('id_kurikulum', $request -> id_kurikulum)->update([
            'data_kurikulum'    => $request -> data_kurikulum,
        ]);

        return redirect('/admin-area/kurikulum')->with('success', 'Data Berhasil Diubah');
    }

    public function curriculum_delete($id) {
        $curriculum = Kurikulum::where('id_kurikulum', decrypt($id))->delete();

        return redirect('/admin-area/kurikulum')->with('success', 'Data Berhasil Dihapus');
    }
}
