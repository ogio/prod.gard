<?php

// funkcija prikazi, koja prikazuje vrsi prikaz i tabeli prema nazivu tabele (parametru $sql_tabela) 

function prikazi_sqltabelu($sql_tabela) {

	global $db;

	echo "<table class='dt-table'>";
	echo "<h2>" . $sql_tabela . "</h2>";

	// generisanje headera tabele (prikaz podataka)

	$komanda_head = "SELECT * FROM $sql_tabela LIMIT 1";
	$result_head = mysql_query($komanda_head, $db);	

	while ( $red = mysql_fetch_assoc($result_head) ) :

		$m = 0;

		echo "<tr class='dt-table'>";

		foreach ($red as $item) {
	
			$kolona = mysql_field_name($result_head, $m);
   			echo "<td class='dt-table'>" . $kolona . "</td>";
   			//echo "<td>" . $item . "</td>";
    		$m++;

		}

		echo "</tr>";

	endwhile;

	// generisanje tela tabele (prikaz podataka)

	$komanda_body = "SELECT * FROM $sql_tabela";
	$result_body = mysql_query($komanda_body, $db);


	while ( $red = mysql_fetch_assoc($result_body) ) :

		$n = 0;

		echo "<tr class='dt-table'>";

		foreach ($red as $item) {
	
			$kolona = mysql_field_name($result_body, $n);
   			echo "<td class='dt-table'>" . $item . "</td>";
    		$n++;

		}

		echo "</tr>";

	endwhile;

	echo "</table>";

}

// funkcija generisanja navigacije prema broju tabela

function nav_sqltabele() {

	global $db;

	echo "Lista svih tabela: ";
	
    $komanda = 'SHOW tables';
	$result = mysql_query($komanda, $db);
	$br_redova = mysql_num_rows($result);
	
	for ($i = 0; $i < $br_redova; $i++) {

			echo "<a href='?tab=" . mysql_tablename($result, $i) . "'>" . mysql_tablename($result, $i) . "</a>";
			echo " | ";			

	}

	

}

// funkcija koja prikazuje sve redove i kolone iz odredjene tabele sa paramerom $nesto koristeci funkciju prikazi

function prikazi_sve($nesto) {

	global $db;

	$komanda = "SELECT * FROM $nesto";
	echo prikazi($komanda);

}

// funkcija koja prikazuje distinct elemente sa dva parametra: koju kolonu sa podacima ($nesto) i iz koje tabele ($odakle) koristeci funkciju prikazi

function prikazi_jedno($nesto,$odakle) {

	global $db;

	$komanda = "SELECT DISTINCT $nesto FROM $odakle";
	echo prikazi($komanda);

}

// funkcija koja broji redove u tabeli

function br_redova($nesto) {

	global $db;

	$komanda = "SELECT 'id', COUNT(*) FROM $nesto";
	$result = mysql_query($komanda, $db);
	echo mysql_num_rows ($result);

}

// funkcija koja proverava string u urlu (copy paste iz Vladinog koda)

function sanitize_input($input) {
        $input = mysql_real_escape_string($input);
        return $input;
}

?>