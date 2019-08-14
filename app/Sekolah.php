<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sekolah extends Model
{
    protected $table='sekolah';

    public function datatahunan()
    {
        return $this->hasOne('App\DataTahunan','sekolah_id');
    }
}
