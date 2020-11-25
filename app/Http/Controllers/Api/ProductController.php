<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProduct;
use App\Http\Requests\UpdateProduct;
use App\Http\Resources\ProductCollection;
use App\Models\Product;
use App\Http\Resources\Product as ProductResource;
use Illuminate\Http\Request;
use Symfony\Component\Console\Input\Input;
use Symfony\Component\HttpFoundation\Response;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:sanctum')->except(['index', 'show']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return ProductCollection
     */
    public function index(Request $request)
    {

        return new ProductCollection(Product::paginate( 9, ['*'], 'page', $request->from));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Contracts\Foundation\Application |\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\JsonResponse|\Illuminate\Http\Response
     */
    public function store(StoreProduct $request)
    {
        $loggedInUser = auth()->user();
        if (!$loggedInUser) {
            return response([
                "success" => false,
                "error" => "Sorry, you need to be logged-in to do that.",
                "data" => [],
            ], Response::HTTP_FORBIDDEN);
        }
            $product =  Product::create($request->all());

            if($product){
                return response()->json([
                    'success' => true,
                    'error' => '',
                    'data' => new ProductResource($product),
                ], Response::HTTP_OK);
            }


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Product $product)
    {
        return response()->json([
            'success' => true,
            'error' => '',
            'data' => new ProductResource($product),
        ], Response::HTTP_OK);


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\JsonResponse|\Illuminate\Http\Response
     */
    public function update(UpdateProduct $request, Product $product, $id)
    {

        $loggedInUser = auth()->user();
            if (!$loggedInUser) {
                return response([
                    "success" => false,
                    "error" => "Sorry, you need to be logged-in to do that.",
                    "data" => [],
                ], Response::HTTP_FORBIDDEN);
            }
             if($request->hasFile('image')) {
                $filenameWithExt = $request->file('image')->getClientOriginalName();

                $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);

                $extension = $request->file('image')->getClientOriginalExtension();

                $fileNameToStore = $filename.'_'.time().'.'.$extension;

                $path = $request->file('image')->storeAs('public/images', $fileNameToStore);

                $product = Product::find($id);
                    $product->name = $request->name;
                    $product->sale_price = $request->sale_price;
                    $product->discount = $request->discount;
                    $product->image = $path;
                $product->save();
                    return response()->json([
                        'success' => true,
                        'error' => '',
                        'data' => new ProductResource($product),
                    ], Response::HTTP_OK);
            } else{
                 $product = Product::find($id);
                 $product->name = $request->name;
                 $product->sale_price = $request->sale_price;
                 $product->discount = $request->discount;
                 $product->save();
                 return response()->json([
                     'success' => true,
                     'error' => '',
                     'data' => new ProductResource($product),
                 ], Response::HTTP_OK);
             }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $loggedInUser = auth()->user();
        if (!$loggedInUser) {
            return response([
                "success" => false,
                "error" => "Sorry, you need to be logged-in to do that.",
                "data" => [],
            ], Response::HTTP_FORBIDDEN);
        }else{
            if(!$product->delete()){
                return response([
                    "success" => false,
                    "error" => 'There is an issue deleting the product',
                    "data" =>   new ProductResource($product),
                ], Response::HTTP_INTERNAL_SERVER_ERROR);
            }
            return response([
                "success" => true,
                "message" => 'The product was deleted successfully',
                "data" =>  [],
            ], Response::HTTP_OK);
        }


    }
}
