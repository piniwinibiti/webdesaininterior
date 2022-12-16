@extends('admin.layout.main')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"><a href="/admin-area"
                class="a-breadcrumbs">Beranda</a> /</span> Data Kurikulum</h4>
    <div class="card">
        <h5 class="card-header">
            Data Kurikulum
            <a href="/admin-area/kurikulum/new" class="btn btn-primary btn-sm pl-4">Data Baru</a>
        </h5>
        <div class="card-body">
          @foreach ($curriculum as $data)
          <div class="col">
            <div class="border-custom">
              <div class="float-right">
                <a class="btn btn-sm btn-primary btn-custom-border" href="/admin-area/kurikulum/edit/{{ encrypt($data -> id_kurikulum) }}">Edit</a>
                <button onclick="if (confirm('Hapus data kurikulum {{ $data -> id_kurikulum }}')) { location.replace('/admin-area/kurikulum/delete/{{ Crypt::encrypt($data -> id_kurikulum) }}') }" class="btn btn-sm btn-custom-border btn-danger">
                  <i class="align-middle" data-feather="trash-2"></i>
                  <span class="align-middle">Hapus</span>
              </button>
              </div>
              <hr>
              {!! html_entity_decode($data -> data_kurikulum) !!}
            </div>
          </div>
          @endforeach
          @include('sweetalert::alert')
        </div>
    </div>
</div>
@endsection