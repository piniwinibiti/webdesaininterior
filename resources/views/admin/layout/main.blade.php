@php
use App\Http\Controllers\AccountController;

AccountController::verify();

$session = decrypt(Session::get('auth'));

//dd($session, decrypt(Session::get('id')));
@endphp

@if ($session === false)
<script>
    alert('Terdeteksi akses illegal, silahkan login untuk melanjutkan!');
    location.replace('/logout');
</script>
@elseif ($session === 'not_login')
<script>
    alert('Silahkan login untuk melanjutkan.');
    location.replace('/logout');
</script>
@else
<!-- Sweetalert -->
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>{{ $title }} | Website Administrator Informatika Itenas</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link href="{{ asset('main/img/di.jpg') }}" rel="icon">
    <link href="{{ asset('main/img/di.jpg') }}" rel="apple-touch-icon">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="{{ asset('admin/vendor/fonts/boxicons.css') }}" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="{{ asset('admin/vendor/css/core.css') }}" class="template-customizer-core-css" />
    <link rel="stylesheet" href="{{ asset('admin/vendor/css/theme-default.css') }}" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="{{ asset('admin/css/demo.css') }}" />
    <link rel="stylesheet" href="{{ asset('admin/css/style.css') }}" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="{{ asset('admin/vendor/libs/perfect-scrollbar/perfect-scrollbar.css') }}" />

    <link rel="stylesheet" href="{{ asset('admin/vendor/libs/apex-charts/apex-charts.css') }}" />

    <!-- Summernote CSS -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">

    <!-- Helpers -->
    <script src="{{ asset('admin/vendor/js/helpers.js') }}"></script>

    <!-- Select2 -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/select2-bootstrap-5-theme@1.3.0/dist/select2-bootstrap-5-theme.min.css" />

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="{{ asset('admin/js/config.js') }}"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
        <div class="layout-container">

            <!-- Sidebar -->
            @include('admin.layout.sidebar')

            <div class="layout-page">

                <!-- Navbar -->
                @include('admin.layout.navbar')

                <div class="content-wrapper">

                    <!-- Content -->
                    @yield('content')
                
                    <!-- Footer -->
                    @include('admin.layout.footer')

                    <div class="content-backdrop fade"></div>
                </div>
                <!-- Content wrapper -->
            </div>
            <!-- / Layout page -->
            </div>
    
            <!-- Overlay -->
            <div class="layout-overlay layout-menu-toggle"></div>
        </div>
        <!-- / Layout wrapper -->
    
        <!-- Core JS -->
        <!-- build:js assets/vendor/js/core.js -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="{{ asset('admin/vendor/libs/popper/popper.js') }}"></script>
        <script src="{{ asset('admin/vendor/js/bootstrap.js') }}"></script>
        <script src="{{ asset('admin/vendor/libs/perfect-scrollbar/perfect-scrollbar.js') }}"></script>
    
        <script src="{{ asset('admin/vendor/js/menu.js') }}"></script>

        <!-- Summernote JS -->
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    
        <!-- Vendors JS -->
        <script src="{{ asset('admin/vendor/libs/apex-charts/apexcharts.js') }}"></script>
    
        <!-- Main JS -->
        <script src="{{ asset('admin/js/main.js') }}"></script>
    
        <!-- Page JS -->
        <script src="{{ asset('admin/js/dashboards-analytics.js') }}"></script>
        <script src="{{ asset('admin/js/pages-account-settings-account.js') }}"></script>
    
        <!-- Place this tag in your head or just before your close body tag. -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>

        <!-- Select2 Js -->
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

        <!-- SweetAlert -->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <script>
          $( '#select2' ).select2( {
              theme: "bootstrap-5",
              width: $( this ).data( 'width' ) ? $( this ).data( 'width' ) : $( this ).hasClass( 'w-100' ) ? '100%' : 'style',
              placeholder: $( this ).data( 'placeholder' ),
          } );

          $(document).ready(function() {
              $('#summernote').summernote();
          });

          $(document).ready(function() {
              $('#summernote2').summernote();
          });

          $(document).ready(function() {
              $('#summernote3').summernote();
          });

          $(document).ready(function() {
              $('#summernote4').summernote();
          });

          $(document).ready(function() {
              $('#summernote5').summernote();
          });

          $(document).ready(function() {
              $('#summernote6').summernote();
          });

          $(document).ready(function() {
              $('#summernote7').summernote();
          });

          $(document).ready(function() {
              $('#gallery-textarea').summernote({
                toolbar: [
                  ['style', ['bold', 'italic', 'underline', 'clear']]
                ],
                callbacks: {
                  onKeydown: function (e) {
                    var i = e.currentTarget.innerText;
                    if (i.trim().length >= 230) {
                      if (e.keyCode != 8 && !(e.keyCode >=37 && e.keyCode <=40) && e.keyCode != 46 && !(e.keyCode == 88 && e.ctrlKey) && !(e.keyCode == 67 && e.ctrlKey) && !(e.keyCode == 65 && e.ctrlKey))
                        e.preventDefault(); 
                    }
                  },
                  onKeyup: function (e) {
                      var t = e.currentTarget.innerText;
                      $('#gallery-textarea').text(400 - t.trim().length);
                  },
                }
              });
          });

          function limit230(element) {
            var max_char = 230;

            if(element.value.length > max_char) {
              element.value = element.value.substr(0, max_char);
            }
          }

          function deleteModalData() {
            document.getElementById('kategori_input').value = null;
          }

          function saveDataModal() {
            var a = document.getElementById('kategori_input').value;

            document.getElementById('kategori_new').hidden = false;
            document.getElementById('kategori_new').value = a;

            document.getElementById('kategori').hidden = true;
          }

          function showWeather(data) {
            var temp = Math.round(parseFloat(data.main.temp) - 273.15);
            var temp_alt = Math.round(((parseFloat(data.main.temp)-273.15)*1.8)+32); 

            var feels_like = Math.round(parseFloat(data.main.feels_like) - 273.15);

            var iconcode = data.weather[0].icon;
            var iconurl = "http://openweathermap.org/img/wn/" + iconcode + ".png";

            document.getElementById('temp').innerHTML = temp + '&deg; C';
            document.getElementById('weather').src = iconurl; 
            document.getElementById('feels-like').innerHTML = feels_like; 

            $(document).ready(function() {
              $('.tooltip-weather').tooltip({title : data.weather[0].description, placement : "bottom"});
              $('.tooltip-temp').tooltip({title : temp_alt + '° F' , placement : "bottom"})
            });
          }

          function weatherCheck(position) {
            var key = 'YOUR OPENWEATHERMAP KEY';
            var lat = position.coords.latitude;
            var lon = position.coords.longitude;

            alert(lat + ' | ' + lon);

            fetch('https://api.openweathermap.org/data/2.5/weather?lat=' + lat + '&lon=' + lon + '&appid=' + key + '&lang=id')  
            .then(function(resp) { return resp.json() }) // Convert data to json
            .then(function(data) {
              showWeather(data);
            })
            .catch(function() {
              alert('Tidak dapat menampilkan cuaca.')
            });
          }

          function getLocation() {
            if (navigator.geolocation) {
              navigator.geolocation.getCurrentPosition(weatherCheck);
            }
          }

          window.onload = function() {
            getLocation();
            //weatherCheck(1650357);
          }
        </script>
    </body>
  </html>
  @endif
