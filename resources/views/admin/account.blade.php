@extends('admin.layout.main')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"><a href="/admin-area"
                class="a-breadcrumbs">Beranda</a> /</span> Data Akun</h4>
    <div class="card">
        <h5 class="card-header">
            <div class="row mb-4">
                <div class="col-md-6">
                    Data Akun
                    <a href="/admin-area/akun/new" class="btn btn-primary btn-sm pl-4">Data Baru</a>
                </div>
                    <div @if (count($account)===0) hidden @endif class="col-md-6">
                        <div class="d-flex flex-row-reverse">
                            <div class="row mb-4">
                                <div class="col-auto">
                                    {{-- <label for="cari" class="col-form-label">Cari Akun</label> --}}
                                </div>
                                <div class="col-auto">
                                    <form action="/admin-area/akun" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <div class="input-group">
                                            <input required type="text" id="cari" class="form-control" name="cari"
                                                placeholder="Masukkan keyword...">
                                            <button class="btn btn-outline-primary" type="submit">Cari</button>
                                        </div>
                                        @error('judul')
                                        <div class="form-text">
                                            <i class="ri-error-warning-line"></i>
                                            Masukkan keyword pencarian yang valid.
                                        </div>
                                        @enderror
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </h5>
        <div class="table-responsive text-nowrap">
            <table class="table table-hover">
                <thead>
                    <tr class="text-nowrap">
                        <th>#</th>
                        <th>ID Akun</th>
                        <th>Nama Pengguna</th>
                        <th>Foto Profil</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @if (count($account) === 0)
                    <tr>
                        <td colspan="4" class="text-center">Tidak Ada Data!</td>
                    </tr>
                    @else
                    @foreach ($account as $data)
                    <tr>
                        <th scope="row">{{ $loop -> iteration }}</th>
                        <td>{{ $data -> id_akun }}</td>
                        <td>{{ $data -> nama }}</td>
                        <td><img src="{{ asset('../img/account/'.$data -> profile_pict) }}" alt="Avatar"
                                class="img-fluid img-thumbnail" style="max-height: 80px" /></td>
                        <td>
                            <a class="btn btn-sm btn-primary"
                                href="/admin-area/akun/edit/{{ Crypt::encrypt($data -> id_akun) }}">
                                <span class="align-middle">Edit</span>
                            </a>
                            <button
                                onclick="if (confirm('Hapus akun {{ $data -> nama }}')) { location.replace('/admin-area/akun/delete/{{ Crypt::encrypt($data -> id_akun) }}') }"
                                class="btn btn-danger btn-sm">
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
        {{ $account->links('admin.layout.pagination') }}
    </div>
</div>
@endsection