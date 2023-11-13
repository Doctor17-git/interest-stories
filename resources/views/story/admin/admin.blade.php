<x-layout>	
	<x-slot name="title">
		Админ-панель
	</x-slot>
	
	<center>
		<header>Админ-панель</header><br>
		@forelse($stories as $story)
			<div class="spisok_adm"><a href="./admin/{{ $story->id }}">{{ ucfirst($story->hashtags) }}</a></div><br>
		@empty
			<p>Нет историй для проверки...</p>
		@endforelse
		<a href="/" class="btn btn-yellow">Вернуться</a>
	</center>
</x-layout>