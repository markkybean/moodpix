@extends('layouts.app')

@section('content')
<div class="container">

    <!-- Create post -->
    <h1 class="text-center my-3">Hello, <span class="fw-bold">{{ Auth::user()->name}}</span></h1>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow">
                <div class="card-body p-5">
                    <form action=" {{ route('createpost') }} " method="POST">
                    @csrf
                        <input class="form-control" type="text" placeholder="Share your current mood in just one Pix!">
                        <button type="submit" class="btn btn-dark mt-2 float-end">Share Mood</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Posts -->

    <div class="mt-5 row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body p-4">
                    <span class="fw-bold">Mark Santos <button class="float-end btn btn-secondary btn-sm" href="#">Delete</button></span>
                    <br><small>a few minutes ago</small>
                    <p class="mt-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias similique ad voluptatibus soluta rem sit laudantium hic tempore nam excepturi, tempora iusto, reiciendis nihil, id minus unde! Quo, vel iure?</p>

                    <div class="card mb-3">
                        <div class="card-body">
                            <input class="form-control" type="text" placeholder="Write a comment">
                            <button class="btn btn-dark btn-sm mt-2 float-end">Submit</button>
                        </div>
                    </div>
                 

                    <!-- comments -->
                    <div class="mt-2 card px-3 py-1" style="font-size: 12px;">                      
                        <span class="fw-bold mt-2">Mark Santos</span>
                        <small>a few minutes ago</small>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias similique ad voluptatibus soluta rem sit laudantium hic tempore nam excepturi, tempora iusto, reiciendis nihil, id minus unde! Quo, vel iure?</p>
                    </div>
                    <div class="mt-2 card px-3 py-1" style="font-size: 12px;">                      
                        <span class="fw-bold mt-2">Mark Santos</span>
                        <small>a few minutes ago</small>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias similique ad voluptatibus soluta rem sit laudantium hic tempore nam excepturi, tempora iusto, reiciendis nihil, id minus unde! Quo, vel iure?</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
@endsection
