<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
1.	Проверка e-mail
<form method="post" action="mail.php">
	<input type="text" name="input_mail">
	<input type="submit" value="Выполнить">
</form>
<hr>
2.	Удаление HTML-комментариев
<form method="post" action="comments.php">
<textarea style="width:100%" rows="5" name="input_comments"></textarea>
<br>
<input type="submit" value="Выполнить">
</form>
<hr>
3.	Удаление HTML-тэгов
<form method="post" action="tags.php">
<textarea style="width:100%" rows="5" name="input_tags"></textarea>
<br>
<input type="submit" value="Выполнить">
</form>
<hr>
4.	Написать регулярное выражение, выделяющее красным жирным шрифтом все слова с длиной в 5 и более символов, состоящие только из заглавных букв.
<form method="post" action="matches.php">
	<input type="text" name="input_matches">
	<input type="submit" value="Выполнить">
</form>
</body>
</html>