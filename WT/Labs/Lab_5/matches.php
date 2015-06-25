<?
$input = $_POST["input_matches"];

$matches = array();

preg_match_all("/[A-Z]{5}/", $input, $matches);

$arr = array();
$arr2 = array();

foreach($matches[0] as $row)
{	
	array_push($arr,$row);
	array_push($arr2,"<b style=\"color:red\">".$row."</b>");
}
$input = str_replace($arr, $arr2, $input);

echo $input;
?>

