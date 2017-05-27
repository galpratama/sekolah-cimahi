@extends('layout.app')

@section('title')
    Sekolah Cimahi
@endsection

@section('description')

@endsection

@section('content')
    <div id="map-canvas"></div>
    <div class="search-container col-md-4 col-xs-12">
        <form class="form-horizontal">
            <div class="form-group">
                <div class="col-md-12">
                    <input type="text" class="form-control search-input" id="email" placeholder="Cari Sekolah di Cimahi">
                </div>
            </div>
        </form>
    </div>
@endsection


@section('custom-script')
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBoLQyif0tfik3UOs6p5ftz5V6Ny4X7vlg&v=3.exp&sensor=false" type="text/javascript"></script>
    <script>
        // if HTML DOM Element that contains the map is found...
        if (document.getElementById('map-canvas')){

            // Coordinates to center the map
            var myLatlng = new google.maps.LatLng(-6.8589385,107.5499204);

            // Other options for the map, pretty much selfexplanatory
            var mapOptions = {
                zoom: 16,
                center: myLatlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            // Attach a map to the DOM Element, with the defined settings
            var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

        }
    </script>
@endsection
