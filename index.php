<?php
error_reporting(7);
require_once ('require.php');
$tabela = sanitize_input($_GET['tab']);
?>

<html>
<head>
	
	<title>PRODAVNICA GARDEROBE</title>
	<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>



<div id="nav">
<?php echo nav_sqltabele(); ?>
</div>

<div id="content">
<?php echo prikazi_sqltabelu($tabela); ?>
</div>

</body>
</html>