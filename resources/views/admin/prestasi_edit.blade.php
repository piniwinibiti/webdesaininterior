@extends('admin.layout.main')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><a href="/admin-area" class="a-breadcrumbs">Beranda</a> / <a href="/admin-area/prestasi-mahasiswa"
        class="a-breadcrumbs">Prestasi Mahasiswa</a> / Edit</h4>

        <div class="mb-3">
            <i class="text-middle" data-feather="file-plus"></i>
            <h1 class="h3 d-inline align-middle">Data Prestasi Mahasiswa</h1>
        </div>
    <div class="row">
        <div class="col">
            <div class="card">
                <form action="/admin-area/prestasi-mahasiswa/edit/update" method="POST" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-12 col-md-6">
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label class="form-label">ID Prestasi</label>
                                        <input type="text" name="id_prestasi" class="form-control" readonly value="{{ $prestasi[0] -> id_prestasi }}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label class="form-label">NRP</label>
                                        <input type="text" name="nrp" class="form-control" value="{{ $prestasi[0] -> nrp }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Nama</label>
                                        <input type="text" name="nama" class="form-control" value="{{ $prestasi[0] -> nama }}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4 col-lg-4">
                                <div class="card-body">
                                    <label class="form-label">Sampul</label>
                                    <div class="card-body">
                                        <img src="{{ asset('img/'. $prestasi[0] -> sampul) }}" alt="preview image" class="d-block rounded img-fluid" id="uploadedAvatar" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-8 col-lg-8">
                                <div class="card-body">
                                    <div class="">
                                        <label class="form-label">Opsi Unggah</label>
                                        <div class="button-wrapper">
                                            <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                                <span class="d-none d-sm-block">Pilih Foto</span>
                                                <i class="bx bx-upload d-block d-sm-none"></i>
                                                <input name="foto" type="file" id="upload"
                                                    class="account-file-input" hidden
                                                    accept="image/png, image/jpeg" />
                                            </label>
                                            <button type="button"
                                                class="btn btn-outline-secondary account-image-reset mb-4">
                                                <i class="bx bx-reset d-block d-sm-none"></i>
                                                <span class="d-none d-sm-block">Reset</span>
                                            </button>
                                            <p class="text-muted mb-0">Tipe file : .jpg atau .png. Ukuran maks
                                                800KB</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label class="form-label">Prestasi</label>
                                        <input type="text" name="prestasi" class="form-control" value="{{ $prestasi[0] -> prestasi }}">    
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Tingkat</label>
                                        <input type="text" name="tingkat" class="form-control" value="{{ $prestasi[0] -> tingkat}}">    
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Nama Kegiatan</label>
                                        <textarea class="form-control" name="nama_kegiatan" id="summernote">{{ $prestasi[0] -> nama_kegiatan }}</textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" card-body">
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
                                    <a class="btn btn-warning" href="/admin-area/prestasi-mahasiswa">
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