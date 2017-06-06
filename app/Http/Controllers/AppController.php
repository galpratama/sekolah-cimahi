<?php

namespace App\Http\Controllers;

use App\Helpers\API;
use App\School;
use GuzzleHttp\Client;
use Illuminate\Http\Request;

class AppController extends Controller
{
    public function index()
    {
        $sekolah = School::orderBy('name', 'asc')->get();

        return view('home')->with(compact('sekolah'));
    }

    public function details(Request $request, $school_id)
    {
        $sekolah = School::find($school_id);

//        return $sekolah;

        $client = new Client(['base_uri' => 'https://maps.googleapis.com/maps/api/']);
        $response = $client->request('GET', 'geocode/json?address='. urlencode($sekolah['name']) .','. urlencode($sekolah['address']) .'&key=' . env('GOOGLE_MAPS_API_KEY'));

        $endpoint = json_decode($response->getBody(),true);

        if ($endpoint['status'] == 'ZERO_RESULTS')
        {
            $location['lat'] = 0;
            $location['lng'] = 0;
        }
        else
        {
            $location['lat'] = $endpoint['results'][0]['geometry']['location']['lat'];
            $location['lng'] = $endpoint['results'][0]['geometry']['location']['lng'];
        }

        return view('detail')->with(compact('sekolah','location'));
    }
}
