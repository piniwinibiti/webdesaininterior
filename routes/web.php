<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

use App\Http\Controllers\MainController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LecturerController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\AlumniController;
use App\Http\Controllers\CurriculumController;
use App\Http\Controllers\FaktaController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\ActivityController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\AccountController;
use App\Http\Controllers\PrestasiController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('pages.home');
// });

// user page 

Route::get('/', [MainController::class, 'index']);
Route::get('/visimisi', [MainController::class, 'visimisi']);
Route::get('/datadosen', [MainController::class, 'datadosen']);
Route::get('/akreditasi', [MainController::class, 'akreditasi']);
Route::get('/datadosen/detaildosen/{id}', [MainController::class, 'detaildosen']);
Route::get('/curriculum', [MainController::class, 'kurikulum']);
Route::get('/layananmahasiswa', [MainController::class, 'layananmahasiswa']);
//Gallery
Route::get('/galeri', [MainController::class, 'gallery']);
//Organization Page
Route::get('/organisasi', [MainController::class, 'organization']);


//Blog Details
Route::get('/blog', [MainController::class, 'blog']);
//Blog Details
Route::get('/blog/{slug}', [MainController::class, 'blog_details']);

//Blog_mhs 
Route::get('/blog_mhs', [MainController::class, 'blog_mhs']);
//Blog Details mhs
Route::get('/blog_mhs/{slug}', [MainController::class, 'blog_details_mhs']);
//About Page
Route::get('/tentang', [MainController::class, 'about']);

// admin page 

//Admin : Main Page
Route::get('/admin-area', [AdminController::class, 'index']);

//Admin : Lecturer Page
Route::get('/admin-area/dosen-pengajar', [AdminController::class, 'lecturer']);

//Admin : Lecturer Page -> New Data
Route::get('/admin-area/dosen-pengajar/new', [AdminController::class, 'lecturer_new']);

//Admin : Lecturer Page -> Submit
Route::post('/admin-area/dosen-pengajar/submit', [AdminController::class, 'lecturer_submit']);

//Admin : Lecturer Page -> New Data
Route::get('/admin-area/dosen-pengajar/edit/{id}', [AdminController::class, 'lecturer_edit']);

//Admin : Gallery Page
Route::get('/admin-area/galeri', [AdminController::class, 'gallery']);

//login admin
//Route::get('/login', [AdminController::class, 'login']);
// Route::get('/login', function(){
//     return view('admin.login');
// })->name('login');

// Route::post('/postlogin', [LoginController::class, 'postlogin']);
// Route::get('/', [MainController::class, 'index']);

// Route::group(['middleware' => ['auth']], function(){
//     Route::get('/admin-area', [AdminController::class, 'fakta']);
// });

//logout 
// Route::get('/logout', [LoginController::class, 'logout']);
//Route::post('/postlogin','LoginController@postlogin')->name('postlogin');

//Admin : Lecturer Page
Route::get('/admin-area/dosen-pengajar', [AdminController::class, 'lecturer']);

//Admin : Lecturer Page -> New Form
Route::get('/admin-area/dosen-pengajar/new', [AdminController::class, 'lecturer_new']);

//Admin : Lecturer Page -> Submit
Route::post('/admin-area/dosen-pengajar/submit', [LecturerController::class, 'lecturer_submit']);

//Admin : Lecturer Page -> Edit Form
Route::get('/admin-area/dosen-pengajar/edit/{id}', [LecturerController::class, 'lecturer_edit']);

//Admin : Lecturer Page -> Edit Data
Route::post('/admin-area/dosen-pengajar/edit/update', [LecturerController::class, 'lecturer_update']);

//Admin : Lecturer Page -> Delete Data
Route::get('/admin-area/dosen-pengajar/delete/{id}', [LecturerController::class, 'lecturer_delete']);

//Admin : Lecturer -> Search
Route::post('/admin-area/dosen-pengajar', [LecturerController::class, 'dosen_search']);

//Admin : Gallery Page
Route::get('/admin-area/galeri', [AdminController::class, 'gallery']);

//Admin : Gallery Page -> New Data
Route::get('admin-area/galeri/new', [AdminController::class, 'gallery_new']);

//Admin : Gallery Page -> Submit
Route::post('admin-area/galeri/submit', [GalleryController::class, 'gallery_submit']);

//Admin : Gallery Page -> Edit Form
Route::get('/admin-area/galeri/edit/{id}', [GalleryController::class, 'gallery_edit']);

//Admin : Gallery Page -> Edit Data
Route::post('/admin-area/galeri/edit/update', [GalleryController::class, 'gallery_update']);

//Admin : Gallery Page -> Delete Data
Route::get('/admin-area/galeri/delete/{id}', [GalleryController::class, 'gallery_delete']);


