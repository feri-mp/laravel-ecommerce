<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Eloquent;
use App\Category;

class ProductHome extends Model
{
    protected $table = 'product';
    protected $primaryKey = 'id';
    protected $fillable = ['category_id','product_name','slug','price','description','thumbnail'];


    public function category($slug)
    {
        return $this->belongsToMany('App\Category');
    }

}
