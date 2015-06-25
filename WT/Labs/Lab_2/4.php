$MyArray = array (1, 2, "A", 3.764, 34, "B", 12 );
echo "First array: ";
foreach($MyArray as $value ){
	echo "\n".$value;}
echo "\n";
	
$i = 0;
foreach($MyArray as $value ){
	if ((gettype($value) <> "integer") and (gettype($value) <> "double")) {
           unset($MyArray[$i]);
           }
	$i++;
	} 

echo "\n"."Second array: ";
foreach($MyArray as $value ){
	echo "\n".$value;}