<x-layout>	
	<x-slot name="title">
		Интересные истории
	</x-slot>
	
	<center>
		<a href="/story/admin" class="btn btn-yellow">Вернуться</a><br>
		<form action="/pub" method="post">
			@csrf
			<input type="hidden" name="last_segment" value="{{ Request::segment(count(Request::segments())) }}">
			<header name="hashtags" id="hashtags">{{ ucfirst($story->hashtags) }}</header><br>
			<div class="spisok">
				<p name="story" id="story">{!! $story->story !!}</p>
			</div><br>
			<input type="checkbox" name="delPost" id="delPost">Удалить?</input>
			<input type="checkbox" name="pubPost" id="pubPost">Опубликовать?</input><br>
			<button type="submit" class="btn btn-yellow">Готово</button>
		</form>
	</center>
</x-layout>