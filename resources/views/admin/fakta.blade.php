@extends('admin.layout.main')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"><a href="/admin-area"
                class="a-breadcrumbs">Beranda</a> /</span> Data Fakta Desain Interior</h4>

    <section class="mb-3 mb-lg-5">
        <div class="row mb-3">
            <div class="col-lg-12 mb-4 ">
                @foreach ($fakta as $data)
                <div class="card ">
                    <div class="card-body ">
                        <div class="d-flex align-items-center justify-content-between ">
                        
                            <div class="col-mb-4">
                                <i class="menu-icon tf-icons bx bx-group"></i>
                                <h4 class=""><strong>Mahasiswa Aktif</strong></h4>
                                <h1>{{ $data -> mahasiswa_aktif}}</h1>
                                
                            </div>
                            
                            
                                
                            <div class="col-mb-4">
                                <i class="menu-icon tf-icons bx bx-group"></i>
                                <h4 class=""><strong>Lulusan</strong></h4>
                                <h1>{{ $data -> lulusan}}</h1>
                            </div>
                            

                            <div class="col-mb-4">
                                <i class="menu-icon tf-icons bx bx-group"></i>
                                <h4 class=""><strong>Dosen Unggulan</strong></h4>
                                <h1>{{ $data -> dosen_unggulan}}</h1>
                            </div>
                            
                            <div class="col-mb-4">
                                <i class="menu-icon tf-icons bx bx-book"></i>
                                <h4 class=""><strong>Mata Kuliah</strong></h4>
                                <h1>{{ $data -> mata_kuliah}}</h1>
                            </div>
                            
                            
                        </div>

                    </div>

                    <div class="text-end">
                        <div class="btn-group btn-group-sm mb-4 text-right" role="group"
                            aria-label="Small button group">
                            <a href="/admin-area/fakta/edit/{{ Crypt::encrypt($data -> id_fakta) }}">
                                <button class="btn btn-danger">
                                    <i class="align-middle" data-feather="edit"></i>
                                    <span class="align-middle">Edit</span>
                                </button>
                            </a>
                        </div>
                    </div>

                </div>

                @endforeach
                @include('sweetalert::alert')
            </div>

            


        </div>



    </section>
</div>
@endsection