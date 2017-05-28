<?php

namespace App\Http\Controllers;

use App\Helpers\API;
use App\School;
use Illuminate\Http\Request;

class AppController extends Controller
{
    public function index()
    {
        $sekolah = School::orderBy('name', 'asc')->get();

        return view('home')->with(compact('sekolah'));
    }
}
