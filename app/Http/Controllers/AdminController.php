<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sekolah;
use App\Kriteria;
use App\DataTahunan;
use App\Subkriteria;
use App\User;

class AdminController extends Controller //Class AdminController
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index()
    {
        return view('admin.dashboard');
    }
    public function dataSekolah()
    {
        $sekolah = Sekolah::all();
        return view('admin.datasekolah')->withSekolah($sekolah);
    }
    public function tambahSekolah()
    {
        return view('admin.tambahSekolah');
    }
    public function tambahSekolahSubmit(Request $request)
    { //menambah permintaan data sekolah 
        $this->validate($request, array( //mevalidasi perulangan hasil permintaan data sekolah 
        'nama_sekolah' => 'required',
        'alamat' => 'required',
        'jumlah_guru' => 'required',
        // 'gambar' => 'required',
        'visi' => 'required',
        'misi' => 'required',
        'no_telp' => 'required',
        'akreditas' => 'required',
        'latitude' => 'required',
        'longitude' => 'required',
        'link_sekolah' => 'required',
        ));

        $sekolah = new Sekolah;
        $sekolah->nama_sekolah=$request->nama_sekolah;
        $sekolah->alamat=$request->alamat;
        $sekolah->jumlah_guru=$request->jumlah_guru;
        $sekolah->visi=$request->visi;
        $sekolah->misi=$request->misi;
        $sekolah->no_telp=$request->no_telp;
        $sekolah->akreditas=$request->akreditas;
        $sekolah->latitude=$request->latitude;
        $sekolah->longitude=$request->longitude;
        $sekolah->link_sekolah=$request->link_sekolah;
        $sekolah->save();


       return redirect()->back()->withMessage('Berhasil Ditambah'); //data berhasil ditambah

    }
    public function editSekolah($id){
        $sekolah = Sekolah::find($id);
        return view('admin.editSekolah')->withSekolah($sekolah);
    }
    public function editSekolahSubmit(Request $request, $id) //mengedit permintaan data sekolah 
    {
        $this->validate($request, array(
        'nama_sekolah' => 'required',
        'alamat' => 'required',
        'jumlah_guru' => 'required',
        // 'gambar' => 'required',
        'visi' => 'required',
        'misi' => 'required',
        'no_telp' => 'required',
        'akreditas' => 'required',
        'latitude' => 'required',
        'longitude' => 'required',
        'link_sekolah' => 'required',
        ));
        $sekolah = Sekolah::find($id);
        $sekolah->nama_sekolah=$request->nama_sekolah;
        $sekolah->alamat=$request->alamat;
        $sekolah->jumlah_guru=$request->jumlah_guru;
        $sekolah->visi=$request->visi;
        $sekolah->misi=$request->misi;
        $sekolah->no_telp=$request->no_telp;
        $sekolah->akreditas=$request->akreditas;
        $sekolah->latitude=$request->latitude;
        $sekolah->longitude=$request->longitude;
        $sekolah->link_sekolah=$request->link_sekolah;
        $sekolah->save();

        return redirect()->back()->withMessage('Berhasil Diedit');
    }
    public function deleteSekolah($id) //fungsi menghapus data
    {
        $sekolah=Sekolah::find($id);
        $sekolah->delete();
        return redirect()->back()->withMessage('Berhasil Dihapus'); //data terhapus
    }
    public function dataTahunan()
    {
        $tahunan = DataTahunan::all();
        return view('admin.dataTahunan')->withTahunan($tahunan);
    }
    public function tambahTahunan()
    {
        return view('admin.tambahDataTahunan');
    }
    public function tambahTahunanSubmit(Request $request) //menambah permintaan data tahunan 
    {
        $this->validate($request, array(
        'nama_sekolah' => 'required',
        'passing_grade' => 'required|numeric',
        'kuota' => 'required|numeric',
        ));
        $dataTahunan = new DataTahunan;
        $dataTahunan->nama_sekolah=$request->nama_sekolah;
        $dataTahunan->passing_grade=$request->passing_grade;
        $dataTahunan->kuota=$request->kuota;
        $dataTahunan->save();
        return redirect()->back()->withMessage('Berhasil Ditambah');

    }
    public function deleteTahunan($id)
    {
        $tahunan = DataTahunan::find($id);
        $tahunan->delete();
        return redirect()->back()->withMessage('Berhasil Dihapus');
    }
    public function editTahunan($id)
    {
        $tahunan = DataTahunan::find($id);
        return view('admin.editTahunan')->withTahunan($tahunan);
    }
    public function editTahunanSubmit(Request $request, $id)
    {
        $this->validate($request, array(
        'nama_sekolah' => 'required',
        'passing_grade' => 'required|numeric',
        'kuota' => 'required|numeric',
        ));
        $dataTahunan = DataTahunan::find($id);
        $dataTahunan->nama_sekolah=$request->nama_sekolah;
        $dataTahunan->passing_grade=$request->passing_grade;
        $dataTahunan->kuota=$request->kuota;
        $dataTahunan->save();
        return redirect()->back()->withMessage('Berhasil Ditambah');

    }
    public function kriteria()
    {
        $kriteria = Kriteria::all();
        return view('admin.kriteria')->withKriteria($kriteria);
    }
    public function tambahKriteria()
    {
        return view('admin.tambahKriteria');
    }
    public function submitKriteria(Request $request)
    {
        $this->validate($request, array(
        'kriteria' => 'required',
        'jenis_kriteria' => 'required',
        ));
        $kriteria = new Kriteria;
        $kriteria->kriteria=$request->kriteria;
        $kriteria->jenis_kriteria=$request->jenis_kriteria;
        $kriteria->save();
        return redirect()->back()->withMessage('Berhasil Ditambah');
    }
    public function deleteKriteria($id)
    {
        $kriteria = Kriteria::find($id);
        $kriteria->delete();
        return redirect()->back()->withMessage('berhasil dihapus');
    }
    public function editKriteria($id)
    {
        $kriteria = Kriteria::find($id);
        return view('admin.editKriteria')->withKriteria($kriteria);
    }
    public function editKriteriaSubmit(Request $request, $id)
    {
        $this->validate($request, array(
        'kriteria' => 'required',
        'jenis_kriteria' => 'required',
        ));
        $kriteria = Kriteria::find($id);
        $kriteria->kriteria=$request->kriteria;
        $kriteria->jenis_kriteria=$request->jenis_kriteria;
        $kriteria->save();
        return redirect()->back()->withMessage('Berhasil Dirubah');

    }
    public function subkriteria()
    {
        $subkriteria=Subkriteria::all();
        return view('admin.subkriteria')->withSubkriteria($subkriteria);
    }
    public function tambahsubkriteria()
    {
       
        return view('admin.tambahsubkriteria');
    }
    public function submitSubkriteria(Request $request)
    {
        $this->validate($request, array(
            'subkriteria' => 'required',
            'kriteria' => 'required',
            'bb' => 'required',
            'ba' => 'required',
            'nilai' => 'required',
            ));
        $subkriteria=new Subkriteria;
        $subkriteria->subkriteria=$request->subkriteria;
        $subkriteria->kriteria=$request->kriteria;
        $subkriteria->bb=$request->bb;
        $subkriteria->ba=$request->ba;
        $subkriteria->nilai=$request->nilai;
        $subkriteria->save();
        return redirect()->back()->withMessage('Berhasil Ditambah');
    }
    public function editsubkriteria($id)
    {
        $subkriteria=Subkriteria::find($id);
        return view('admin.editsubkriteria')->withSubkriteria($subkriteria);
    }
    public function submiteditsubkriteria(Request $request,$id)
    {
        $this->validate($request, array(
            'subkriteria' => 'required',
            'kriteria' => 'required',
            'bb' => 'required',
            'ba' => 'required',
            'nilai' => 'required',
            ));
            $subkriteria=Subkriteria::find($id);
            $subkriteria->subkriteria=$request->subkriteria;
            $subkriteria->kriteria=$request->kriteria;
            $subkriteria->bb=$request->bb;
            $subkriteria->ba=$request->ba;
            $subkriteria->nilai=$request->nilai;
            $subkriteria->save();
            return redirect()->back()->withMessage('Berhasil Diubah');

    }
    public function deletesubkriteria($id)
    {
        $subkriteria=Subkriteria::find($id);
        $subkriteria->delete();
        return redirect()->back()->withMessage('Berhasil Dihapus');
    }
    public function data_user()
    {
        $user=User::all();
        return view('admin.datatabel')->withUser($user);
    }

   

}
