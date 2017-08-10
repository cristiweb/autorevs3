<?php

include_once 'head.php';

if($_SESSION["type"]!="admin") {
  header("location:index.php");
}

require_once 'db.php';

$_SESSION["products_id"] = array();
$_SESSION["products_id"] = $_REQUEST['quantity'];


$result = $conn->query("SELECT * FROM products ORDER BY id asc");
$i=0;
$x=1;

if($result) {
  while($obj = $result->fetchObject()) {
    if(empty($_SESSION["products_id"][$i])) {
      $i++;
      $x++;
    }
    else {
      $newqty = $obj->qty + $_SESSION["products_id"][$i];
      $update = $conn->query("UPDATE products SET qty =".$newqty." WHERE id =".$x);
      if($update)
        echo 'Data Updated';

      $i++;
      $x++;
    }
  }
}

header ("location:success.php");

?>
