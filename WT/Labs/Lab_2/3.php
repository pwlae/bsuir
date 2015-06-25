<?php
$sotrudniki = array(
	'0' => array ('name' => 'Ivanov','phone' => '111-22-33','email' => 'ivanov@domain.com', 't-shirt' => array(
'color' => 'red') 
	),
	'1' => array('name' => 'Petrov','phone' => '112-24-36','email' => 'petrov@domain.com'),
	'2' => array('name' => 'Sidorov','phone' => '113-25-37','email' => 'sidorov@domain.com')
);

echo $sotrudniki[0];
 
foreach($sotrudniki as $Skey => $Svalue) {
	echo "\n".$Skey.") ";
foreach ($Svalue as $key => $value) 
	echo $value." ";
foreach ($value as $skey => $svalue) 
	echo $svalue." ";
}
?>