<?php
	include_once 'head.php';

	require_once 'db.php';

if(isset($_SESSION['cart'])) {

  $total = 0;

  foreach($_SESSION['cart'] as $product_id => $quantity) {

    $result = $conn->query("SELECT * FROM products WHERE id = ".$product_id);

    if($result){

      if($obj = $result->fetchObject()) {


        $cost = $obj->price * $quantity;

        $user = $_SESSION["username"];

        try{
          $query = $conn->prepare("INSERT INTO orders (product_code, product_name, product_desc, price, units, total, email) VALUES('$obj->product_code', '$obj->product_name', '$obj->product_desc', $obj->price, $quantity, $cost, '$user')");
          $query->execute(array($obj->product_code));
        }
        catch(PDOException  $e){
           echo "Error: ".$e;
        }

        if($query){
          $newqty = $obj->qty - $quantity;
          if($conn->query("UPDATE products SET qty = ".$newqty." WHERE id = ".$product_id)){

          }
        }

      }
    }
  }
}

unset($_SESSION['cart']);
header("location:success.php");	

?>
