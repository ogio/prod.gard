<?php

function prikazi_sve($nesto) {

	global $db;

	$komanda = "SELECT * FROM $nesto";
	echo prikazi($komanda);

}

function prikazi_jedno($nesto,$odakle) {

	global $db;

	$komanda = "SELECT DISTINCT $nesto FROM $odakle";
	echo prikazi($komanda);

}


function prikazi($komanda) {

	global $db;
	global $nesto;

	$result = mysql_query($komanda, $db);
	
	

	while ( $red = mysql_fetch_assoc($result) ) :

		$i = 0;

		echo "----------<br>";

		foreach ($red as $item) {
	
		$kolona = mysql_field_name($result, $i);
    	echo $kolona . " : " . $item . "<br>";
    	$i = $i + 1;

		}

	endwhile;

}


?>

