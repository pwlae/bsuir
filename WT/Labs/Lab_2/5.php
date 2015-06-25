<?php 
$n=0;
$red = 0x00;
$green = 0x00;
$blue = 0x00;
echo '<table style="width: 500px; color: chocolate">';
for ($i = 1; $i <= 1000; $i++){
	$red++; 
        $green++; 
  	$blue++;
	if ($red == 256) {
            $red = 0;
            $green = 0;
            $blue = 0;
            }
	if ($red < 16) echo '<tr bgcolor = "#'."0".dechex($red)."0".dechex($green)."0".dechex($blue).'">';
	else echo '<tr bgcolor = "#'.dechex($red).dechex($green).dechex($blue).'">';
	for ($td = 1; $td <=3; $td++){
		echo '<td>';
		if ($td == 1){
			echo $n;
			$n++;
			}
		echo "</td>";
		}
	echo "</tr>";
	}
echo '</table>';
?>