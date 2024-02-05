<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    //


    public function index(){
        return Product::all();
    }


    /** 
    *
    *   @param \Illuminate\Http\Request
    *   @return \Illuminate\Http\Response
    */


    public function store (Request $request){

        $request->validate([

            'name'=>'required',
            'slug'=>'required',
            'price'=>'required',

        ]);

        return Product::create($request->all());

    }


    /**
     *    @param int $id

     * @return \Illuminate\Http\Response
     */
    public function show($id){

        return Product::find($id);
    }

    /** 
    *
    *   @param \Illuminate\Http\Request
    *   @return \Illuminate\Http\Response
    */
    public function update(Request $request, $id){

        $product=Product::find($id);
        $product->update($request->all());
        return $product;
    }


    /** 
    *
    *   @param int $id
    *   @return \Illuminate\Http\Response
    */

    public function destroy($id){
        return Product::destroy($id);
    }


/** 
    *
    *   @param int $name
    *   @return \Illuminate\Http\Response
    */

    public function search($name){
        return Product::where('name','like', '%'.$name.'%')->get();
    }


}
