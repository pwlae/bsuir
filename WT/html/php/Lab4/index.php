<?php

    mysql_connect("localhost", "root", "root");
    mysql_select_db("web_technologies");

    require_once "DatabaseFunctions.php";

    $page = file_get_contents("templates/main.tpl");
    //$main_menu = file_get_contents("templates/main_menu.tpl");
    //$news = file_get_contents("templates/news.tpl");
    $main_menu = get_menu("Нет", 0);
    $news = get_news();
    $text = file_get_contents("templates/text.tpl");
    $bottom = file_get_contents("templates/bottom.tpl");
    $config = file_get_contents("site.cfg");

    $position = strpos($config, "main_color");
    $main_color = substr($config, $position + 11, 7);
    $position = strpos($config, "copyright_color");
    $copyright_color = substr($config, $position + 16, 7);

    $page = str_replace("{MAIN_MENU}", $main_menu, $page);
    $page = str_replace("{MAIN_COLOR}", $main_color, $page);
    $page = str_replace("{NEWS}", $news, $page);
    $page = str_replace("{TEXT}", $text, $page);
    $page = str_replace("{BOTTOM}", $bottom, $page);
    $page = str_replace("{COPYRIGHT_COLOR}", $copyright_color, $page);

    $page = str_replace("{HEADER_TITLE}", "Lab 4", $page);

    $page = str_replace("{TODAY_D}", date("d"), $page);
    $page = str_replace("{TODAY_M}", date("m"), $page);
    $page = str_replace("{TODAY_Y}", date("Y"), $page);
    $page = str_replace("{NOW_H}", date("H"), $page);
    $page = str_replace("{NOW_M}", date("i"), $page);
    $page = str_replace("{NOW_S}", date("s"), $page);

    echo $page;
?>
