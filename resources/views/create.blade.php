@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">


            @if($errors->any())
            @foreach($errors->all() as $error)
            <ul class="alert alert-danger" role="alert">
                <li> {{$error}}</li>
            </ul>

            @endforeach
            @endif
            <form action="{{route('posts.store')}}" method="POST">
                @csrf
                <div class="container">
                    <label for="title"><b>Title</b></label>
                    <input type="text" class="form-control" name="title">
                    <label for="description"><b>Description</b></label>
                    <textarea class="form-control" rows = "10" cols="50" name="description"></textarea><br>
                    <button class="btn btn-primary" type="submit">Submit</button>
                </div>
            </form>

        </div>
    </div>
</div>
@endsection