<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Berita;
use App\Models\Dosen;
use App\Models\Tentang;
use App\Models\Galeri;
use App\Models\Kurikulum;
use App\Models\Organisasi;
use App\Models\Akun;
use App\Models\Alumni;
use App\Models\Fakta;
use App\Models\Prestasi;



    class AdminController extends Controller
{



    public function index() {

        //Counter
        $countactivity = Berita::count();
        $countinformation = Tentang::count();
        $countlecturer = Dosen::count();
        $countalumni = Alumni::count();
        $countcategory = Galeri::kategori()->count();
        $countgallery = Galeri::vgaleri()->count();
        $countorganization = Organisasi::count();
        $countcurriculum = Kurikulum::count();
        $countprestasi = Prestasi::count();
        $countuser = Akun::count();
        
        //$acc = DB::table('akun')->select('id_akun')->get();

        return view('admin.index', [
            'title' => "Beranda",
            'activity_count' => $countactivity,
            'information_count' => $countinformation,
            'lecturer_count' => $countlecturer,
            'alumni_count' => $countalumni,
            'category_count' => $countcategory,
            'gallery_count' => $countgallery,
            'organization_count' => $countorganization,
            'curriculum_count' => $countcurriculum,
            'prestasi_count' => $countprestasi,
            'user_count' => $countuser,
        ]);
    }
    
    //Lecturer Page

    public function lecturer() {
        $dosen = Dosen::vdosen()->get();

        return view('admin.lecturer', [
            'title' => "Data Dosen",
            'dosen' => $dosen,
        ]);
    }

    public function lecturer_new() {
        return view('admin.lecturer_new', [
            'title' => "Tambah Dosen Baru",
        ]);
    }

//Organization Controller

public function organization() {
    $organization = Organisasi::get();

    return view('admin.organization', [
        'title' => "Struktur Organisasi",
        'organization' => $organization,
    ]);
}

public function organization_new() {
    return view('admin.organization_new', [
        'title' => "Data Organisasi Baru"
    ]);
}
    
    //Activity Controller 

    public function activity() {
        $activity = Berita::get();

        return view('admin.activity', [
            'title' => 'Data Berita',
            'activity' => $activity,
        ]);
    }

    public function activity_new() {

        return view('admin.activity_new', [
            'title' => 'Data Berita Baru'
        ]);
    }

    //Prestasi Controller 

    public function prestasi() {
        $prestasi = Prestasi::get();

        return view('admin.prestasi', [
            'title' => 'Data Prestasi Mahasiswa',
            'prestasi' => $prestasi,
        ]);
    }

    public function prestasi_new() {

        return view('admin.prestasi_new', [
            'title' => 'Data Prestasi Mahasiswa Baru'
        ]);
    }

    //Gallery Controller 

    public function gallery() {
        $gallery = Galeri::vgaleri()->paginate(8);

        return view('admin.gallery', [
            'title' => "Galeri",
            'gallery' => $gallery,
        ]);
    }

    public function gallery_new() {
        $category = Galeri::kategori()->get();

        return view('admin.gallery_new', [
            'category' => $category,
            'title' => "Upload Foto Baru",
        ]);
    }

    //Category Controller 

    public function gallery_category() {
        $category = Galeri::kategori()->paginate(20);

        return view('admin.gallery_category', [
            'category' => $category,
            'title' => "Kategori Foto"
        ]);
    }

    public function gallery_category_new() {

        return view('admin.gallery_category_new', [
            'title' => "Kategori Foto Baru"
        ]);
    }

    //Alumni Controller 

    public function alumni() {
        $alumni = Alumni::get();
        return view('admin.alumni', [
            'title' => "Alumni",
            'alumni' => $alumni,
        ]);
    }

    public function alumni_new() {
        return view('admin.alumni_new', [
            'title' => "Upload Foto Baru",
        ]);
    }

    //fakta controller
    public function fakta() {
        $fakta = Fakta::get();

        return view('admin.fakta', [
            'title' => "fakta",
            'fakta' => $fakta,
        ]);
    }

    public function fakta_edit() {
        $fakta = Fakta::get();

        return view('admin.fakta_edit', [
            'title' => "Edit Fakta Desain Interior",
            'fakta' => $fakta,
        ]);
    }

    //Curriculum Controller

    public function curriculum() {
        $curriculum = Kurikulum::get();

        return view('admin.curriculum', [
            'title' => "Data Kurikulum",
            'curriculum' => $curriculum,
        ]);
    }

    public function curriculum_new() {
        return view('admin.curriculum_new', [
            'title' => "Data Kurikulum Baru"
        ]);
    }

    public function about() {
        $about = Tentang::get();

        return view('admin.about', [
            'title' => 'Data Informasi Umum',
            'about' => $about,
        ]);
    }

    public function account() {
        $account = Akun::paginate(20);

        return view('admin.account', [
            'title' => 'Data Pengguna',
            'account' => $account
        ]);
    }

    public function account_new() {
        return view('admin.account_new', [
            'title' => 'Data Pengguna Baru'
        ]);
    }

    public function login() {
        // return view('admin.login', [
        //     'title' => 'Login Page',
        //     'status' => 'null'
        // ]);
        return view('admin.login', [
            'title' => 'Login Page'
        ]);
    }

    // public function change_session() {
    //     session(['id' => encrypt('test')]);
    //     return redirect('/admin-area');
    // }
}