<?php 
mysql_connect ("localhost", "root", "") or die ('Ошибка соединения!');
mysql_select_db ("BSUIR") or die ('Ошибка подключения к БД');

	function load_news(){
		$num = 4;
		$query = mysql_query ("SELECT * FROM `news` where DATE < '2015-05-07' ORDER BY date DESC"); 
		$result = array();
		while ($record = mysql_fetch_array ($query,MYSQL_ASSOC)){
			$result[] = $record;
			}
		$news = "<td width=\"30%\">
		<h4 style=\"margin-top:10px\">Новости</h4>
		<ul class=\"newsmenu\">";
		foreach($result as $record)
		if ($num > 0) 
			{		
			$num--;
			$date = $record['DATE'];
			$header = $record['HEADER'];
			$content = $record['CONTENT'];
			$news .= "<li><span class=\"date\">$date</span><br /><Strong><a href=\"#\">$header</a></strong><br>$content</li>";
			}	
		$news .= "</ul></td>";
		return $news;
}		

function load_menu($enter_id,$level){
	$sql = "SELECT * FROM pages WHERE parent_id = ";
	$param = mysql_query ("$sql \"$enter_id\""); 
	if ($level == 0){
		$menu .= "<ul class=\"mainmenu\">";
		}
	while ($record = mysql_fetch_array ($param)){
		$id = $record['ID'];
		$text = $record['TEXT'];
		$query2 = mysql_query ("$sql \"$id\"");
		$menu .= "<li><a href=\"./#\">$text</a>";
		if (mysql_num_rows($query2) != 0){
			$level++;	
			$menu .= "<ul class=\"mainmenuin$level\">";
			$menu .= load_menu($id,$level);
			$level--;			
		}
		$menu .= "</li>";
		}	
	$menu .= "</ul>";
	if (!$param) {
		str_replace("<ul class=\"mainmenuin$level\"></ul>","<br>", $menu);
		}
	return $menu;
}		

$template = file_get_contents('templates/main.tpl'); 
$main_menu = load_menu("0",0);
$news = load_news();

$template = str_replace('{HEADER_TITLE}', 'LR3', $template);
$template = str_replace('{MAIN_MENU}', $main_menu, $template);
$template = str_replace('{CONTENT}', file_get_contents('templates/content.tpl'), $template);
$template = str_replace('{NEWS}', $news, $template);
$template = str_replace('{FOOTER}', file_get_contents('templates/footer.tpl'), $template);
$myfile = fopen("site.cfg", "r");
$main_color = str_replace("main_color = ", "bgcolor=", fgets($myfile));
$copyright_color = str_replace("copyright_color = ", "bgcolor=", fgets($myfile));
fclose($myfile);
$main_color =  substr($main_color, 3);
$template = str_replace('{MAIN_COLOR}', $main_color, $template);
$template = str_replace('{COPYRIGHT_COLOR}', $copyright_color, $template);
$template = str_replace('{TODAY_D}', date("j"), $template);
$template = str_replace('{TODAY_M}', date("n"), $template);
$template = str_replace('{TODAY_Y}', date("Y"), $template);
$template = str_replace('{NOW_H}', date("G"), $template);
$template = str_replace('{NOW_M}', date("i"), $template);
$template = str_replace('{NOW_S}', date("s"), $template);

echo $template;