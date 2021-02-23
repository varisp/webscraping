@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

            @if(session()->has('alert'))
            {{session()->get('alert')}}
            @endif
            @if($errors->any())
            @foreach($errors->all() as $error)
            {{$error}}
            @endforeach
            @endif
            <form action="{{route('posts.update', $post->id)}}" method="POST">
                @csrf
                @method('PUT')
                <div class="container">
                    <label for="title"><b>Title</b></label>
                    <input type="text" class="form-control" name="title" value="{{$post->title}}">
                    <label for="description"><b>Description</b></label>
                    <textarea class="form-control" rows = "10" cols="50" name="description">{{$post->description}}</textarea><br>
                    <button class="btn btn-primary" type="submit">Submit</button>
                </div>
            </form>

        </div>
    </div>
</div>
@endsection