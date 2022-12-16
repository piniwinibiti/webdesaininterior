@extends('admin.layout.main')

@section('content')
@if (count($fakta) == 0)

@else
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><a href="/admin-area" class="a-breadcrumbs">Beranda</a> / <a href="/admin-area/fakta" class="a-breadcrumbs">Data Fakta Desain Interior</a> / Edit Fakta </h4>

    
    <div class="row">
        <div class="col">
            <div class="card">
                <form action="/admin-area/fakta/edit/update" method="POST" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="card-body">
                        <div class="row">
                            
                                <div class="card-body">


                                    <div class="row">
                                        <div class="col-12 col-md-6 col-lg-6">
                                            <div class="mb-3">
                                                <label class="form-label"><h3>Mahasiswa Aktif</h3></label>
                                                <input name="mahasiswa_aktif" type="number" class="form-control" placeholder="Jumlah Mahasiswa Aktif" value="{{ $fakta[0] -> mahasiswa_aktif}}">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-6">
                                            <div class="mb-3">
                                                <label class="form-label"><h3>Lulusan</h3></label>
                                                <input name="lulusan" type="number" class="form-control" placeholder="Jumlah Lulusan" value="{{ $fakta[0] -> lulusan }}">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-6">
                                            <div class="mb-3">
                                                <label class="form-label"><h3>Dosen Unggulan</h3></label>
                                                <input name="dosen_unggulan" type="number" class="form-control" placeholder="Jumlah Dosen Unggulan" value="{{ $fakta[0] -> dosen_unggulan }}">
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-6">
                                            <div class="mb-3">
                                                <label class="form-label"><h3>Mata Kuliah</h3></label>
                                                <input name="mata_kuliah" type="number" class="form-control" placeholder="Jumlah Mata Kuliah" value="{{ $fakta[0] -> mata_kuliah }}">
                                            </div>
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
                                    <a class="btn btn-warning" href="/admin-area/fakta">
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
@endsection