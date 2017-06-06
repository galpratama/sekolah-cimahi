@extends('layout.app')

@section('title')
    Sekolah Bandung
@endsection

@section('description')

@endsection

@section('content')
    <div id="map-canvas"></div>
    <div class="row">
        <div class="search-container col-md-4 col-xs-12">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-12">
                        <input type="text"
                               class="form-control search-input clearable quicksearch"
                               placeholder="Cari Sekolah di Kota Cimahi.."
                               autofocus>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 filter-container">
            <div class="col-md-12 filters">
                <div class="ui-group">
                    <h3>Jenis Sekolah</h3>
                    <p><i>Tingkat Pendidikan Sekolah</i></p>
                    <div class="button-group js-radio-button-group" data-filter-group="school-type">
                        <button class="button btn btn-sm btn-primary active" data-filter="">Semua</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".smk" data-toggle="tooltip" title="Sekolah Menengah Kejuruan">SMK</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".sma" data-toggle="tooltip" title="Sekolah Menengah Atas">SMA</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".ma" data-toggle="tooltip" title="Madrasah Aliyah (Setara SMA)">MA</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".smp" data-toggle="tooltip" title="Sekolah Menengah Pertama">SMP</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".mts" data-toggle="tooltip" title="Madrasah Tsanawiyah (Setara SMP)">MTs</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".sd" data-toggle="tooltip" title="Sekolah Dasar">SD</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".mi" data-toggle="tooltip" title="Madrasah Ibtidaiyah (Setara SD)">MI</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".lkp" data-toggle="tooltip" title="Lembaga Kursus Pendidikan">LKP</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".pkbm" data-toggle="tooltip" title="Pusat Kegiatan Belajar Masyarakat">PKBM</button>
                        <button class="button btn btn-sm btn-primary" data-filter=".rabata" data-toggle="tooltip" title="Raudhatul Athfal (RA), Bustanul Athfal (BA) dan Taman Athfal (TA)">RA/BA/TA</button>
                    </div>
                </div>
                <div class="ui-group">
                    <h3>Tipe Sekolah</h3>
                    <p><i>Tipe Kepemilikan Sekolah (swasta/negeri)</i></p>
                    <div class="button-group js-radio-button-group" data-filter-group="status">
                        <button class="button btn btn-sm btn-success active" data-filter="">Semua</button>
                        <button class="button btn btn-sm btn-success" data-filter=".swasta">Swasta</button>
                        <button class="button btn btn-sm btn-success" data-filter=".negeri">Negeri</button>
                    </div>
                </div>
                <div class="ui-group">
                    <h3>Kecamatan</h3>
                    <p><i>Lokasi kecamatan keberadaan Sekolah</i></p>
                    <div class="button-group js-radio-button-group" data-filter-group="subdistricts">
                        <button href="#subdistrict-toggle" class="button btn btn-sm btn-danger active" data-filter="" aria-controls="subdistrict-toggle" role="tab" data-toggle="tab">Semua</button>
                        <button href="#cimahi_utara" class="button btn btn-sm btn-danger subdistrict-toggle-parent" data-filter=".cimahi_utara" aria-controls="cimahi_utara" role="tab" data-toggle="tab">Cimahi Utara</button>
                        <button href="#cimahi_tengah" class="button btn btn-sm btn-danger subdistrict-toggle-parent" data-filter=".cimahi_tengah" aria-controls="cimahi_tengah" role="tab" data-toggle="tab">Cimahi Tengah</button>
                        <button href="#cimahi_selatan" class="button btn btn-sm btn-danger subdistrict-toggle-parent" data-filter=".cimahi_selatan" aria-controls="cimahi_selatan" role="tab" data-toggle="tab">Cimahi Selatan</button>
                    </div>
                </div>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="subdistrict-toggle">
                        <div class="ui-group">
                            <h3>Kelurahan</h3>
                            <p><i>Lokasi kelurahan Sekolah di seluruh Kota Cimahi</i></p>
                            <div class="button-group js-radio-button-group" data-filter-group="villages">
                                <button class="button btn btn-sm btn-info subdistrict-toggle active" data-filter="">Semua</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cibabat">Cibabat</button>
                                <button class="button btn btn-sm btn-info" data-filter=".citeureup">Citeureup</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cipageran">Cipageran</button>
                                <button class="button btn btn-sm btn-info" data-filter=".pasirkaliki">Pasirkaliki</button>
                                <button class="button btn btn-sm btn-info" data-filter=".baros">Baros</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cigugur_tengah">Cigugur Tengah</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cimahi">Cimahi</button>
                                <button class="button btn btn-sm btn-info" data-filter=".karangmekar">Karangmekar</button>
                                <button class="button btn btn-sm btn-info" data-filter=".padasuka">Padasuka</button>
                                <button class="button btn btn-sm btn-info" data-filter=".setiamanah">Setiamanah</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cibeber">Cibeber</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cibeureum">Cibeureum</button>
                                <button class="button btn btn-sm btn-info" data-filter=".leuwigajah">Leuwigajah</button>
                                <button class="button btn btn-sm btn-info" data-filter=".melong">Melong</button>
                                <button class="button btn btn-sm btn-info" data-filter=".utama">Utama</button>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="cimahi_utara">
                        <div class="ui-group">
                            <h3>Kelurahan</h3>
                            <p><i>Lokasi kelurahan Sekolah di Kecamatan Cimahi Utara</i></p>
                            <div class="button-group js-radio-button-group" data-filter-group="villages_cimahi_utara">
                                <button class="button btn btn-sm btn-info subdistrict-toggle active" data-filter="">Semua</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cibabat">Cibabat</button>
                                <button class="button btn btn-sm btn-info" data-filter=".citeureup">Citeureup</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cipageran">Cipageran</button>
                                <button class="button btn btn-sm btn-info" data-filter=".pasirkaliki">Pasirkaliki</button>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="cimahi_tengah">
                        <div class="ui-group">
                            <h3>Kelurahan</h3>
                            <p><i>Lokasi kelurahan Sekolah di Kecamatan Cimahi Tengah</i></p>
                            <div class="button-group js-radio-button-group" data-filter-group="villages_cimahi_tengah">
                                <button class="button btn btn-sm btn-info subdistrict-toggle active" data-filter="">Semua</button>
                                <button class="button btn btn-sm btn-info" data-filter=".baros">Baros</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cigugur_tengah">Cigugur Tengah</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cimahi">Cimahi</button>
                                <button class="button btn btn-sm btn-info" data-filter=".karangmekar">Karangmekar</button>
                                <button class="button btn btn-sm btn-info" data-filter=".padasuka">Padasuka</button>
                                <button class="button btn btn-sm btn-info" data-filter=".setiamanah">Setiamanah</button>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="cimahi_selatan">
                        <div class="ui-group">
                            <h3>Kelurahan</h3>
                            <p><i>Lokasi kelurahan Sekolah di Kecamatan Cimahi Selatan</i></p>
                            <div class="button-group js-radio-button-group" data-filter-group="villages_cimahi_selatan">
                                <button class="button btn btn-sm btn-info subdistrict-toggle active" data-filter="">Semua</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cibeber">Cibeber</button>
                                <button class="button btn btn-sm btn-info" data-filter=".cibeureum">Cibeureum</button>
                                <button class="button btn btn-sm btn-info" data-filter=".leuwigajah">Leuwigajah</button>
                                <button class="button btn btn-sm btn-info" data-filter=".melong">Melong</button>
                                <button class="button btn btn-sm btn-info" data-filter=".utama">Utama</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ui-group">
                    <h3>Akreditasi</h3>
                    <p><i>Peringkat akreditasi sekolah</i></p>
                    <div class="button-group js-radio-button-group" data-filter-group="akreditasi">
                        <button class="button btn btn-sm btn-warning active" data-filter="">Semua</button>
                        <button class="button btn btn-sm btn-warning" data-filter=".akreditasi-a">A</button>
                        <button class="button btn btn-sm btn-warning" data-filter=".akreditasi-b">B</button>
                        <button class="button btn btn-sm btn-warning" data-filter=".akreditasi-c">C</button>
                        <button class="button btn btn-sm btn-warning" data-filter=".akreditasi-d">D</button>
                    </div>
                </div>
                <div class="ui-group">
                    <h3>Fasilitas</h3>
                    <p>Fasilitas yang tersedia di sekolah</p>
                    <div class="row">
                        <div class="col-md-6">
                            <table width="100%">
                                <tr>
                                    <td>Internet</td>
                                    <td>
                                        <span class="button-group js-radio-button-group" data-filter-group="internet">
                                            <button class="button btn btn-xs btn-default active" data-filter=""><i class="fa fa-th"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".internet"><i class="fa fa-check"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".no-internet"><i class="fa fa-times"></i></button>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Listrik</td>
                                    <td>
                                        <span class="button-group js-radio-button-group" data-filter-group="listrik">
                                            <button class="button btn btn-xs btn-default active" data-filter=""><i class="fa fa-th"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".listrik"><i class="fa fa-check"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".no-listrik"><i class="fa fa-times"></i></button>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>WC</td>
                                    <td>
                                        <span class="button-group js-radio-button-group" data-filter-group="wc">
                                            <button class="button btn btn-xs btn-default active" data-filter=""><i class="fa fa-th"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".wc"><i class="fa fa-check"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".no-wc"><i class="fa fa-times"></i></button>
                                        </span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-6">
                            <table width="100%">
                                <tr>
                                    <td>Perpustakaan</td>
                                    <td>
                                        <span class="button-group js-radio-button-group" data-filter-group="perpustakaan">
                                            <button class="button btn btn-xs btn-default active" data-filter=""><i class="fa fa-th"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".perpustakaan"><i class="fa fa-check"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".no-perpustakaan"><i class="fa fa-times"></i></button>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Lab</td>
                                    <td>
                                        <span class="button-group js-radio-button-group" data-filter-group="lab">
                                            <button class="button btn btn-xs btn-default active" data-filter=""><i class="fa fa-th"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".lab"><i class="fa fa-check"></i></button>
                                            <button class="button btn btn-xs btn-default" data-filter=".no-lab"><i class="fa fa-times"></i></button>
                                        </span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

                </div>
                <br>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="result-container col-md-4 col-xs-12">
            <div class="result-search">
                @foreach($sekolah as $data)
                    <?php $school_type = explode(' ',trim($data['name'])); ?>
                        <a href="{{ url('details/' . $data['id'] . '/' . \App\Helpers\Generate::slugUrl($data['name'])) }}" class="result-link">
                            <div class="row results
                                {{ strtolower(str_replace('/','',$school_type[0])) }}
                                {{ strtolower($data['status']) }}
                                {{ strtolower($data['subdistricts']) }}
                                {{ strtolower($data['villages']) }}
                                {{ $data['internet'] ? 'internet' : 'no-internet' }}
                                {{ $data['listrik'] ? 'listrik' : 'no-listrik' }}
                                {{ $data['wc'] ? 'wc' : 'no-wc' }}
                                {{ $data['perpustakaan'] ? 'perpustakaan' : 'no-perpustakaan' }}
                                {{ $data['lab'] ? 'lab' : 'no-lab' }}
                                akreditasi-{{ strtolower($data['akreditasi']) }}
                            ">
                                <div class="col-md-2">
                                    <img class="img-circle thumbnail-image"
                                         src="{{ $data['image'] ? $data['image'] : 'http://visitromania.info.ro/wp-content/themes/visit-romania/images/icons/icon-round-blue-manmade-school.svg'}}"
                                         alt="">
                                </div>
                                <div class="col-md-8">
                                    <h2 class="name"> {{ $data['name'] }}</h2>
                                    <p class="address">{{ $data['address'] }}</p>
                                    <p>
                                        <strong>
                                            <span class="text-info">{{ ucwords(strtolower(str_replace("_", " ", $data['villages']))) }}</span>, <span class="text-danger">{{ ucwords(strtolower(str_replace("_", " ", $data['subdistricts']))) }}</span>
                                        </strong>
                                    </p>
                                    <p class="amenities">
                                        <span class="label label-primary">{{ $school_type[0] }}</span>
                                        <span class="label label-success">{{ ucwords($data['status']) }}</span>
                                        <span class="label label-warning">{{ $data['akreditasi'] }}</span>
                                        &nbsp;
                                        {!!  $data['internet'] ? '<i class="fa fa-wifi"></i>' : ''  !!}
                                        {!!  $data['listrik'] ? '<i class="fa fa-bolt"></i>' : ''  !!}
                                        {!!  $data['wc'] ? '<i class="fa fa-tint"></i>' : ''  !!}
                                        {!!  $data['perpustakaan'] ? '<i class="fa fa-book"></i>' : ''  !!}
                                        {!!  $data['lab'] ? '<i class="fa fa-flask"></i>' : ''  !!}
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <img src="{{ url('img/arrow-more.png') }}" alt="" class="arrow-next">
                                </div>
                            </div>
                        </a>
                @endforeach
            </div>
        </div>
    </div>
