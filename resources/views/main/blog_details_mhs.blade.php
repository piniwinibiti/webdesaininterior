@extends('main.layout.main')

@section('content')
<main id="main">
    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta" style="padding-top: 150px;">
        <div class="container" data-aos="zoom-in">
            <div class="section-title">
                <h2>PRESTASI</h2>
                <p>MAHASISWA</p>
            </div>
    
            <div class="text-center">
    
                <div class="row">
    
                </div>
            </div>
    
        </div>
    </section><!-- End Cta Section -->
  
      
      <!-- ======= About Section ======= -->

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <ol>
                    <li><a href="/">Beranda</a></li>
                    <li><a href="/blog_mhs">Blog</a></li>
                    <li>{{ $blog_mhs[0] -> nama }}</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1>{{ $blog_mhs[0] -> nama }}</h1>
                    <h2>{{ $blog_mhs[0] -> nrp }}</h2>
                </div>
                <div class="col-12 mb-4">
                    <pre>Uploaded at {{ $blog_mhs[0] -> tahun }} | <span id="time"></span> minutes read</pre>
                </div>
                <div class="col-12" id="content">
                    <img class="rounded mx-auto d-block" src="{{ asset('img/prestasi/'.$blog_mhs[0] -> sampul) }}" style="max-width: 50%;">
                    <br>
                    <h3 class="text-align-center">{{ $blog_mhs[0] -> prestasi }}</h3>
                    <h3>{{ $blog_mhs[0] -> tingkat }}</h3>
                    {{-- <h3>{{ $blog_mhs[0] -> nama_kegiatan }}</h3> --}}
                    {!! html_entity_decode($blog_mhs[0] -> nama_kegiatan) !!}
                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->
@endsection