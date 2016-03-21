<?php

    mysql_connect("localhost", "root", "root") or die ('Error: cannot connect to mysql server');
    mysql_select_db("web_technologies") or die ('Error: cannot connect to mysql database');
    //mysql_set_charset('cp1251');

    function sorta($a, $b)
    {
        if ($a['news_date'] < $b['news_date'])
            return 1;
        if ($a['news_date'] < $b['news_date'])
            return -1;
        return 0;
    }

    function get_news($count = 5)
    {
        $query = mysql_query("Select * from news");
        $stack = array();
        while ($row = mysql_fetch_array($query, MYSQL_ASSOC)) {
            $stack[] = $row;
        }

        usort($stack, 'sorta');

        $news_title = 'Наши новости';
        $news_link = 'http://www.somesite.com/rss/';
        $news_descr = 'Самые свежие в мире новости у нас!';
        $page = '<?xml version="1.0" encoding="windows-1251" ?>
				 <rss version="2.0">
				  <channel>
				  <title>' . $news_title . '</title> 
				  <link>' . $news_link . '</link> 
				  <description>' . $news_descr . '</description> ';
        $i = 0;
        foreach ($stack as $row) {

            $id = $row['news_id'];
            $date = $row['news_date'];
            $title = $row['news_descr'];
            
            if ($i == 0){
                $title = "Новые поступления глушителей для автомобилей Volkswagen";
                $date = "03-12-2015";}
            else if ($i == 1){
                $title = "Скидки на всё к 25 декабря";
                $date = "02-12-2015";}
            else if ($i == 2){
                $title = "Скидки на всё к 1 января";  
                $date = "01-12-2015";}            
            else if ($i == 3){
                $title = "Новые поступления карбюраторов";
                $date = "30-11-2015";}
            else if ($i == 4){
                $title = "Новые поступления автомобилей";
                $date = "29-11-2015";}
                
            $descr = $row['news_text'];
            $link = 'http://www.somesite.com/news/newsid';

            $page .= "\n" . "\n" . '<item>';
            $page .= "\n" . '<title>' . $title . '</title>';
            $page .= "\n" . '<link>' . $link . $id . '/</link>';
            $page .= "\n" . '<description>' . $descr . '</description>';
            $page .= "\n" . '<comments>' . $link . $id . '/</comments>';
            $page .= "\n" . '<pubDate>' . $date . '</pubDate>';
            $page .= "\n" . '<guid>' . $link . $id . '/</guid>';
            $page .= "\n" . '</item>';

            $i++;
        }
        $page .= "\n" . "\n" . '</channel>' . "\n" . '</rss>';
        return nl2br(htmlspecialchars($page));
    }


    function get_menu($enter_title, $level)
    {
        $sql = "SELECT * FROM pages WHERE pages_parent = ";
        $query = mysql_query("$sql \"$enter_title\"");

        if ($level == 0) {
            $page .= "<ul class=\"mainmenu\">";
        }

        while ($row = mysql_fetch_row($query)) {
            $title = $row['pages_text'];
            $query2 = mysql_query("$sql \"$title\"");

            $page .= "<li><a href=\"/catalog/\">$title</a>";

            if (mysql_num_rows($query2) != 0) {
                $level++;
                $page .= "<ul class=\"mainmenuin$level\">";
                $page .= get_menu($title, $level);
                $level--;
            }

            echo "</li>";
        }

        $page .= "</ul>";
        if (!$query) {
            str_replace("<ul class=\"mainmenuin$level\"></ul>", "<br>", $page);
        }
        return $page;
    }

?>
