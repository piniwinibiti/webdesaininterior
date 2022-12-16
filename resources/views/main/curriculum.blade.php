@extends('main.layout.main')

@section('content')
<main id="main">
    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta" style="padding-top: 150px;">
        <div class="container" data-aos="zoom-in">
          <div class="section-title">
            <h2>Akademik</h2>
            <p>Kurikulum</p>
          </div>
        </div>
      </section><!-- End Cta Section -->
    <div class="organization" id="organization">
        <div class="container organization-custom-margin d-flex justify-content-center" data-aos="zoom-in">
          <div class="row table-responsive" style="width: 100%">
            @foreach ($curriculum as $data)
            {!! html_entity_decode($data -> data_kurikulum) !!}
            @endforeach
          </div>
        </div>
    </div>
</main>
@endsection