<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sekolah;
use App\User;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function sekolah()
    {
       $sekolah=Sekolah::all();
        return view('user.sekolah')->withSekolah($sekolah);
    }
    public function peta()
    {
        $d=Sekolah::all();
        // dd($d);
        return view('user.petasebaransekolah',compact(['d']));
    }

    public function rekomendasi(){
        $daftar = DB::table('sekolah')->get();
        return view ('user.rekomendasi')->with('dftr',$daftar);
    }

    public function lihat($lat, $long){
        return view ('user.rutejalan',['lat'=>$lat,'long'=>$long]);
    }
    
}
