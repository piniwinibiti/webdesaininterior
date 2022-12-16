@extends('main.layout.main')

@section('content')
@if (count($dosen) != 0)
<main id="main">
    <section id="cta" class="cta" style="padding-top: 150px;">
        <div class="container" data-aos="zoom-in">
            <div class="section-title">
                <h2>DATA</h2>
                <p>DOSEN</p>
            </div>

            <div class="text-center">

                <div class="row">

                </div>
            </div>

        </div>
    </section><!-- End Cta Section -->
    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Detail Dosen</h2>
                <ol>
                    <li><a href="/index">Beranda</a></li>
                    <li><a href="/datadosen">Data Dosen</a></li>
                    <li>{{ $dosen[0] -> nama_dosen }}</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
        <div class="container">
            <div class="row more-line-space">
                <div class="col-md-3 col-lg-4">
                    <div class="card">
                        <img class="card-img-top" src="{{ asset('/img/'.$dosen[0] -> foto) }}" alt="">
                    </div>
                    <div class="card-body">
                        <h4 class="card-title text-center">{{ $dosen[0]->nama_dosen }}</h4>
                        <p class="text-center">NIDN : {{ $dosen[0]->nidn }}</p>
                    </div>
                </div>
                <div class="col-md-9 col-lg-8">
                    <h1 style="text-align: center;">Profil Dosen</h1>
                    <hr>
                    <div class="row mb-2">
                        <div class="col-md-4 col-lg-4">
                            <h4>Bidang Keahlian</h4>
                        </div>
                        <div class="col-md-8 col-lg-8">
                            {!! html_entity_decode( $dosen[0]->keahlian) !!}
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-4 col-lg-4">
                            <h4>Pendidikan</h4>
                        </div>
                        <div class="col-md-8 col-lg-8">
                            <ul class="no-bullet">
                                <li><strong>Sarjana S1 : </strong>{{ $dosen[0]->s1 }}</li>
                                <li><strong>Magister S2 : </strong>{{ $dosen[0]->s2 }}</li>
                                <li><strong>Doktor S3 : </strong>{{ $dosen[0]->s3 }}</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-4 col-lg-4">
                            <h4>Referensi</h4>
                        </div>
                        <div class="col-md-8 col-lg-8">
                            <ul class="no-bullet">
                                <li><strong>Shinta ID : </strong>{{ $dosen[0]-> shinta }}</li>
                                <li><strong>Scopus ID : </strong>{{ $dosen[0]-> scopus }}</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-4 col-lg-4">
                            <h4>Publikasi</h4>
                        </div>
                        <div class="col-md-8 col-lg-8">
                            {!! html_entity_decode( $dosen[0]->google_scholar) !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="container">
            <hr>
            <div class="row">
            <div class="container organization-custom-margin d-flex justify-content-center" data-aos="zoom-in">
                <h4><strong>Riwayat Mengajar</strong></h4>
                
            </div>
            <div class="row table-responsive" style="width: 100%" data-aos="zoom-in">
                {!! html_entity_decode( $dosen[0]-> data_publikasi) !!}
            </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->
@endif
@stop