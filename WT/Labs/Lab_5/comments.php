<?
$input = $_POST["input_comments"];
echo "<plaintext>";
echo $input;
echo "\n\n-------------------------------\n";
echo preg_replace('#(?!<!--\[if IE\]>)(?!<\!\[endif\]-->)<!--(.*?)-->#', '', $input );
?>

