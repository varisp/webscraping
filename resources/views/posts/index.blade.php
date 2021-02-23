@extends('layouts.apps')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">            
           
        <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Sl.No</th>
                        <th>Title</th>
                        <th>Description</th>
                       
                    </tr>
                </thead>
                <tbody>
                    @foreach($posts as $post)
                    <tr>
                        <td>{{$post->id}}</td>
                        <td class="overflow"><a href="{{url('/show',$post->id)}}">{{$post->title}}</a></td>
                        <td class="overflow"><span class="overflow">{{$post->description}}</span></td>
                        
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{$posts->links()}}
        </div>
    </div>
</div>
@endsection
