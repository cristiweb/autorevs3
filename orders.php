<?php
	include_once 'head.php';

	if(!isset($_SESSION["username"])){
  		header("location:index.php");
	}

	require_once 'db.php';
?>

 <div class="row" style="margin-top:10px;">
      <div class="large-12">
        <h3>My Placed Orders</h3>
        <hr>

        <?php

          $user = $_SESSION["username"];
          $result = $conn->query("SELECT * from orders where email='".$user."'");

          if($result) {
            while($obj = $result->fetchObject()) {
              //echo '<div class="large-6">';
              echo '<p><h4>Order ID ->'.$obj->id.'</h4></p>';
              echo '<p><strong>Date of Purchase</strong>: '.$obj->date.'</p>';
              echo '<p><strong>Product Code</strong>: '.$obj->product_code.'</p>';
              echo '<p><strong>Product Name</strong>: '.$obj->product_name.'</p>';
              echo '<p><strong>Price Per Unit</strong>: '.$obj->price.'</p>';
              echo '<p><strong>Units Bought</strong>: '.$obj->units.'</p>';
              echo '<p><strong>Total Cost</strong>: '.$currency.$obj->total.'</p>';
              echo '<p><hr></p>';

            }
          }

        ?>

      </div>
    </div>

<?php include_once'footer.php';?>