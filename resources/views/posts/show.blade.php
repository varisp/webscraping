@extends('layouts.apps')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">


            <div class="container">
                <label for="title"><b>Title</b></label>
                <div>{{$post->title}}</div>
                
                <label for="description"><b>Description</b></label>
                <div>{{$post->description}} </div>
                 
                <div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection