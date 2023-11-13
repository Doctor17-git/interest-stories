<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StoryController extends Controller
{
    public function story()
		{
			return view('story.story', [
				'text' => 'Интересные истории',
				'title' => 'Интересные истории',
				'isAuth' => false
			]);
		}
		
	public function admin()
		{
			return view('story.admin.admin', [
				'text' => 'Интересные истории',
				'title' => 'Админ-панель',
				'isAuth' => false
			]);
		}
		
	public function add()
		{
			return view('story.add', [
				'text' => 'Интересные истории',
				'title' => 'Добавить историю',
				'isAuth' => false
			]);
		}
}