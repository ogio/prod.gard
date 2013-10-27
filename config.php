<?php

// veza sa bazom

define ('hostname', 'localhost');
define ('username', 'root');
define ('password', 'root');
define ('database', 'sae');

// konekcija sa bazom

$db = mysql_connect (hostname,username,password);

if (!$db) {
	
	die ('Konekcija sa serverom nije uspela.');
	
}

$dbd = mysql_select_db (database);

if (!$dbd) {
	
	die ('Konekcija sa bazom ' . $dbd . 'nije uspela.');

}

?>