@extends('admin.layout.main')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"><a href="/admin-area"
                class="a-breadcrumbs">Beranda</a> / <a href="/admin-area/kategori-galeri" class="a-breadcrumbs">Kategori
                Foto</a> / </span>Detail</h4>
    <div class="card">
        <h5 class="card-header">
            Data Kategori Foto
        </h5>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <div class="mb-3 row">
                        <label class="col-md-3 col-form-label">ID Kategori</label>
                        <div class="col-md-9">
                            <input class="form-control" type="text" value="{{ $category[0] -> id_kategori }}" readonly/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <div class="mb-3 row">
                        <label class="col-md-3 col-form-label">Nama Kategori</label>
                        <div class="col-md-9">
                            <input class="form-control" type="text" value="{{ $category[0] -> nama_kategori }}" readonly/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <h5 class="card-header">
            Foto yang menggunakan kategori ini :
        </h5>
        <div class="card-body">
            <div class="row">
                @foreach ($gallery as $data)
                <div class="col-md-6 col-lg-3 mb-3">
                    <div class="card h-100">
                        <img class="card-img-top" src="{{ asset('img/gallery/'.$data -> foto) }}" alt="Card image cap" />
                        <div class="card-body">
                            <h5 class="card-title">{{ $data -> id_galeri}}</h5>
                            <p class="card-text">
                                {!! html_entity_decode($data -> deskripsi) !!}
                            </p>
                            <div class="row">
                                <div class="col-6">
                                    <div class="text-start">
                                        <p class="card-text">Aksi</p>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-end">
                                        <div class="btn-group btn-group-sm mb-4 text-right" role="group"
                                            aria-label="Small button group">
                                            <a href="/admin-area/galeri/edit/{{ Crypt::encrypt($data -> id_galeri) }}" class="btn btn-primary">
                                                <i class="align-middle" data-feather="edit"></i>
                                                <span class="align-middle">Edit</span>
                                            </a>
                                            <button onclick="if (confirm('Hapus foto {{ $data -> id_galeri }}')) { location.replace('/admin-area/galeri/delete/{{ Crypt::encrypt($data -> id_galeri) }}') }" class="btn btn-danger">
                                                <i class="align-middle" data-feather="trash-2"></i>
                                                <span class="align-middle">Hapus</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
                @include('sweetalert::alert')
            </div>
        </div>
    </div>
</div>
@endsection