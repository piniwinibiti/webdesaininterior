@extends('main.layout.main')

@section('content')
<section id="cta" class="cta" style="padding-top: 150px;">
    
    <div class="container " data-aos="zoom-in">
        <div class="section-title">
            <h2>DESAIN INTERIOR</h2>
            <p style="color: white;">LAYANAN MAHASISWA</p>
        </div>

        <div class="text-center">

            <div class="row">

            </div>
        </div>

    </div>
</section><!-- End Cta Section -->



<section id="events" class="events">
    <div class="container">
        <div class="row" data-aos="fade-up">
            <div class="col-sm-12 col-lg-6 mb-4">
                <div class="img-bg-services d-flex align-items-center">
                    <div class="row">
                        <div class="col-12">
                            <h1>PENERIMAAN MAHASISWA BARU</h1>
                        </div>
                        <div class="col-12">
                            <p>Itenas membuka jalur pendaftaran dengan seleksi masuk melalui jalur PMdK, USM/ODT, Beasiswa Cahaya, serta UTBK. Klik tombol dibawah ini untuk memulai sebuah awal yang baru !</p>
                        </div>
                        <div class="col-12 ">
                            <a class="btn btn-warning" href="https://pmb.itenas.ac.id/" target="_blank">Daftar Sekarang</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-lg-6">
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="https://www.itenas.ac.id/" class="service-link" target="_blank">
                            <div class="services-box">
                                <i class="ri-government-line"></i>
                                <h5>Kampus</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="https://pmb.itenas.ac.id/petunjuk-pendaftaran/" class="service-link" target="_blank">
                            <div class="services-box">
                                <i class="ri-file-list-3-line"></i>
                                <h5>Petunjuk Pendaftaran</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="https://pmb.itenas.ac.id/pendaftaran-via-whatsapp/" class="service-link" target="_blank">
                            <div class="services-box">
                                <i class="ri-whatsapp-line"></i>
                                <h5>Pendaftaran Via WhatsApp</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4 tooltip-seleksi">
                        <a href="javascript:void(0)" class="service-link" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-placement="right" data-bs-html="true" data-bs-content="
                            <a href='https://pmb.itenas.ac.id/home-usm-2/' class='d-block btn btn-sm btn-warning m-1' target='_blank'>Jalur USM</a>
                            <a href='https://pmb.itenas.ac.id/home-odt/' class='d-block btn btn-sm btn-warning m-1' target='_blank'>Jalur ODT</a>
                            <a href='https://pmb.itenas.ac.id/home-pmdk/' class='d-block btn btn-sm btn-warning m-1' target='_blank'>Jalur PMdK</a>
                            <a href='https://pmb.itenas.ac.id/events-2/jalur-utbk-2022/' class='d-block btn btn-sm btn-warning m-1' target='_blank'>Jalur UTBK</a>
                        ">
                            <div class="services-box">
                                <i class="ri-mind-map"></i>
                                <h5>Jalur Seleksi</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="javascript:void(0)" class="service-link" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-placement="right" data-bs-html="true" data-bs-content="
                        <a href='https://pmb.itenas.ac.id/pendaftaran/' class='d-block btn btn-sm btn-warning m-1' target='_blank'>Biaya Pendaftaran</a>
                        <a href='https://pmb.itenas.ac.id/biaya-pendidikan/' class='d-block btn btn-sm btn-warning m-1' target='_blank'>Biaya Pendidikan</a>
                    ">
                            <div class="services-box">
                                <i class="ri-bank-card-line"></i>
                                <h5>Biaya Pendidikan</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="https://www.itenas.ac.id/mahasiswa-2/pembayaran-kuliah/" class="service-link" target="_blank">
                            <div class="services-box">
                                <i class="ri-wallet-3-line"></i>
                                <h5>Pembayaran Kuliah</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="https://www.itenas.ac.id/mahasiswa-2/kalender-akademik/" class="service-link" target="_blank">
                            <div class="services-box">
                                <i class="ri-calendar-todo-line"></i>
                                <h5>Kalender Akademik</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="http://bka.itenas.ac.id/beasiswa/" class="service-link" target="_blank" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-placement="right" data-bs-html="true" data-bs-content="
                        <a href='https://kemahasiswaan.itenas.ac.id/beasiswa/' class='d-block btn btn-sm btn-warning m-1' target='_blank'>Beasiswa ITENAS</a>
                        <a href='https://pmb.itenas.ac.id/beasiswa-cahaya-bc/' class='d-block btn btn-sm btn-warning m-1' target='_blank'>Beasiswa Cahaya</a>
                        <a href='https://pmb.itenas.ac.id/home-beasiswa-kip-k-itenas/' class='d-block btn btn-sm btn-warning m-1' target='_blank'>Beasiswa KIP-K</a>
                    ">
                            <div class="services-box">
                                <i class="ri-award-line"></i>
                                <h5>Beasiswa</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="https://kemahasiswaan.itenas.ac.id/?page_id=657" class="service-link" target="_blank">
                            <div class="services-box">
                                <i class="ri-newspaper-line"></i>
                                <h5>Berita</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="https://www.itenas.ac.id/mahasiswa-2/jadwal-ujian/" class="service-link" target="_blank">
                            <div class="services-box">
                                <i class="ri-survey-line"></i>
                                <h5>Jadwal Ujian</h5>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-4 col-xl-3 mb-4">
                        <a href="https://kemahasiswaan.itenas.ac.id/?page_id=211" class="service-link" target="_blank">
                            <div class="services-box">
                                <i class="ri-contacts-book-2-line"></i>
                                <h5>Bimbingan Konseling</h5>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        <div>

    </div>
  </section>

</section>






@stop