<?php
	require_once 'db.php';

	if(isset($_SESSION["contact"])){

        header("location:contact.php");
	}


	$name = $_POST["name"];
	$subject = $_POST["subject"];
	$email = $_POST["email"];
	$message = $_POST["message"];

	if(!empty($_POST['name']) && !empty($_POST['subject']) &&!empty($_POST['email']) && !empty($_POST['message'])){
		if($conn->query("INSERT INTO contacts (name, subject, email, message) VALUES ('$name', '$subject', '$email', '$message')")){
			echo '<div class="row" style="margin-top:10px;">';
				echo '<div class="small-12">';
					echo '<h2>Your information has been sent. Thank you!</h2>';
					echo '<br/>';
				echo '</div>';
			echo '</div>';
		}
		
	}

	// if(!empty($_POST['name']) && !empty($_POST['subject']) &&!empty($_POST['email']) && !empty($_POST['message'])){

	// 	mail('abe_wannabe@yahoo.com', $subject, $message, 'From: $email');

	// 	echo '<h2>Your information has been sent. Thank you!</h2>';
	// }
	// else{
	// 	echo '<h2>There was a problem sending your email. Sorry!</h2>';
	// }
	//header ("location:success.php");
	header("Refresh: 1; url=contact.php");

?>
