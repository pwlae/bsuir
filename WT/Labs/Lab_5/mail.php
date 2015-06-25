<?
$usermail = $_POST["input_mail"];
$val1 = "/^([a-z0-9_\.-]+)@([a-z0-9_\.-]+)\.([a-z\.]{2,6})$/";
$val2 = "/(.-)|(\.\.)|(--)|#/";

if (preg_match($val1,$usermail) and !preg_match($val2,$usermail)) 
{echo "$usermail корректен";}
else{echo "$usermail некорректен";}
?>