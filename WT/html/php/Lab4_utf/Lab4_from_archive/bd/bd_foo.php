<?php

    mysql_connect("localhost", "root", "root") or die ('Error: cannot connect to mysql server');
    mysql_select_db("iit_vt") or die ('Error: cannot connect to mysql database');
    mysql_set_charset('cp1251');

    function sorta($a, $b)
    {
        if ($a['news_date'] < $b['news_date'])
            return 1;
    }

    function get_news()
    {
        $count = 5;
        $query = mysql_query("Select * from news");
        $stack = array();
        while ($row = mysql_fetch_array($query, MYSQL_ASSOC)) {
            $stack[] = $row;
        }

        usort($stack, 'sorta');
        //print_r($stack);
        $page = "<td width=\"30%\">
	<h4 style=\"margin-top:10px\">Новости</h4>
	<ul class=\"newsmenu\">";
        foreach ($stack as $row)
            if ($count > 0) {
                $count--;
                $date = $row['news_date'];
                $descr = $row['news_descr'];

                $page .= "<li><span class=\"date\">$date</span><br />
				<a href=\"#\">$descr</a>
			  </li>	";

            }
        $page .= "</ul></td>";
        return $page;
    }

    function get_menu($enter_title, $level)
    {
        $sql = "SELECT * FROM pages WHERE pages_parent = ";
        $query = mysql_query("$sql \"$enter_title\"");

        if ($level == 0) {
            @$page .= "<ul class=\"mainmenu\">";
        }

        while ($row = mysql_fetch_array($query)) {
            $title = $row['pages_text'];
            $query2 = mysql_query("$sql \"$title\"");

            @$page .= "<li><a href=\"/catalog/\">$title</a>";

            if (mysql_num_rows($query2) != 0) {
                $level++;
                $page .= "<ul class=\"mainmenuin$level\">";
                $page .= get_menu($title, $level);
                $level--;
            }

            echo "</li>";
        }

        @$page .= "</ul>";
        if (!$query) {
            str_replace("<ul class=\"mainmenuin$level\"></ul>", "<br>", $page);
        }
        return $page;
    }

?>