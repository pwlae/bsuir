<?
$input = $_POST["input_tags"];
echo "<plaintext>";
echo $input;
echo "\n\n-------------------------------\n";
echo strip_tags($input);
?>