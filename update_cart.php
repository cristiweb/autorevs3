<?php

	include_once 'head.php';
	require_once 'db.php';

	//$product_id = $_GET['id'];
	$product_id = ''; 
	if( isset( $_GET['id'])) {
	    $product_id = $_GET['id']; 
	}
	// if (isset($_SESSION['action'])) {
	// 	$action = $_GET['action'];
	// }
	$action = $_GET['action'];


	if($action === 'empty')
	  unset($_SESSION['cart']);

	try{
		$result = $conn->prepare("SELECT qty FROM products WHERE id = ".$product_id);
		$result->execute(array($product_id));
	}
	catch(PDOException  $e){
		echo "Error: ".$e;
	}

	if($result){

	  if($obj = $result->fetchObject()) {

	    switch($action) {

	      case "add":
		      if($_SESSION['cart'][$product_id]+1 <= $obj->qty)
		        $_SESSION['cart'][$product_id]++;
		      break;

	      case "remove":
		      $_SESSION['cart'][$product_id]--;
		      if($_SESSION['cart'][$product_id] == 0)
		        unset($_SESSION['cart'][$product_id]);
		      break;    

	    }
	  }
	}

header("location:cart.php");

?>

