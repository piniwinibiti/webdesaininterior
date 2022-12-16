@extends('admin.layout.main')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"><a href="/admin-area"
                class="a-breadcrumbs">Beranda</a> / <a href="/admin-area/kategori-galeri" class="a-breadcrumbs">Data Akun</a> / </span>Edit</h4>
    <div class="card">
        <h5 class="card-header">
            Edit Pengguna
        </h5>
        <form action="/admin-area/akun/edit/update" method="POST" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                        <div class="mb-3 row">
                            <label class="col-md-3 col-form-label">ID Akun</label>
                            <div class="col-md-9">
                                <input class="form-control" type="text" name="id_akun" required readonly value="{{ $account[0] -> id_akun }}"/>
                                @error('id_akun')
                                <div id="defaultFormControlHelp" class="form-text">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="mb-3 row">
                            <label class="col-md-3 col-form-label">Nama Pengguna</label>
                            <div class="col-md-9">
                                <input class="form-control" type="text" name="name" required value="{{ $account[0] -> nama }}"/>
                                @error('name')
                                <div id="defaultFormControlHelp" class="form-text">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="mb-3 row">
                            <label class="col-md-3 col-form-label">Username</label>
                            <div class="col-md-9">
                                <input class="form-control" type="text" name="username" required value="{{ $account[0] -> username }}"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="mb-3 row">
                            <label class="col-md-3 col-form-label">Password</label>
                            <div class="col-md-9">
                                <input class="form-control" type="password" name="password" value="{{ $account[0] -> password }}"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="mb-3 row">
                            <label class="col-md-3 col-form-label">Foto</label>
                            <div class="col-sm-12 col-xl-6">
                                <img src="{{ asset('../img/account/'.$account[0] -> profile_pict) }}" alt="Pratinjau Gambar..." class="d-block rounded img-fluid mb-3" id="uploadedAvatar" style="max-height: 300px;" />
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
                            <a class="btn btn-warning" href="/admin-area/galeri">
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
@endsection