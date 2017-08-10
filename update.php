<?php
	
	if(session_id() == '' || !isset($_SESSION)){
		session_start();
	}

	require_once 'db.php';

	$fname = $_POST["fname"];
	$lname = $_POST["lname"];
	$address = $_POST["address"];
	$city = $_POST["city"];
	$email = $_POST["email"];
	$opass = $_POST["opass"];
	$pass = $_POST["pass"];


	if($fname!=""){
	  $result = $conn->query('UPDATE users SET fname ="'. $fname .'" WHERE id ='.$_SESSION['id']);
	  if($result){
	  }
	}

	if($lname!=""){
	  $result = $conn->query('UPDATE users SET lname ="'. $lname .'" WHERE id ='.$_SESSION['id']);
	  if($result){
	  }
	}

	if($address!=""){
	  $result = $conn->query('UPDATE users SET address ="'. $address .'" WHERE id ='.$_SESSION['id']);
	  if($result){
	  }
	}

	if($city!=""){
	  $result = $conn->query('UPDATE users SET city ="'. $city .'" WHERE id ='.$_SESSION['id']);
	  if($result){
	  }
	}

	if($email!=""){
	  $result = $conn->query('UPDATE users SET email ="'. $email .'" WHERE id ='.$_SESSION['id']);
	  if($result) {
	  }
	}

	if($pass!=""){
	  $query = $conn->query('UPDATE users SET password ="'. $pass .'" WHERE id ='.$_SESSION['id']);
	  if($query){
	  }
	}

	header("location:success.php");

?>