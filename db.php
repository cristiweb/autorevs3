<?php
	$currency = '$';

	$servername = "localhost";
	$username = "root";
	$password = "";

	try {

	    $conn = new PDO("mysql:host=$servername;dbname=auto", $username, $password);
	    // set the PDO error mode to exception
	    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	    //echo "Connected successfully";
	 }

	catch(PDOException $e){

	    echo "Connection failed: " . $e->getMessage();
	 }

	 function execSql($query, $conn) {
	    $afterPrepare = $conn->prepare($query, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
	    $afterPrepare->execute();
	    $result = $afterPrepare->fetchAll(PDO::FETCH_ASSOC);
	    return $result;
  	}
  
?> 

