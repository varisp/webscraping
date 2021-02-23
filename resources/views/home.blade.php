@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

            @if(session()->has('alert'))
            <div class="alert alert-success" role="alert">
                {{session()->get('alert')}}
            </div>

            @endif
            <a href="{{route('posts.create')}}"><button class="btn btn-primary">Create Post</button></a>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Sl.No</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($posts as $post)
                    <tr>
                        <td>{{$post->id}}</td>
                        <td class="overflow"><a href="{{route('posts.show',$post->id)}}">{{$post->title}}</a></td>
                        <td class="overflow">{{$post->description}}</span></td>
                        <td><a href="{{route('posts.edit',$post->id)}}"><button class="btn btn-success">Edit</button></a>
                            <form action="{{route('posts.destroy',$post->id)}}" method="post">@method('delete') @csrf <button class="btn btn-danger" type="submit">delete</button></form>
                         <form action="{{route('posts.destroy', $post->id)}}" method="post">@method('delete')@csrf   <button type="submit" class="btn btn-danger user-delete">Delete</button></form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{$posts->links()}}
        </div>
    </div>
</div>
<script>
$('.user-delete').click(function(e){
    e.preventDefault()
    if(confirm('Are you sure want to Delete?')){        
        $(e.target).closest('form').submit();
    }else{
        $('.user-delete').append('delete function');
    }

});
</script>
@endsection