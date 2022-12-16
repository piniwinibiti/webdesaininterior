@extends('admin.layout.main')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"><a href="/admin-area"
                class="a-breadcrumbs">Beranda</a> /</span> Data Dosen</h4>

    <div class="mb-3">
        <i class="text-middle" data-feather="file-plus"></i>
        <h1 class="h3 d-inline align-middle">Form Dosen Baru</h1>
    </div>
    <div class="row">
        <div class="col">
            <div class="card">
                <form action="/admin-area/dosen-pengajar/submit" method="POST" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="card-header">
                        <h5 class="card-title mb-0">Data Umum</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="mb-3">
                                    <label class="form-label">NIDN Dosen</label>
                                    <input type="number" name="nidn" class="form-control" placeholder="NIDN Dosen" required>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="mb-3">
                                    <label class="form-label">Nama Dosen</label>
                                    <input type="text" name="nama_dosen" class="form-control" placeholder="Nama Dosen" required>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="mb-3">
                                    <label class="form-label">Bidang Keahlian</label>
                                    <textarea class="form-control" name="keahlian" required id="summernote"></textarea>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="card-body">
                                    <div class="d-flex align-items-start align-items-sm-center gap-4">
                                        <img src="../assets/img/avatars/1.png" alt="user-avatar" class="d-block rounded"
                                            height="100" width="100" id="uploadedAvatar" />
                                        <div class="button-wrapper">
                                            <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                                <span class="d-none d-sm-block">Unggah Foto</span>
                                                <i class="bx bx-upload d-block d-sm-none"></i>
                                                <input name="foto" type="file" id="upload" class="account-file-input" hidden
                                                    accept="image/png, image/jpeg" />
                                            </label>
                                            <button type="button"
                                                class="btn btn-outline-secondary account-image-reset mb-4">
                                                <i class="bx bx-reset d-block d-sm-none"></i>
                                                <span class="d-none d-sm-block">Reset</span>
                                            </button>

                                            <p class="text-muted mb-0">Tipe file : .jpg atau .png. Ukuran maks 800KB</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-header">
                        <h5 class="card-title mb-0">Pendidikan</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="mb-3">
                                    <label class="form-label">Sarjana (S1)</label>
                                    <input name="s1" type="text" class="form-control" placeholder="Nama Jurusan & Universitas">
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="mb-3">
                                    <label class="form-label">Magister (S2)</label>
                                    <input name="s2" type="text" class="form-control" placeholder="Nama Jurusan & Universitas">
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="mb-3">
                                    <label class="form-label">Doktor (S3)</label>
                                    <input name="s3" type="text" class="form-control" placeholder="Nama Jurusan & Universitas">
                                </div>
                            </div>
                        </div>
                    </div>
                    {{-- <div class="card-header">
                        <h5 class="card-title mb-0">Publikasi</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-md-12 col-lg-12">
                                <div class="mb-3">
                                    <label class="form-label">Data Publikasi</label>
                                    <textarea name="publikasi" rows="10" class="form-control" required id="summernote2"></textarea>
                                </div>
                            </div>
                        </div>
                    </div> --}}
                    <div class="card-header">
                        <h5 class="card-title mb-0">Referensi</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="mb-3">
                                    <label class="form-label">Google Scholar ID</label>
                                    <textarea class="form-control" name="google_scholar" required id="summernote7"></textarea>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="mb-3">
                                    <label class="form-label">Shinta ID</label>
                                    <input name="shinta" type="text" class="form-control" placeholder="Shinta ID">
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-6">
                                <div class="mb-3">
                                    <label class="form-label">Scopus ID</label>
                                    <input name="scopus" type="text" class="form-control" placeholder="Scopus ID">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-header">
                        <h5 class="card-title mb-0">Riwayat Mengajar</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-md-12 col-lg-12">
                                <div class="mb-3">
                                    <label class="form-label">Mata Kuliah</label>
                                    <textarea name="publikasi"  class="form-control" id="summernote2"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6 col-sm-6 col-md-6">
                                <div class="mb-3">
                                    <div class="text-start">
                                        <button class="btn btn-primary" type="submit">
                                            <span class="align-middle">Simpan</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6 col-md-6">
                                <div class="text-end">
                                    <a class="btn btn-warning" href="/admin-area/dosen-pengajar">
                                        <span class="align-middle">Kembali</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                @include('sweetalert::alert')
            </div>
        </div>
    </div>
</div>
@endsection