@endsection


@section('custom-script')
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBoLQyif0tfik3UOs6p5ftz5V6Ny4X7vlg&v=3.exp&sensor=false" type="text/javascript"></script>
    <script>
        // if HTML DOM Element that contains the map is found...
        if (document.getElementById('map-canvas')) {
            // Coordinates to center the map
            var myLatlng = new google.maps.LatLng(-6.8862572, 107.523612);
            // Other options for the map, pretty much selfexplanatory
            var mapOptions = {
                zoom: 15,
                center: myLatlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            // Attach a map to the DOM Element, with the defined settings
            var map = new google.maps.Map(document.getElementById("map-canvas"),
                mapOptions);
        }
    </script>
    <script>
        // quick search regex
        var qsRegex;
        var buttonFilter;

        // init Isotope
        var $container = $('.result-search')
            .isotope({
                itemSelector: '.results',
                layoutMode: 'fitRows',
                filter: function() {
                    var $this = $(this);
                    var searchResult = qsRegex ? $this.text()
                        .match(qsRegex) : true;
                    var buttonResult = buttonFilter ? $this.is(buttonFilter) : true;
                    return searchResult && buttonResult;
                }
            });

        // store filter for each group
        var filters = {};
        $('.filters')
            .on('click', '.button', function() {
                var $this = $(this);
                // get group key
                var $buttonGroup = $this.parents('.button-group');
                var filterGroup = $buttonGroup.attr('data-filter-group');
                // set filter for group
                filters[filterGroup] = $this.attr('data-filter');
                // combine filters
                var filterValue = '';
                for (var prop in filters) {
                    filterValue += filters[prop];
                }
                console.log(filterValue);
                buttonFilter = filterValue;
                // set filter for Isotope
                $container.isotope();
            });

        // use value of search field to filter
        var $quicksearch = $('.quicksearch')
            .keyup(debounce(function() {
                qsRegex = new RegExp($quicksearch.val(), 'gi');
                $container.isotope();
            }, 300));

        // change active class on buttons
        $('.button-group')
            .each(function(i, buttonGroup) {
                var $buttonGroup = $(buttonGroup);
                $buttonGroup.on('click', 'button', function() {
                    $buttonGroup.find('.active')
                        .removeClass('active');
                    $(this)
                        .addClass('active');
                });
            });

        // debounce so filtering doesn't happen every millisecond
        function debounce(fn, threshold) {
            var timeout;
            return function debounced() {
                if (timeout) {
                    clearTimeout(timeout);
                }

                function delayed() {
                    fn();
                    timeout = null;
                }
                setTimeout(delayed, threshold || 100);
            };
        }
    </script>
    <script>
        // Clear filter before switching subdistricts
        $('.subdistrict-toggle-parent').click(function (e) {
            $('.subdistrict-toggle').click();
        })
    </script>
@endsection
