@extends('main.layout.main')

@section('content')
<main id="main">
    <section id="cta" class="cta" style="padding-top: 150px;">
        <div class="container" data-aos="zoom-in">
            <div class="section-title">
                <h2>Berita</h2>
                <p>Kegiatan</p>
            </div>
        </div>
    </section>
    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <ol>
                    <li><a href="/">Beranda</a></li>
                    <li><a href="/blog">Blog</a></li>
                    <li>{{ $blog[0] -> judul }}</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1>{{ $blog[0] -> judul }}</h1>
                </div>
                <div class="col-12 mb-4">
                    <pre>Uploaded at {{ $blog[0] -> tgl_kirim }} | <span id="time"></span> minutes read</pre>
                </div>
                <div class="col-12" id="content">
                    <img class="rounded mx-auto d-block" src="{{ asset('img/gallery/'.$blog[0] -> sampul) }}" style="max-width: 70%;">
                    <br>
                    {!! html_entity_decode($blog[0] -> isi) !!}
                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->
@endsection