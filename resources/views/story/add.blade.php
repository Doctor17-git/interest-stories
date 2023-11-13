<x-layout>	
	<x-slot name="title">
		Интересные истории
	</x-slot>
	
	<center>
		<header>Добавить пост</header><br>
	</center>
		<form action="/post" method="post">
			@csrf
			<h3>Хештеги</h3>
			<center>	
				<input type="text" id="hashtags" name="hashtags" placeholder="#тег1 #тег2 ..." class="spisok_adm" required></input><br>
			</center>
				<h3>О чем ваш пост?</h3>
			<center>	
				<textarea class="spisok_add" name="story" id="story" placeholder="Здесь ваша история..." rows="" required></textarea><br>
				<button type="submit" class="btn btn-yellow">Отправить</button>
				<a href="/" class="btn btn-yellow">Вернуться</a>
			</center>
		</form>
</x-layout>