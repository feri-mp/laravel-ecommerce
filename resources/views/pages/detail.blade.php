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

                

              
                   <div class="col-md-3">
                     <div class="list-product">
                       <div class="header-prod">
                          <img src="{{ asset('asset/products/'.$detail->thumbnail) }}" class="rounded mx-auto d-block img-fluid" alt="...">
                       </div>
                       <div class="title">
                       <p>{{ $detail->description }}</p>
                         <p>Rp {{ number_format($detail->price, 0,',','.')}}</p>
                         <p><a class="nav-link" href="">buy</a></p>
                       </div>
                     </div>
                   </div>
            

                </div>
            </div>
         </div>
       </div>
     </div>
   </div>
@endsection