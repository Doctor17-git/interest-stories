<?php

namespace App\Http\Controllers;

use App\Models\StoryPost;
use App\Models\StoryPostAdmin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StoryPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stories = StoryPost::all();
		return view('story.story', [
			'stories' => $stories,
		]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('story.add');
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
            'hashtags' => 'required',
            'story' => 'required',
            ]);
        $post = new StoryPost();
        $post->hashtags = $request->hashtags;
        $post->story = $request->story;

        $post->save();
        return redirect('/')->with('success','Post created successfully!');
    }
	
	public function storeNew(Request $request)
    {
        $request->validate([
            'hashtags' => 'required',
            'story' => 'required',
            ]);
        $post = new StoryPostAdmin();
        $post->hashtags = $request->hashtags;
        $post->story = $request->story;

        $post->save();
        return redirect('/')->with('success','Post created successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\StoryPost  $storyPost
     * @return \Illuminate\Http\Response
     */
    public function show(StoryPost $storyPost)
    {
        return view('story.show', [
			'story' => $storyPost
		]);
    }
	
	public function showAdmin(StoryPostAdmin $storyPost)
	{
		$stories = StoryPostAdmin::all();
		return view('story.admin.admin', [
			'stories' => $stories,
		]);
	}
	
	public function showAdminPost(StoryPostAdmin $storyPostAdmin)
	{
		return view('story.admin.show', [
			'story' => $storyPostAdmin,
		]);
	}

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\StoryPost  $storyPost
     * @return \Illuminate\Http\Response
     */
    public function edit(StoryPost $storyPost)
    {
        return view('story.admin.admin', [
			'story' => $storyPost,
		]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\StoryPost  $storyPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, StoryPost $storyPost)
    {
        $blogPost->update([
            'hashtags' => $request->hashtags,
            'story' => $request->story
        ]);

        return redirect('/story/admin' . $storyPost->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\StoryPost  $storyPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(StoryPost $storyPost)
    {
        $blogPost->delete();

        return redirect('/');
    }
	
	public function pub(StoryPost $storyPost, StoryPostAdmin $storyPostAdmin, Request $request)
	{
		$delete = $request->has('delPost');
		$publish = $request->has('pubPost');
		$last_segment = $request->input('last_segment');
		
		if($delete) {
			StoryPostAdmin::where('id', $last_segment)->delete();
			return redirect('/story/admin');
		} elseif($publish) {
			$oldPost = StoryPostAdmin::find($last_segment);
			$post = new StoryPost();
			$post->hashtags = $oldPost->hashtags;
			$post->story = $oldPost->story;

			$post->save();
			$oldPost->delete();
			return redirect('/');
		}
	}
}
