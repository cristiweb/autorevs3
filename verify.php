<?php
	include_once 'head.php';
	require_once 'db.php';


	$username = $_POST["username"];
	$password = $_POST["pass"];
	$flag = 'true';

	$result = $conn->query('SELECT id,email,password,fname,type from users order by id asc');

	if($result === FALSE){
	  die(mysql_error());
	}

	if($result){
	  while($obj = $result->fetchObject()){
	    if($obj->email === $username && $obj->password === $password) {

	      $_SESSION['username'] = $username;
	      $_SESSION['type'] = $obj->type;
	      $_SESSION['id'] = $obj->id;
	      $_SESSION['fname'] = $obj->fname;
	      header("location:index.php");
	    } else {

	        if($flag === 'true'){
	          redirect();
	          $flag = 'false';
	        }
	    }
	  }
	}

function redirect() {
  echo '<h1>Invalid Login! Redirecting...</h1>';
  header("Refresh: 0.5; url=login.php");
}

?>