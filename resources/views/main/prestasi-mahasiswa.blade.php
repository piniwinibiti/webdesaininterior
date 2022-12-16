
@extends('main.layout.main')

@section('content')

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
<section id="events" class="events">
    <div class="container" data-aos="fade-up">

        <div class="row">
            @foreach ($prestasi as $data)
            <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                <a href="{{'/blog-mhs/'.$data -> url_slug}}">
                    <div class="member" data-aos="fade-up" data-aos-delay="100">
                        <div class="member-img">
                            <img src="{{ asset('img/gallery/mhs'.$data -> sampul) }}" class="img-fluid mx-auto d-block"
                                alt="">
                        </div>
                        <div class="member-info">
                            <h4>{{ $data -> nama }}</h4>
                            <div class="row">
                                <div class="col col-lg-6 col-md-6 ">
                                    <i class="ri-calendar-event-line"></i>
                                    <p>{{ $data -> tahun }}</p>
                                </div>
                                <div class="col col-lg-6 col-md-6 align-text-right">
                                    <i class="right-icons ri-user-line">Admin</i>
                                </div>
                            </div>
                            <hr>
                            <span class="limit-chars">{{ strip_tags($data -> kegiatan) }}</span>
                        </div>
                    </div>
                </a>
            </div>
            @endforeach
            <div>
                {{-- <div class="d-flex justify-content-center">
                    <a class="btn btn-outline-warning" href="/blog">Berita Lainnya</a>
                </div> --}}
</section><!-- End About Section -->

@stop