<!DOCTYPE html>
<html>
<head>
    <title>Lab2</title>
</head>
<body>


    echo php_uname();
    echo "<br><br>";

    $int = 19;
    $string = "Description";
    $float = 5.2;
    $bool = false;
    $array = array($int, $string, $float, $bool);
    echo "Integer variable: $int<br>";
    echo "String variable: $string<br>";
    echo "Float variable: $float<br>";
    echo "Boolean variable: $bool<br>";
    echo "Array variable: $array<br>";



    $a = 555;
    $b = "ZZZ";
    echo "<br>a: $a, b: $b<br>";
    echo "Arithmetic Addition: " . ($a + $b) . "<br>";
    echo "String Concatenation: " . ($a . $b) . "<br>";



    $employees = array("0" => array("name" => "Иванов", "phone" => "111-22-33", "email" => "ivanov@domain.com"),
                       "1" => array("name" => "Петров", "phone" => "112-24-36", "email" => "petrov@domain.com"),
                       "2" => array("name" => "Сидоров", "phone" => "113-25-37", "email" => "sidorov@domain.com"));
    echo "<pre>", print_r($employees, true), "</pre>";



    $mixed = array(1, 2, "A", 3.764, 34, "B", 12);
    echo "<pre>", print_r($mixed, true), "</pre>";
    for ($i = 0; $i < count($mixed); $i++)
        if (!is_int($mixed[$i]) && !is_float($mixed[$i]))
            unset($mixed[$i]);
    echo "<pre>", print_r($mixed, true), "</pre>";




    echo "<table width='100%' style='color: red'>";
    for ($i = 0; $i < 1000; $i++) {
        echo "<tr bgcolor='#" . substr('00000' . dechex(($i % 0x100) * 0x010101), -6) . "'>";
        echo "<td width='33%'>" . ($i + 1) . "</td>";
        echo "<td width='33%'>&nbsp;</td>";
        echo "<td width='34%'>&nbsp;</td>";
        echo "</tr>";
    }
    echo "</table>";



