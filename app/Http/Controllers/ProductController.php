<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Product;

class ProductController extends Controller
{
    public function index()
    {
        $allproducts = DB::table('product')->get();
        $categories = DB::table('category')->get();
        return view('pages/home', compact('allproducts','categories'));
    }

    public function categori($slug)
    {
        
        $categories = DB::table('category')->get();
        $category = DB::table('product')
            ->join('category', 'product.category_slug', '=', 'category.slug')
            ->select('product.*','category.id','category.category_name',
            'category.slug')->where('product.category_slug','=',$slug)->get();

            
        return view('pages/category',compact('categories','category'));
    }

    public function details($slug_prod)
    {
        $categories = DB::table('category')->get();
        $detail = DB::table('product')
            ->join('category', 'product.category_slug', '=', 'category.slug')
            ->select('product.*','category.id','category.category_name',
            'category.slug')->where('product.slug_prod','=',$slug_prod)->first();

        return view('pages/detail',compact('detail','categories'));
        
    }
}
