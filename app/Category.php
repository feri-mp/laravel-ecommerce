<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Eloquent;
use App\ProductHome;

class Category extends Model
{
    protected $guarded = [];

    protected $table = 'category';
    protected $primarykey = 'id';

    public function Products()
    {
        return $this->belongsToMany('App\ProductHome');
    }
}
