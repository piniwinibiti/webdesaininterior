<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Akun;

class AccountController extends Controller
{
    public static function deleteImage($id) {
        $id = Akun::where('id_akun', $id)->get();

        $count = count($id);

        if ($count != null) {
            $img = (String) $id[0] -> profile_pict;
            $filepath = public_path('/img/account/'.$img);
            if (file_exists($filepath) == 1) {
                unlink($filepath);
            }
        }
    }

    //Generate Automatic ID : Account
    public static function accountCheckID() {
        $id = Akun::selectRaw('RIGHT (id_akun, 3) AS id_akun')->orderBy('id_akun', 'desc')->limit(1)->get();

        $count = count($id);

        if ($count != null) {
            $idn = $id[0] -> id_akun;

            $a = substr($idn, -3);

            $f = $a+1;

            $final = "AK-00".$f;
        } else {
            $final = "AK-001";
        }

        return $final;
    }

    public function account_submit(Request $request) {
        $img = $request->foto;
        $imgext = $request->foto->extension();
        $imgname = time().'-'.self::accountCheckID().'.'.$imgext;

        $img->move(public_path('/img/account'), $imgname);

        $query = Akun::insert([
            'id_akun'   => self::accountCheckID(),
            'nama'      => $request->name,
            'username'  => $request->username,
            'password'  => $request->password,
            'profile_pict'  => $imgname,  
        ]);
        
        return redirect('/admin-area/akun')->with('success', 'Data Berhasil Tersimpan');
    }

    public function account_edit($id) {
        $account = Akun::where('id_akun', decrypt($id))->get();


        return view('admin.account_edit', [
            'title' => 'Edit Data Pengguna',
            'account' => $account
        ]);
    }

    public function account_update(Request $request) {
        $img = $request->foto;

        if ($img != null) {
            self::deleteImage($request->id_akun);

            $imgext = $request->foto->extension();
            $imgname = time().'-'.$request -> id_akun.'.'.$imgext;

            $img->move(public_path('/img/account'), $imgname);

            $query = Akun::where('id_akun', $request->id_akun)->update([
                'nama'      => $request->name,
                'username'  => $request->username,
                'password'  => $request->password,
                'profile_pict'  => $imgname,  
            ]);
        } else {
            $query = Akun::where('id_akun', $request->id_akun)->update([
                'nama'      => $request->name,
                'username'  => $request->username,
                'password'  => $request->password,
            ]);
        }        

        return redirect('/admin-area/akun')->with('success', 'Data Berhasil Diubah');
    }

    public function account_delete($id) {
        self::deleteImage(decrypt($id));

        Akun::where('id_akun', decrypt($id))->delete();

        return redirect('/admin-area/akun')->with('success', 'Data Berhasil Dihapus');
    }

    public function login(Request $request) {
        $acc = Akun::where('username', $request -> username)->get();
        $action = '';

        if (count($acc) == 0) {
            $action = 'uname_not_found';
        } else {
            foreach ($acc as $data) {
                if ($data -> password == $request -> password) {
                    $request->session()->regenerate();
                    $request->session()->put('id', encrypt($data -> id_akun));
                    $request->session()->put('name', $data -> nama);
                    $request->session()->put('profile_pict', $data -> profile_pict);
                    $request->session()->put('auth', encrypt(true));

                    return redirect('/admin-area');
                    break;
                } else {
                    $action = 'wrong_pass';
                }
            }
        }

        if ($action == 'uname_not_found') {
            return redirect()->back()->with('error', 'wrong_uname');
        } else if ($action == 'wrong_pass') {
            return redirect()->back()->with('error', 'wrong_pass');
        }
    }

    public function account_search(Request $request) {
        $request->merge([
            'cari' => '%'.$request->cari.'%',
        ]);

        $validated = $request->validate([
            'cari' => 'required',
        ]);

        $query = Akun::where('nama', 'like',$validated)->orWhere('username', 'like',$validated)->orWhere('id_akun', 'like',$validated)->paginate(8);

        //dd($query);

        if ($query == true) {
            if (count($query) == 0) {
                return redirect()->back()->with('message', 'Akun tidak ditemukan.');
            } else {
                return view('admin.account', [
                    'title' => 'Hasil Pencarian Akun : '.$request->cari,
                    'menu' => 'pengguna',
                    'account' => $query,
                ]);
            }
        } else {
            return redirect()->back()->with('message', 'Terjadi kesalahan dalam pencarian akun.');
        }
    }

    public function logout() {
        session()->invalidate();

        session()->forget(['id', 'name', 'profile_pict']);

        session()->flush();

        return redirect('/login');
    }

    public static function verify() {
        $void = false;

        if (is_null(session()->get('id'))) {
            $void = null;
        } else {
            $query = Akun::select('id_akun')->orderBy('id_akun', 'desc')->get();
            $end_data = $query[count($query) - 1] -> id_akun;

            //dd($end_data);

            if ($query != null) {
                foreach ($query as $data) {
                    if ($data -> id_akun == decrypt(session()->get('id'))) {
                        break;
                    } else if ($data -> id_akun == $end_data) {
                        $void = true;
                    }
                }
            }  else {
                $void = true;
            }
        }

        if ($void == true) {
            session(['auth' => encrypt(false)]);
        }else if (is_null($void)) {
            session(['auth' => encrypt('not_login')]);
        }

        //$temp = decrypt(session()->get('auth'));
        //dd($temp);
    }
}