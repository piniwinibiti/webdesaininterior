@extends('main.layout.main')

@section('content')
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

<!-- AWAL KONTEN -->

<section id="team" class="team">
    <div class="container" data-aos="fade-up">
        <div class="row">
            @if (count($dosen) == 0)

            @else
            @foreach ($dosen as $data)
            
            <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                <a href="/datadosen/detaildosen/{{ Crypt::encrypt($data -> nidn); }}">
                    <div class="icon-box aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
                        <div class="member h-100" data-aos="fade-up" data-aos-delay="100">
                            <div class="member-img">
                                <img src="{{ asset('img/'.$data -> foto) }}" class="img-fluid" alt="">
                            </div>
                            <div class="member-info">
                                <h5 class="card-title">{{ $data -> nama_dosen }}</h5>
                                <p class="card-text">
                                    NIDN : {{ $data -> nidn }}
                                </p>
                            </div>
                        </div>
                    </div>
                    
                </a>
            </div>

            @endforeach
            @endif


        </div>

    </div>
</section><!-- End Team Section -->
@stop