<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DataTahunan extends Model
{
    protected $table  = 'data_tahunan';

    public function sekolah()
    {
        return $this->belongsTo('App\Sekolah','sekolah_id');
    }
}
