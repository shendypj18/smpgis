<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Sekolah;
use App\User;
use App\Subkriteria;
use DB;
use Auth;
use App\DataTahunan;
set_time_limit(0);
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
        return view('user.beranda');
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
        $lat_user = Auth::user()->latitude;
        $long_user = Auth::user()->longitude;
        $sekolah = Sekolah::all();
        $data = [];
        $data2 = [];
        $rata2 = [];
        $rata = [];
        foreach ($sekolah as $key => $value) {
            $rata [] = [
            'nilai' => $this->jarak($value->latitude,$value->longitude),
            ];
            $data2 []= [
            'bobot_jarak' => $this->bobot($rata[$key]['nilai']),
            ];
        }
        $view = $data2;
        foreach($view as $data2){
            $rata2[] = $data2['bobot_jarak'];
            // $data3 = $data2['bobot_jarak'];
           
            // dd($rata2);
        }
      
      
        // dd($nilai_min);
        
        foreach ($sekolah as $key => $value) {
            $data3 = $this->bobot($rata[$key]['nilai']);
            $nilai_min = min($rata2) / $data3 ;
            // dd($data3);
            $data[] = [
                'nama_sekolah' => $value->nama_sekolah,
                'lat' => $value->latitude,
                'long' => $value->longitude,
                'value' => $rata[$key]['nilai'],
                'bobot' => $this->bobot($rata[$key]['nilai']),
                'kuota' => $value->DataTahunan->kuota,
                'b_kuota' => $this->bobot_kuota($value->DataTahunan->kuota),
                'grade' => $value->DataTahunan->passing_grade,
                'b_grade' => $this->nilaiUn($value->DataTahunan->passing_grade),
                'n_jarak' => $nilai_min,
                'n_kuota' => $this->max_kuota($this->bobot_kuota($value->DataTahunan->kuota)),
                'n_grade' => $this->max_grade($this->nilaiUn($value->DataTahunan->passing_grade)),
                'h_kuota' => $this->h_kuota($this->max_kuota($this->bobot_kuota($value->DataTahunan->kuota))),
                'h_grade' => $this->h_grade($this->max_grade($this->nilaiUn($value->DataTahunan->passing_grade))),
                'h_jarak' => $this->h_jarak($nilai_min),
                'hasil' => $this->h_jarak($nilai_min) + $this->h_kuota($this->max_kuota($this->bobot_kuota($value->DataTahunan->kuota))) + $this->h_grade($this->max_grade($this->nilaiUn($value->DataTahunan->passing_grade))),
                
                
               
            ];
        }
        $view = $data;
        $urut = array_column($view,'hasil');
        
        array_multisort($urut, SORT_DESC, $view);
       
        // dd($view);
        
    //    return json_encode($view);
        return view('user.perhitungan')->with([
            'view' => $view
        ]);
         
    }
  
    public function jarak($lat,$long)
    {
        $lat_user = Auth::user()->latitude;
        $long_user = Auth::user()->longitude;
        $jarak = file_get_contents("https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins=".$lat_user.",".$long_user."&destinations=".$lat.",".$long."&key=AIzaSyBt6a6dy99jZcyrlIe7OghOsZ0khO1x4O8");
        $final = json_decode($jarak,true);
        return $final['rows'][0]['elements'][0]['distance']['value'];
    }
    public function bobot($jarak)
    {
       $subkriteria = Subkriteria::All();
       $data = [];
       $rata = [];
        foreach ($subkriteria as $key => $value) {
            $data[] = [
                'jarak' => $value->ba,
            ];
        }
        $view = $data;
        foreach($view as $data){
            $rata[] = $data['jarak'];
        }
        $data = $jarak;
        // dd($rata[0]);
        if ($data >=0 && $data<=$rata[0]){
            return 1;
        } elseif($data > 3000 && $data<$rata[1]){
           return 2;
        } elseif($data > 6000 && $data<=$rata[2]){
            return 3;
        } elseif($data > 9000 && $data <=$rata[3]){
            return 4;
        } else {
            return 5;
        }
       
    }
    public function bobot_kuota($kuota)
    {
        $data = $kuota;
        if ($data >= 350){
            return 5;
        } elseif($data >= 250 && $data < 350){
           return 4;
        } elseif($data >= 200 && $data < 250){
            return 3;
        } elseif($data >= 100 && $data < 200){
            return 2;
        } else {
            return 1;
        }
    }
    
    public function nilaiUn($grade)
    {
        $b_indo = Auth::user()->b_indo;
        $mtk = Auth::user()->mtk;
        $ipa = Auth::user()->ipa;
        $t_un = $b_indo + $mtk + $ipa;
        $data = $grade - $t_un ;
        if ($data >= 10){
            return 5;
        } elseif($data >= 1 && $data < 10){
           return 4;
        } elseif($data == 0){
            return 3;
        } elseif($data <= -1 && $data > -10){
            return 2;
        } elseif ($data <= -10) {
            return 1;
        }
    }
    public function max_kuota($b_kuota)
    {   
        $sekolah = Sekolah::all();
        $data = [];
        $rata = [];
        foreach ($sekolah as $key => $value) {
            $data[] = [
                'b_kuota' => $this->bobot_kuota($value->DataTahunan->kuota),
            ];
        }
        $view = $data;
        foreach($view as $data){
            $rata[] = $data['b_kuota'];
        }
       
        $nilai_max =  $b_kuota / max($rata) ;
        // dd($rata);
        return $nilai_max;
    }
    public function max_grade($b_grade)
    {   
        $sekolah = Sekolah::all();
        $data = [];
        $rata = [];
        foreach ($sekolah as $key => $value) {
            $data[] = [
                'b_grade' =>  $this->nilaiUn($value->DataTahunan->passing_grade),
            ];
        }
        $view = $data;
        foreach($view as $data){
            $rata[] = $data['b_grade'];
        }
       
        $nilai_max =  $b_grade / max($rata) ;
        // dd($rata);
        return $nilai_max;
    }
    // public function min_jarak($b_jarak)
    // {   
    //     $sekolah = Sekolah::all();
    //     $data = [];
    //     $rata = [];
    //     foreach ($sekolah as $key => $value) {
    //         $data[] = [
    //             'b_jarak' => $this->bobot($this->jarak($value->latitude,$value->longitude)),
    //         ];
    //     }
    //     $view = $data;
    //     foreach($view as $data){
    //         $rata[] = $data['b_jarak'];
    //     }
       
    //     $nilai_max = min($rata) /  $b_jarak ;
    //     // dd($rata);
    //     return $nilai_max;
    // }
    public function h_kuota($max_kuota)
    {
        $nilai = $max_kuota;
        $hasil = ($nilai * 0.10) * 100;
        return $hasil;
    }
    public function h_grade($max_grade)
    {
        $nilai = $max_grade;
        $hasil = ($nilai * 0.20) * 100;
        // dd($max_grade);
        return $hasil;
    }
    public function h_jarak($min_jarak)
    {
        $nilai = $min_jarak;
        $hasil = ($nilai * 0.7) * 100;
        return $hasil;
    }
   
    // public function perangkingan()
    // {
    //     # code...
    // }
    
}