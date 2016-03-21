<html>
<head>
    <title>Lab 5</title>
</head>
<body>
<?php
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
?>

<?php

    echo "<h3>Email regex</h3>";

    $email_regex = "/^[0-9a-z]+[-\._0-9a-z]*@[0-9a-z]+[-\._^0-9a-z]*[0-9a-z]+[\.]{1}[a-z]{2,6}$/";

    $email_list = array("vasya-pupkin@mail.com", "vasya_pupkin@mail.com", "vasya.pupkin@mail.com",
        "v.v.pupkin@firma.mail.com", "v.v.pupkin@firma-mail.com", "v.v.pupkin12@firma_mail.com",
        "v.v.pupkin-director@firma.mail.com", "-vasya--pupkin@mail.com", "vasya_pupkin@mail..com",
        "v.v.pup kin@firma.mail.com", "v.v.pup#kin@firma-mail.com_");

    foreach ($email_list as $email) {
        echo "$email is " . (preg_match($email_regex, $email) ? "valid" : "invalid") . "<br>";
    }

    echo "<h3>HTML comments regex</h3>";

    $html_comments_regex = "/<!--[^>]*-->/";

    $html = "
    <!-- This is a comment -->
    <p>This is a paragraph.</p>
    <!-- Remember to add more information here -->
    <!--[if IE]>
        <link href='/css/invstroyIEfix.css' rel='stylesheet' type='text/css' />
    <![endif]-->";

    echo htmlspecialchars(preg_replace('/<!--[^>]*-->/', "", $html));

    echo "<h3>HTML tags regex</h3>";

    $html = "
    <tr>
        <td align='center' width='80%' bgcolor='#0400b0' class='bottomline'>
        &copy; 2007-2008, Название фирмы.<br />
        Тел. 111-22-33, адрес: ул. Имени-кого-то, дом.999
        </td>
    </tr>";

    echo preg_replace("/<[^>]*>/", "", $html);

    echo "<h3>5+ letter words regex</h3>";

    $text = "THIS IS JOHN SMITH. HE'S COLOMBIAN BUt HE LIVES y IN BRAZIL. HE IS A PRISONER. MR SMITH IS 33 YEARS OLD.
        HE DOES WORK OR STUDY. MR SMITH CANNOT READ OR WRITE BUT I he CAN PLAY THE GUITAR VERY WELL.
        HE PLAYS THE GUITAR EVERY DAY AT 6:30 PM AFTER DINNER. THE OTHER PRISONERS ALL LIKE HIS MUSIC.
        MR SMITH LIKES POP ROCK BUT HE DOES U LIKE SAMBA.";

    $array = str_split($text);

    echo preg_replace("/(\b[A-Z][A-Z]?\b)/", "<span style='color:blue'>$1</span>", $text);

//    for($i=0; $i<count($array); $i++) {
 //       echo preg_replace("/([A-Z]{1,)/", "<span style='color:red'>$1</span>", $array[$i]);
 //   }

?>
</body>
</html>
