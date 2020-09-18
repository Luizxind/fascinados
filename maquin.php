<?php
try {
	$pdo = new PDO("mysql:dbname=fascinadosdb;host=localhost", "root", "");
} catch(PDOException $e){
	echo "ERROU ".$e->getMessage();
	exit;
}
?>