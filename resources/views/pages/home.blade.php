@extends('base')


@section('content')

   <div class="our-product">
     <div class="container">
       <div class="row">
         <div class="col-md-3">
           <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">
                  <div class="float-left">CATEGORY</div>
                  <div class="float-right">SHOW ALL</div>
                </li>
              </ol>
            </nav>
            <div class="cat">
                <ul class="nav flex-column">
                    @foreach($categories as $categori)
                      <li class="nav-item">
                        <a class="nav-link" href="{{ route('category.categori', ['category' => $categori->slug]) }}">{{ $categori->category_name }}</a>
                      </li>
                    @endforeach
                </ul>
            </div>
         </div>
         <div class="col-md-8">
            <h2 class="title-prod p-2 mb-2">PRODUCT</h2>
            <div class="prouct">
                <div class="row">

                @foreach( $allproducts as $products)
                   <div class="col-md-3">
                     <div class="list-product">
                       <div class="header-prod">
                          <img src="{{ asset('asset/products/'.$products->thumbnail) }}" class="rounded mx-auto d-block img-fluid" alt="...">
                       </div>
                       <div class="title">
                         <p>{{str_limit($products->description, 30)}}</p>
                         <p>Rp {{ number_format($products->price, 0,',','.') }}</p>
                         <p><a class="nav-link" href="{{ route('detail.details',['detail' => $products->slug_prod]) }}">detail</a></p>
                       </div>
                     </div>
                   </div>
                @endforeach

                  
                </div>
            </div>
         </div>
       </div>
     </div>
   </div>
@endsection