<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Product;
use App\Models\ProductImage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Image;


class ProductsController extends Controller
{
    public function index()
    {
        $products = Product::orderBy('id', 'desc')->paginate(3);
        return view('frontend.pages.product.index')->with('products', $products);
    }
    public function show($slug)
    {
       $product = Product::where('slug', $slug)->first();
       if(!is_null($product)){
           return view('frontend.pages.product.show', compact('product'));
       }
       else{
           session()->flash('errors', 'Sorry!! There is no product by this URL..');
           return redirect()->route('products');
       }
    }
}
