@extends('main.layout.main')

@section('content')




<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container" data-aos="fade-up">

        <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
            <div class="col-xl-6 col-lg-8">
                <h1>Program Studi <br><span>Desain Interior</span></h1>
            </div>
        </div>
    </div>
</section><!-- End Hero -->

<main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="row">

                <div data-aos="fade-right" data-aos-delay="100">
                    <div class="row">
                        <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                            <img src="{{ asset('../main/img/'.$about[0] -> foto_sampul) }}" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right"
                            data-aos-delay="100">
                            <div class="section-title" style="margin-bottom: -30px; ">
                                <h2>Program Studi</h2>
                                <p>Desain Interior</p>
                            </div>
                            {!! html_entity_decode($about[0] -> informasi_umum) !!}
                        </div>
                    </div>
                </div>

            </div>


    </section><!-- End About Section -->

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
        <div class="container" data-aos="zoom-in">
            <div class="section-title">
                <h2>Fakta</h2>
                <p>Tentang Desain Interior</p>
            </div>

            <div class="text-center">

                <div class="row">
                    <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100" data-aos="fade-left">
                        <div class="icon-box">
                            @foreach ($fakta as $data)
                            <h1 id="number-custom"><span data-purecounter-start="0"
                                    data-purecounter-end="{{ $data -> mahasiswa_aktif}}" data-purecounter-duration="2"
                                    class="purecounter"></span></h1>
                            @endforeach

                            <p>Mahasiswa Aktif</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="200">
                        <div class="icon-box">
                            @foreach ($fakta as $data)
                            <h1 id="number-custom"><span data-purecounter-start="0"
                                    data-purecounter-end="{{ $data -> lulusan}}" data-purecounter-duration="3"
                                    class="purecounter"></span></h1>
                            @endforeach
                            <p>Lulusan</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="300">
                        <div class="icon-box">
                            @foreach ($fakta as $data)
                            <h1 id="number-custom"><span data-purecounter-start="0"
                                    data-purecounter-end="{{ $data -> dosen_unggulan}}" data-purecounter-duration="2"
                                    class="purecounter"></span></h1>
                            @endforeach
                            <p>Dosen Unggulan</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
                        <div class="icon-box">
                            @foreach ($fakta as $data)
                            <h1 id="number-custom"><span data-purecounter-start="0"
                                    data-purecounter-end="{{ $data -> mata_kuliah}}" data-purecounter-duration="3"
                                    class="purecounter"></span></h1>
                            @endforeach
                            <p>Mata Kuliah</p>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section><!-- End Cta Section -->

    <!-- ======= About Section ======= -->
    <section id="events" class="events">
        <div class="container" data-aos="fade-up">
            <div class="section-title">
                <h2>Berita</h2>
                <p>Kegiatan</p>
            </div>

            <div class="row">
                @foreach ($activity as $data)
                <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                    <a href="{{'/blog/'.$data -> url_slug}}">
                        <div class="member" data-aos="fade-up" data-aos-delay="100">
                            <div class="member-img">
                                <img src="{{ asset('img/information/'.$data -> sampul) }}" class="img-fluid mx-auto d-block"
                                    alt="">
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
                <div>
                    <div class="d-flex justify-content-center">
                        <a class="btn btn-outline-warning" href="/blog">Berita Lainnya</a>
                    </div>
    </section><!-- End About Section -->


    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
        <div class="container" data-aos="zoom-in">
            <div class="section-title">
                <h2>Testimoni dari</h2>
                <p class="text-white">Alumni</p>
            </div>

            <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                <div class="swiper-wrapper">
                    @foreach ($alumni as $data)
                    <div class="swiper-slide">

                        <div class="testimonial-item">
                            <img src="{{ asset('img/alumni/'.$data -> foto) }}" class="testimonial-img" alt="">
                            <h3>{{ $data -> nama_alumni }}</h3>
                            <h4>{{ $data -> angkatan }}</h4>
                            <p>
                                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                {{ $data -> testimoni }}
                                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                            </p>
                        </div>

                    </div><!-- End testimonial item -->
                    @endforeach



                </div>

                <div class="swiper-pagination"></div>
            </div>

        </div>
    </section><!-- End Testimonials Section -->




    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Kontak</h2>
                <p>Kontak Kami</p>
            </div>

            <div class="row ">
                <div class="col">
                    <iframe style="border:0; width: 100%; height: 270px;"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.9529893893505!2d107.63379941477277!3d-6.896226595016906!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e7a52b6450ed%3A0x29f5c602c915813a!2sProdi%20Desain%20Interior%20Itenas!5e0!3m2!1sen!2sid!4v1656989950616!5m2!1sen!2sid"
                        allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>


                <div class="col">
                    <div class="info">
                        <div class="address">
                            <i class="bi bi-geo-alt"></i>
                            <h4>Lokasi :</h4>
                            <p>Gedung 1, Jl. Phh. Mustofa No.23, Neglasari, Cibeunying Kaler, Bandung City, West Java
                                40124</p>
                        </div>

                        <div class="email">
                            <i class="bi bi-envelope"></i>
                            <h4>Email:</h4>
                            <p>info@example.com</p>
                        </div>

                        <div class="phone">
                            <i class="bi bi-phone"></i>
                            <h4>Telepon:</h4>
                            <p>0812345678</p>
                        </div>

                    </div>

                </div>

                {{-- <div class="row mt-5">

                <div class="col-lg-4">
                    <div class="info">
                        <div class="address">
                            <i class="bi bi-geo-alt"></i>
                            <h4>Lokasi :</h4>
                            <p>Gedung 1, Jl. Phh. Mustofa No.23, Neglasari, Cibeunying Kaler, Bandung City, West Java
                                40124</p>
                        </div>

                        <div class="email">
                            <i class="bi bi-envelope"></i>
                            <h4>Email:</h4>
                            <p>info@example.com</p>
                        </div>

                        <div class="phone">
                            <i class="bi bi-phone"></i>
                            <h4>Telepon:</h4>
                            <p>0812345678</p>
                        </div>

                    </div>

                </div> --}}

                {{-- <div class="col-lg-8 mt-5 mt-lg-0">

                    <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name"
                                    required>
                            </div>
                            <div class="col-md-6 form-group mt-3 mt-md-0">
                                <input type="email" class="form-control" name="email" id="email"
                                    placeholder="Your Email" required>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject"
                                required>
                        </div>
                        <div class="form-group mt-3">
                            <textarea class="form-control" name="message" rows="5" placeholder="Message"
                                required></textarea>
                        </div>
                        <div class="my-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>
                        <div class="text-center"><button type="submit">Send Message</button></div>
                    </form>

                </div> --}}

            </div>

        </div>
    </section><!-- End Contact Section -->

</main><!-- End #main -->

@stop