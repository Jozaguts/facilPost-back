<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProduct;
use App\Http\Requests\UpdateProduct;
use App\Http\Resources\ProductCollection;
use App\Models\Product;
use App\Http\Resources\Product as ProductResource;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api')->except(['index', 'show','update']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return ProductCollection
     */
    public function index()
    {
        return new ProductCollection(Product::paginate(9));
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
    public function update(UpdateProduct $request, Product $product)
    {
//        $loggedInUser = auth()->user();
//        if (!$loggedInUser) {
//            return response([
//                "success" => false,
//                "error" => "Sorry, you need to be logged-in to do that.",
//                "data" => [],
//            ], Response::HTTP_FORBIDDEN);
//        }

        if($product->update($request->all())){
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
                "error" => 'The product was deleted successfully',
                "data" =>  [],
            ], Response::HTTP_INTERNAL_SERVER_ERROR);
        }


    }
}
