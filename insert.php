<?php
	require_once 'db.php';

	$fname = $_POST["fname"];
	$lname = $_POST["lname"];
	$address = $_POST["address"];
	$city = $_POST["city"];
	$email = $_POST["email"];
	$pass = $_POST["pass"];

	//Check for Existing User(email)

		$stmt = $conn->prepare("SELECT email FROM users WHERE email ='".$_POST['email']."'");	
		$stmt->execute();
		$count = $stmt->rowCount();
		if($count > 0){ 
			echo "<h2>Sorry, email already exists</h2>";
		}
		
	try{
		if($conn->query("INSERT INTO users (fname, lname, address, city, email, password) VALUES ('$fname', '$lname', '$address', '$city', '$email', '$pass')")){
			echo '<h2>Data inserted</h2>';
			echo '<br/>';
		}
	}
	catch(PDOexception $e){
		echo "Connection failed: " . $e->getMessage();
	}

	//header ("location:login.php");
	header("Refresh: 2; url=login.php");

?>
