@extends('layouts.app')

@section('content')
<div class="container">

    <!-- Create post -->
    <h1 class="text-center my-3 fw-bold ">Edit Profile</h1>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow p-5">
                <form action=" {{ route('updateprofile') }} " method="POST">
                    @csrf
                    <label for="name">Name:</label>
                    <input name="name" id="name" type="text" class="form-control mb-5" value=" {{Auth::user()->name}} " requred>
                    <label for="email">Email:</label>
                    <input name="email" id="email" type="text" class="form-control mb-5" value=" {{Auth::user()->email}} " requred>
                    <button class="btn btn-dark">Submit</button>
                </form>
            </div>
        </div>
    </div>



</div>
@endsection
