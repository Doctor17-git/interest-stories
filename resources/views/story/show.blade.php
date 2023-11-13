<x-layout>	
	<x-slot name="title">
		Интересные истории
	</x-slot>
	
	<center>
		<header>{{ ucfirst($story->hashtags) }}</header><br>
		<div class="spisok">
			<p>{!! $story->story !!}</p>
		</div><br>
		<a href="/" class="btn btn-yellow">Вернуться</a>
	</center>
</x-layout>