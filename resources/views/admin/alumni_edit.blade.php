@extends('admin.layout.main')

@section('content')
@if (count($alumni) == 0)

@else
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><a href="/admin-area" class="a-breadcrumbs">Beranda</a> / <a href="/admin-area/alumni" class="a-breadcrumbs">Data Alumni</a> / Edit Foto</h4>

    <div class="mb-3">
        <i class="text-middle" data-feather="file-plus"></i>
        <h1 class="h3 d-inline align-middle">Form Edit Foto : {{ $alumni[0] -> id_alumni }}</h1>
    </div>
    <div class="row">
        <div class="col">
            <div class="card">
                <form action="/admin-area/alumni/edit/update" method="POST" enctype="multipart/form-data">
                    <input type="text" readonly hidden name="id_alumni" value="{{ $alumni[0] -> id_alumni }}">
                    {{ csrf_field() }}
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-md-4 col-lg-4">
                                <div class="card-body">
                                    <label class="form-label">Foto</label>
                                    <div class="card-body">
                                        <img src="{{ asset('img/alumni/'.$alumni[0] -> foto) }}" alt="preview image" class="d-block rounded img-fluid" height="300" width="300" id="uploadedAvatar" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-8 col-lg-8">
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label class="form-label">Opsi Unggah</label>
                                        <div class="button-wrapper">
                                            <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                                <span class="d-none d-sm-block">Pilih Foto</span>
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
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label class="form-label">Nama Alumni</label>
                                        <input type="text" name="nama_alumni" class="form-control" required placeholder="Nama Alumni" value="{{ $alumni[0] -> nama_alumni }}">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label class="form-label">Angkatan</label>
                                        <input type="text" name="angkatan" class="form-control" required placeholder="Angkatan" value="{{ $alumni[0] -> angkatan }}">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label class="form-label">Testimoni</label>
                                        <textarea class="form-control" name="testimoni" id="testimoni-textarea">{{ $alumni[0] -> testimoni }}</textarea>
                                    </div>
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
                                    <a class="btn btn-warning" href="/admin-area/alumni">
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
@endif
@stop