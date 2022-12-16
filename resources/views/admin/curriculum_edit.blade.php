@extends('admin.layout.main')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"><a href="/admin-area"
                class="a-breadcrumbs">Beranda</a> / <a href="/admin-area/struktur-organisasi" class="a-breadcrumbs">Data
                Kurikulum</a> / </span>Edit Data Kurikulum</h4>
    <div class="card">
        <h5 class="card-header">
            Edit Data Kurikulum
        </h5>
        <form action="/admin-area/kurikulum/edit/update" method="POST" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="card-body">
                <div class="mb-3">
                    <label class="form-label">ID Kurikulum</label>
                    <input type="text" name="id_kurikulum" class="form-control" value="{{ $curriculum[0] -> id_kurikulum }}" readonly>
                </div>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="form-label">Data Kurikulum</label>
                    <textarea name="data_kurikulum" id="summernote" required>{{ $curriculum[0] -> data_kurikulum }}</textarea>
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
                            <a class="btn btn-warning" href="/admin-area/kurikulum">
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