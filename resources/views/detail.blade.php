@extends('layout.app')

@section('title')
    Taman Bandung
@endsection

@section('description')

@endsection

@section('content')
    <div id="map-canvas"></div>
    <div class="row">
        <div class="detail-container col-md-4 col-xs-12" style="top: 66px;">
            <div id="myCarousel" class="carousel slide carousel-park" data-ride="carousel">
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="{{ $sekolah['image'] != '' ? $sekolah['image'] : url('img/placeholder.gif') }}" alt="Chicago" style="width: 100%;">
                    </div>
                </div>
            </div>
            <div class="detail">
                @if($location['lat'] == 0 && $location['lng'] == 0)
                    <div class="alert alert-danger">
                        Lokasi tidak ditemukan di Google Maps
                    </div>
                @endif
                <h3>
                    <strong>{{ $sekolah['name'] }}</strong>
                    <br>
                    <small>Sekolah {{ ucwords(strtolower(str_replace("_", " ", $sekolah['status']))) }} &middot; {{ ucwords(strtolower(str_replace("_", " ", $sekolah['villages']))) }}, {{ ucwords(strtolower(str_replace("_", " ", $sekolah['subdistricts']))) }}</small>
                    <br>
                    @if($sekolah['akreditasi'])
                        <small><strong>Akreditasi {{ $sekolah['akreditasi'] }}</strong></small>
                    @endif
                </h3>
                <p>
                    {!! $sekolah['description'] !!}
                </p>
                <p>
                    {{ $sekolah['lat'] }} {{ $sekolah['lng'] }}
                </p>
                <p>
                    <strong>Fasilitas</strong> <br>
                    <div class="row">
                    @if($sekolah['internet'])
                        <div class="col-md-4"><i class="fa fa-wifi"></i> Internet</div>
                    @endif
                    @if($sekolah['listrik'])
                        <div class="col-md-4"><i class="fa fa-bolt"></i> Listrik</div>
                    @endif
                    @if($sekolah['wc'])
                        <div class="col-md-4"><i class="fa fa-tint"></i> Toilet</div>
                    @endif
                    @if($sekolah['perpustakaan'])
                        <div class="col-md-4"><i class="fa fa-book"></i> Perpustakaan</div>
                    @endif
                    @if($sekolah['lab'])
                        <div class="col-md-4"><i class="fa fa-flask"></i> Toilet</div>
                    @endif
                </div>
                </p>
                <div class="row">
                    {{--<div class="col-md-7">--}}
                        {{--<a href="{{ url('login') }}" class="btn btn-block btn-danger">BOOKING TAMAN</a>--}}
                    {{--</div>--}}
                    <div class="col-md-12">
                        <a href="https://www.google.com/maps/dir//{{ $sekolah['lat'] }},{{ $sekolah['lng'] }}','width=600,height=600" class="btn btn-block btn-primary"
                           onclick="return popitup('https://www.google.com/maps/dir//{{ $sekolah['lat'] }},{{ $sekolah['lng'] }}','width=600,height=600'); return false;"><i class="fa fa-car"></i> PETUNJUK ARAH</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('custom-script')
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBoLQyif0tfik3UOs6p5ftz5V6Ny4X7vlg&v=3.exp&sensor=false" type="text/javascript"></script>
    <script>
        // if HTML DOM Element that contains the map is found...
        if (document.getElementById('map-canvas')){

            // Coordinates to center the map
            var myLatlng = new google.maps.LatLng({{ $sekolah['lat'] != '' ? $sekolah['lat'] : $location['lat'] }},{{ $sekolah['lng'] != '' ? $sekolah['lng'] : $location['lng']}});
            var myLatlngCenter = new google.maps.LatLng({{ $sekolah['lat'] != '' ? $sekolah['lat'] : $location['lat'] }},{{ $sekolah['lng'] != '' ? ($sekolah['lng'] - 0.005)  : ($location['lng'] - 0.005)}});

            // Attach a map to the DOM Element, with the defined settings
            var map = new google.maps.Map(document.getElementById("map-canvas"), {
                zoom: 16,
                center: myLatlngCenter,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });

            var contentString = '<div id="content">'+
                '<div id="siteNotice">'+
                '<strong>{{ $sekolah['name'] }}</strong><br>' +
                '{{ $sekolah['address'] }}'+
                '<br>' +
                'Sekolah {{ ucwords(strtolower(str_replace("_", " ", $sekolah['status']))) }}  &middot; {{ ucwords(strtolower(str_replace("_", " ", $sekolah['villages']))) }}, {{ ucwords(strtolower(str_replace("_", " ", $sekolah['subdistricts']))) }}'+
                '</div>';

            var infowindow = new google.maps.InfoWindow({
                content: contentString,
                maxWidth: 300
            });

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: 'Hello World!',
                icon: {
                    size: new google.maps.Size(20, 32),
                    // The origin for this image is 0,0.
                    origin: new google.maps.Point(0,0),
                    // The anchor for this image is the base of the flagpole at 0,32.
                    anchor: new google.maps.Point(0, 32)
                }
            });

            infowindow.open(map, marker);

            marker.addListener('click', function() {
                infowindow.open(map, marker);
                });

        }
    </script>
    <script>

        // quick search regex
        var qsRegex;

        // init Isotope
        var $grid = $('.result-search').isotope({
            itemSelector: '.results',
            layoutMode: 'fitRows',
            filter: function() {
                return qsRegex ? $(this).text().match( qsRegex ) : true;
            }
        });

        // use value of search field to filter
        var $quicksearch = $('.quicksearch').keyup( debounce( function() {
            qsRegex = new RegExp( $quicksearch.val(), 'gi' );
            $grid.isotope();
        }, 200 ) );

        // debounce so filtering doesn't happen every millisecond
        function debounce( fn, threshold ) {
            var timeout;
            return function debounced() {
                if ( timeout ) {
                    clearTimeout( timeout );
                }
                function delayed() {
                    fn();
                    timeout = null;
                }
                timeout = setTimeout( delayed, threshold || 100 );
            }
        }
    </script>
    <script>
        //function bsCarouselAnimHeight() {
        $('.carousel').carousel({
            interval: 5000
        }).on('slide.bs.carousel', function (e) {
            var nextH = $(e.relatedTarget).height();
            console.log(nextH)
            console.log( $(this).find('.active.item').parent() )
            $(this).find('.active.item').parent().animate({
                height: nextH
            }, 500);
        });
        //}
    </script>
    <script language="javascript" type="text/javascript">

        function popitup(url) {
            newwindow=window.open(url,'name','height=600,width=1200');
            if (window.focus) {newwindow.focus()}
            return false;
        }

    </script>
@endsection
