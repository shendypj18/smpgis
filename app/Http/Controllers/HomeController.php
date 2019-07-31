<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sekolah;
use App\User;
use DB;
use Auth;

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

    public function perhitungan()
    {
       
        $latitude1 = Auth::user()->latitude;
        $longitude1 = Auth::user()->longitude;
        #dd($latitude);
        $sekolah = Sekolah::orderBy('id', 'DESC')->first();
        $bobot = 0;
        #dd($sekolah);
         for($n = 2 ; $n<=$sekolah->id; $n++){
            $latitude2 = Sekolah::where('id',$n)->value('latitude');
            $longitude2 = Sekolah::where('id',$n)->value('longitude');
            
            #dd($latitude2[$n]);
            #$latitude2 = -7.943795;
            #$longitude2 = 112.659256;
            
    
            $dataJson = file_get_contents("https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins=".$latitude1.",".$longitude1."&destinations=".$latitude2.",".$longitude2."&key=AIzaSyDP3Pgxfyxnzmop6amI-Un99r3MYjapD_4");
            $data = json_decode($dataJson,true);
            #dd($data);
            $nilaiJarak = $data['rows'][0]['elements'][0]['distance']['value']; 
           # echo $n;
  
         
            if ($nilaiJarak>0 && $nilaiJarak<=3000){
                $bobot = 5;
            } elseif($nilaiJarak>3000 && $nilaiJarak<=6000){
                $bobot = 4;
            } elseif($nilaiJarak>6000 && $nilaiJarak<=9000){
                $bobot = 3;
            } elseif($nilaiJarak>9000 && $nilaiJarak<=12000){
                $bobot = 2;
            } else {
                $bobot = 1;
            }
            echo '<br>Jarak : '.$nilaiJarak.' meter dan bobotnya : '.$bobot ;
            #dd($nilaiJarak);
            }
       
       
        # $bobot = array(0.30,0.40,0.30);

       # $cost =  null ;

    }
    
}
