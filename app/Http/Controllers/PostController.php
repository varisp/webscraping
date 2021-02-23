<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allPosts(){
        $posts = Post::paginate(10);
        return view('posts.index',compact('posts'));
    }
    public function showPost($id){
        $post = Post::find($id);
        return view('posts.show',compact('post'));
    }
    public function index()
    {
       
        $posts = Post::paginate(10);
       return view('home', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        $request->validate([
            'title' => 'required|max:255',
            'description' => 'required'
        ]);
        Post::create([
            'title' => $request->title,
            'description'=>$request->description
        ]);
        return redirect('home')->with('alert', 'Post added successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('show',compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        return view('edit',compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $request->validate([
            'title' => 'required|max:255',
            'description' => 'required'
        ]);
      $data['title']  =$request->title;
      $data['description'] =  $request->description;        
            $post->update($data);
        return redirect()->back()->with('alert','Post updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        $post->delete();
        return redirect()->back()->with('alert','Post deleted Successfully');
    }
}
