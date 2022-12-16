@extends('main.layout.main')

@section('content')
<main id="main">
    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta" style="padding-top: 150px;">
        <div class="container" data-aos="zoom-in">
            <div class="section-title">
                <h2>Berita</h2>
                <p>Kegiatan</p>
            </div>
        </div>
    </section><!-- End Cta Section -->

    <section id="events" class="events">
        <div class="container" data-aos="fade-up">
            <div class="row">
                @foreach ($blog as $data)
                <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                    <a href="{{'/blog/'.$data -> url_slug}}">
                        <div class="member" data-aos="fade-up" data-aos-delay="100">
                            <div class="member-img">
                                <img src="{{ asset('img/information/'.$data -> sampul) }}"
                                    class="img-fluid mx-auto d-block" alt="">
                            </div>
                            <div class="member-info">
                                <h4>{{ $data -> judul }}</h4>
                                <div class="row">
                                    <div class="col col-lg-6 col-md-6 ">
                                        <i class="ri-calendar-event-line"></i>
                                        <p>{{ $data -> tgl_kirim }}</p>
                                    </div>
                                    <div class="col col-lg-6 col-md-6 align-text-right">
                                        <i class="right-icons ri-user-line">Admin</i>
                                    </div>
                                </div>
                                <hr>
                                <span class="limit-chars">{{ strip_tags($data -> isi) }}</span>
                            </div>
                        </div>
                    </a>
                </div>
                @endforeach
            </div>
            {{ $blog->links('main.layout.pagination') }}
        </div>
    </section>
</main>
@endsection