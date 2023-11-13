<x-layout>	
	<x-slot name="title">
		Интересные истории
	</x-slot>
	
	<center>
		<header>Интересные истории</header><br>
		<a href="/story/admin" class="btn btn-yellow">Войти в админку</a>
		<a href="/story/add" class="btn btn-yellow">Добавить пост</a><br>
		<div class="spisok">
		@forelse($stories as $story)
			<ul>
				<li><a href="./{{ $story->id }}">{{ ucfirst($story->hashtags) }}</a></li>
			</ul>
		@empty
			<p>Историй нет...</p>
		@endforelse
		</div>
	</center>
</x-layout>