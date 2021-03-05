<?php

namespace App\Http\Controllers\Backend;

use App\Models\Brand;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Image;
use File;


class BrandsController extends Controller
{


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $brands = Brand::orderBy('id', 'desc')->get();
        return  view('backend.pages.brands.index', compact('brands'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.pages.brands.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'image' => 'nullable|image',


        ],
            [
                'name.required' => 'Please provide a brand name',
                'image.image' => 'Please provide a valid image with .jpg, .png, .gif .jpeg extension' ,
            ]);

        $brand = new Brand();
        $brand->name = $request->name;
        $brand->description = $request->description;


        //insert that image
        if(($request->image) > 0) {
            $image = $request->file('image');
            $img = time() . '.' . $image->getClientOriginalExtension();
            $location = public_path('images/brands/' . $img);
            Image::make($image)->save($location);
            $brand->image = $img;


        }
        $brand->save();
        session()->flash('success', 'A new Brand has added successfully!!');

        return redirect()->route('admin.brands');
    }


    public function edit($id)
    {

        $brand = Brand::find($id);
        if(!is_null($brand)){
            return view('backend.pages.brands.edit', compact('brand'));
        }
        else{
            return redirect()->route('admin.brands');
        }
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'image' => 'nullable|image',


        ],
            [
                'name.required' => 'Please provide a brand name',
                'image.image' => 'Please provide a valid image with .jpg, .png, .gif .jpeg extension' ,
            ]);

        $brand = Brand::find($id);
        $brand->name = $request->name;
        $brand->description = $request->description;


        //insert that image
        if(($request->image) > 0) {

            //Delete the old images from folder

            if(File::exists('images/brands/'.$brand->image)){
                File::delete('images/brands/'.$brand->image);
            }
            $image = $request->file('image');
            $img = time() . '.' . $image->getClientOriginalExtension();
            $location = public_path('images/brands/' . $img);
            Image::make($image)->save($location);
            $brand->image = $img;
        }
        $brand->save();
        session()->flash('success', 'Brand has updated successfully!!');

        return redirect()->route('admin.brands');
    }


    public function delete($id)
    {
        $brand = Brand::find($id);
        if(!is_null($brand)) {
            //Delete brand image

            if(File::exists('images/brands/'.$brand->image)){
                File::delete('images/brands/'.$brand->image);
            }
            $brand->delete();
        }
        session()->flash('success', 'Brand has deleted successfully!');
        return back();
    }

}