//Admin : Alumni Page
Route::get('/admin-area/alumni', [AdminController::class, 'alumni']);

//Admin : Alumni Page -> New Data
Route::get('admin-area/alumni/new', [AdminController::class, 'alumni_new']);

//Admin : Alumni Page -> Submit
Route::post('admin-area/alumni/submit', [AlumniController::class, 'alumni_submit']);

//Admin : Alumni Page -> Edit Form
Route::get('/admin-area/alumni/edit/{id}', [AlumniController::class, 'alumni_edit']);

//Admin : Alumni Page -> Edit Data
Route::post('/admin-area/alumni/edit/update', [AlumniController::class, 'alumni_update']);

//Admin : Alumni Page -> Delete Data
Route::get('/admin-area/alumni/delete/{id}', [AlumniController::class, 'alumni_delete']);

//Admin : Alumni -> Search
Route::post('/admin-area/alumni', [AlumniController::class, 'alumni_search']);

//Admin : Fakta Page
Route::get('/admin-area/fakta', [AdminController::class, 'fakta']);

Route::get('/admin-area/fakta/edit/{id}', [FaktaController::class, 'fakta_edit']);

Route::post('/admin-area/fakta/edit/update', [FaktaController::class, 'fakta_update']);

//Admin : Gallery Page
Route::get('/admin-area/galeri', [AdminController::class, 'gallery']);

//Admin : Gallery Page -> New Data
Route::get('admin-area/galeri/new', [AdminController::class, 'gallery_new']);

//Admin : Gallery Page -> Submit
Route::post('admin-area/galeri/submit', [GalleryController::class, 'gallery_submit']);

//Admin : Gallery Page -> Edit Form
Route::get('/admin-area/galeri/edit/{id}', [GalleryController::class, 'gallery_edit']);

//Admin : Gallery Page -> Edit Data
Route::post('/admin-area/galeri/edit/update', [GalleryController::class, 'gallery_update']);

//Admin : Gallery Page -> Delete Data
Route::get('/admin-area/galeri/delete/{id}', [GalleryController::class, 'gallery_delete']);

//Admin : Category Page
Route::get('/admin-area/kategori-galeri', [AdminController::class, 'gallery_category']);

//Admin : Category Page -> New Data
Route::get('/admin-area/kategori-galeri/new', [AdminController::class, 'gallery_category_new']);

//Admin : Category Page -> Submit
Route::post('/admin-area/kategori-galeri/submit', [GalleryController::class, 'gallery_category_submit']);

//Admin : Category Page -> Details Page
Route::get('/admin-area/kategori-galeri/detail/{id}', [GalleryController::class, 'gallery_category_details']);

//Admin : Category Page -> Edit Page
Route::get('/admin-area/kategori-galeri/edit/{id}', [GalleryController::class, 'gallery_category_edit']);

//Admin : Category Page -> Edit Data
Route::post('/admin-area/kategori-galeri/edit/update', [GalleryController::class, 'gallery_category_update']);

//Admin : Category Page -> Delete Data
Route::get('/admin-area/kategori-galeri/delete/{id}', [GalleryController::class, 'gallery_category_delete']);


//Admin : Activity
Route::get('/admin-area/agenda-kegiatan', [AdminController::class, 'activity']);

//Admin : Activity -> New Data
Route::get('/admin-area/agenda-kegiatan/new', [AdminController::class, 'activity_new']);

//Admin : Activity -> Submit
Route::post('/admin-area/agenda-kegiatan/submit', [ActivityController::class, 'activity_submit']);

//Admin : Activity -> Edit Form
Route::get('/admin-area/agenda-kegiatan/edit/{id}', [ActivityController::class, 'activity_edit']);

//Admin : Activity -> Edit Data
Route::post('/admin-area/agenda-kegiatan/edit/update', [ActivityController::class, 'activity_update']);

//Admin : Activity -> Delete Data
Route::get('/admin-area/agenda-kegiatan/delete/{id}', [ActivityController::class, 'activity_delete']);
//Admin : Activity -> Search
Route::post('/admin-area/agenda-kegiatan', [ActivityController::class, 'activity_search']);


//Admin : Prestasi
Route::get('/admin-area/prestasi-mahasiswa', [AdminController::class, 'prestasi']);

//Admin : Prestasi -> New Data
Route::get('/admin-area/prestasi-mahasiswa/new', [AdminController::class, 'prestasi_new']);

//Admin : Prestasi -> Submit
Route::post('/admin-area/prestasi-mahasiswa/submit', [PrestasiController::class, 'prestasi_submit']);

