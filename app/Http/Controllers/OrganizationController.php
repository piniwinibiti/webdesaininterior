<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Organisasi;

class OrganizationController extends Controller
{
    public static function deleteImage($id) {
        $id = Organisasi::where('id_struktur', $id)->get();

        $count = count($id);

        if ($count != null) {
            $img = (String) $id[0] -> data_struktur;
            $filepath = public_path('/img/organization/'.$img);
            if (file_exists($filepath)) {
                unlink($filepath);
            }
        }
    }

    public function organization_edit($id) {
        $organization = Organisasi::where('id_struktur', decrypt($id))->get();

        return view('admin.organization_edit', [
            'title' => "Edit Data Organisasi",
            'organization' => $organization
        ]);
    }

    //Generate Automatic ID : ID Organisasi
    public static function organizationCheckID() {
        $id = Organisasi::selectRaw('RIGHT (id_struktur, 3) AS id_struktur')->orderBy('id_struktur', 'desc')->limit(1)->get();

        $count = count($id);

        if ($count != null) {
            $idn = $id[0] -> id_struktur;

            $a = substr($idn, -3);

            $f = $a+1;

            $final = "ST-00".$f;
        } else {
            $final = "ST-001";
        }

        return $final;
    }

    public function organization_submit(Request $request) {        
        $img = $request->foto;
        $imgext = $request->foto->extension();
        $imgname = time().'-'.self::organizationCheckID().'.'.$imgext;

        $img->move(public_path('/img/organization'), $imgname);

        Organisasi::insert([
            'id_struktur'      => self::organizationCheckID(),
            'data_struktur'    => $imgname,
        ]);

        return redirect('/admin-area/struktur-organisasi')->with('success', 'Data Berhasil Tersimpan');
    }

    public function organization_update(Request $request) {        
        $img = $request->foto;

        if ($request->foto != null) {
            self::deleteImage($request->organization_id);
            
            $imgext = $request->foto->extension();
                $imgname = time().'-'.$request->organization_id.'.'.$imgext;

            $img->move(public_path('/img/organization'), $imgname);

            Organisasi::where('id_struktur', $request->organization_id)->update([
                'data_struktur'    => $imgname,
            ]);

        }
        return redirect('/admin-area/struktur-organisasi')->with('success', 'Data Berhasil Diubah');
    }

    public function organization_delete($id) {        
        self::deleteImage(decrypt($id));

        Organisasi::where('id_struktur', decrypt($id))->delete();

        return redirect('/admin-area/struktur-organisasi')->with('success', 'Data Berhasil Dihapus');
    }
}
