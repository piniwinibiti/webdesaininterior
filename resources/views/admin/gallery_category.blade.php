@extends('admin.layout.main')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"><a href="/admin-area"
                class="a-breadcrumbs">Beranda</a> /</span> Kategori Foto</h4>
    <div class="card">
        <h5 class="card-header">
            Data Kategori Foto
            <a href="/admin-area/kategori-galeri/new" class="btn btn-primary btn-sm pl-4">Data Baru</a>
        </h5>
        <div class="table-responsive text-nowrap">
            <table class="table table-hover">
                <thead>
                    <tr class="text-nowrap">
                        <th>#</th>
                        <th>ID Kategori</th>
                        <th>Nama Kategori</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @if (count($category) === 0)
                    <tr>
                        <td colspan="4" class="text-center">Tidak Ada Data!</td>
                    </tr>
                    @else
                    @foreach ($category as $data)
                    <tr>
                        <th scope="row">{{ $loop -> iteration }}</th>
                        <td>{{ $data -> id_kategori }}</td>
                        <td>{{ $data -> nama_kategori }}</td>
                        <td>
                            <a class="btn btn-sm btn-secondary" href="/admin-area/kategori-galeri/detail/{{ Crypt::encrypt($data -> id_kategori); }}">
                                <span class="align-middle">Detail</span>
                            </a>
                            <a class="btn btn-sm btn-primary" href="/admin-area/kategori-galeri/edit/{{ Crypt::encrypt($data -> id_kategori) }}">
                                <span class="align-middle">Edit</span>
                            </a>
                            <button onclick="if (confirm('Hapus kategori {{ $data -> nama_kategori }}')) { location.replace('/admin-area/kategori-galeri/delete/{{ Crypt::encrypt($data -> id_kategori) }}') }" class="btn btn-danger btn-sm">
                                <i class="align-middle" data-feather="trash-2"></i>
                                <span class="align-middle">Hapus</span>
                            </button>
                        </td>
                    </tr>
                    @endforeach
                    @endif
                    @include('sweetalert::alert')
                </tbody>
            </table>
        </div>
        {{ $category->links('admin.layout.pagination') }}
    </div>
</div>
@endsection