//Admin : Prestasi -> Edit Form
Route::get('/admin-area/prestasi-mahasiswa/edit/{id}', [PrestasiController::class, 'prestasi_edit']);

//Admin : Prestasi -> Edit Data
Route::post('/admin-area/prestasi-mahasiswa/edit/update', [PrestasiController::class, 'prestasi_update']);

//Admin : Prestasi -> Delete Data
Route::get('/admin-area/prestasi-mahasiswa/delete/{id}', [PrestasiController::class, 'prestasi_delete']);
//Admin : Prestasi -> Search
Route::post('/admin-area/prestasi-mahasiswa', [PrestasiController::class, 'prestasi_search']);



//Admin : Curriculum
Route::get('/admin-area/kurikulum', [AdminController::class, 'curriculum']);

//Admin : Curriculum -> New Data
Route::get('/admin-area/kurikulum/new', [AdminController::class, 'curriculum_new']);

//Admin : Curriculum -> Submit
Route::post('/admin-area/kurikulum/submit', [CurriculumController::class, 'curriculum_submit']);

//Admin : Curriculum -> Edit Page
Route::get('/admin-area/kurikulum/edit/{id}', [CurriculumController::class, 'curriculum_edit']);

//Admin : Curriculum -> Edit Data
Route::post('/admin-area/kurikulum/edit/update', [CurriculumController::class, 'curriculum_update']);

//Admin : Curriculum -> Delete Data
Route::get('/admin-area/kurikulum/delete/{id}', [CurriculumController::class, 'curriculum_delete']);

//Admin : Information
Route::get('/admin-area/informasi-umum', [AdminController::class, 'about']);

//Admin : Information -> Edit Pictures
Route::post('/admin-area/informasi-umum/edit-foto', [AboutController::class, 'photo_edit']);

//Admin : Information -> Edit Informasi
Route::post('/admin-area/informasi-umum/edit-deskripsi', [AboutController::class, 'informasi_edit']);

//Admin : Information -> Edit Visi
Route::post('/admin-area/informasi-umum/edit-visi', [AboutController::class, 'visi_edit']);

//Admin : Information -> Edit Misi
Route::post('/admin-area/informasi-umum/edit-misi', [AboutController::class, 'misi_edit']);

//Admin : Information -> Edit Tujuan
Route::post('/admin-area/informasi-umum/edit-tujuan', [AboutController::class, 'tujuan_edit']);

//Admin : Information -> Edit Sasaran
Route::post('/admin-area/informasi-umum/edit-sasaran', [AboutController::class, 'sasaran_edit']);

//Admin : Information -> Edit Strategi
Route::post('/admin-area/informasi-umum/edit-strategi', [AboutController::class, 'strategi_edit']);

//Admin : Organization
Route::get('/admin-area/struktur-organisasi', [AdminController::class, 'organization']);

//Admin : Organization -> New Data
Route::get('/admin-area/struktur-organisasi/new', [AdminController::class, 'organization_new']);

//Admin : Organization -> Submit
Route::post('/admin-area/struktur-organisasi/submit', [OrganizationController::class, 'organization_submit']);

//Admin : Oranization -> Edit Page
Route::get('/admin-area/struktur-organisasi/edit/{id}', [OrganizationController::class, 'organization_edit']);

//Admin : Oranization -> Edit Data
Route::post('/admin-area/struktur-organisasi/edit/update', [OrganizationController::class, 'organization_update']);

//Admin : Oranization -> Delete Data
Route::get('/admin-area/struktur-organisasi/delete/{id}', [OrganizationController::class, 'organization_delete']);


//Admin : Account
Route::get('/admin-area/akun', [AdminController::class, 'account']);

//Admin : Account -> New Data
Route::get('/admin-area/akun/new', [AdminController::class, 'account_new']);

//Admin : Account -> Submit
Route::post('/admin-area/akun/submit', [AccountController::class, 'account_submit']);

//Admin : Account -> Edit Page
Route::get('/admin-area/akun/edit/{id}', [AccountController::class, 'account_edit']);

//Admin : Account -> Edit Data
Route::post('/admin-area/akun/edit/update', [AccountController::class, 'account_update']);

//Admin : Account -> Delete Data
Route::get('/admin-area/akun/delete/{id}', [AccountController::class, 'account_delete']);

//Admin : Account -> Search
Route::post('/admin-area/akun', [AccountController::class, 'account_search']);

//Admin : Login Page
Route::get('/login', [AdminController::class, 'login']);

//Admin : Verify Login
Route::post('/login/verify', [AccountController::class, 'login']);

//Admin : Logout
Route::get('/logout', [AccountController::class, 'logout']);



//Dev Mode : Change Session ID
Route::get('/change-session', [
    AdminController::class, 'change_session'
]);