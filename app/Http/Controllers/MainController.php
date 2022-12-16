<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Berita;
use App\Models\Dosen;
use App\Models\Tentang;
use App\Models\Galeri;
use App\Models\Kurikulum;
use App\Models\Organisasi;
use App\Models\Alumni;
use App\Models\Fakta;
use App\Models\Prestasi;

class MainController extends Controller
{
    public function index() {
        $alumni = Alumni::get();
        $fakta = Fakta::get();
        $activity = Berita::orderBy('tgl_kirim', 'DESC')->limit(8)->get();
        $lecturer_counter = Dosen::count();
        $about = Tentang::get();
        return view('main.index', [
            'activity' => $activity,
            // 'galeri' => $galeri,
            'about' => $about,
            'alumni' => $alumni,
            'fakta' => $fakta,
            'title' => "Beranda",
        ]);
    }

    public function about() {
        $about = Tentang::get();

        return view('main.about', [
            'title' => "Tentang",
            'about' => $about
        ]);
    }

    public function datadosen() {
        $dosen = Dosen::vdosen()->get();

        return view('main.data-dosen', [
            'dosen' => $dosen,
            'title' => "Data Dosen",
        ]);
    }

    public function akreditasi() {
        return view('main.akreditasi', [
            'title' => "Akreditasi",
        ]);
    }
    
    public function gallery() {
        $gallery = Galeri::vgaleri()->paginate(12);
        $category = Galeri::kategori()->get();

        return view('main.gallery', [
            'title' => "Galeri",
            'category' => $category,
            'gallery' => $gallery
        ]);
    }

    public function detaildosen($id) {
        $dosen = Dosen::vdosen()->where('nidn', decrypt($id))->get();
        
        return view('main.detail-dosen', [
            'dosen' => $dosen,
         
            'title' => "Detail Dosen",
        ]);
    }

    public function organization() {
        $organization = Organisasi::get();

        return view('main.organization', [
            'title' => "Struktur Organisasi",
            'organization' => $organization,
        ]);
    }

    public function kurikulum() {
        $curriculum = Kurikulum::get();
        return view('main.curriculum', [
            'curriculum' => $curriculum,
            'title' => "Kurikulum",

        ]);
    }

    public function layananmahasiswa() {
        return view('main.layanan-akademik', [
            'title' => "Layanan Mahasiswa",
        ]);
    }

    public function blog() {
        $blog = Berita::paginate(12);

        return view('main.blog', [
            'title' => 'Blog',
            'blog' => $blog
        ]);
    }

    public function blog_details($slug) {
        $blog = Berita::where('url_slug', $slug)->get();

        return view('main.blog_details', [
            'title' => $blog[0] -> judul.' | Berita',
            'blog' => $blog
        ]);
    }

    public function blog_mhs() {
        $blog_mhs = Prestasi::paginate(12);

        return view('main.blog_mhs', [
            'title' => 'Blog Prestasi Mahasiswa',
            'blog_mhs' => $blog_mhs
        ]);
    }

    public function blog_details_mhs($slug) {
        $blog_mhs = Prestasi::where('url_slug', $slug)->get();

        return view('main.blog_details_mhs', [
            'title' => $blog_mhs[0] -> nama.' | Prestasi Mahasiswa',
            'blog_mhs' => $blog_mhs
        ]);
    }

    public function services() {
        return view('main.services', [
            'title' => "Layanan Mahasiswa"
        ]);
    }


    
}