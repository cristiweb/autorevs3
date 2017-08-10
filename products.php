<?php
	
	require_once 'db.php';
	include_once 'head.php';
	

?>

<div class="row" style="margin-top:10px; margin-bottom: 60px;">
      <div class="small-12">

      <?php

      	
      	$product_id =  array();
      	$product_quantity = array();

      	$result = $conn -> query('SELECT * FROM products');

      	if($result === false){
      		die(mysql_error());
      	}

      	if($result){
      		while ( $obj = $result -> fetchObject()) {
            		  echo '<div class="large-4 columns">';
            			echo '<p><h3>'.$obj->product_name.'</h3></p>';
            			echo '<p><img src="images/products/'.$obj->product_img_name.'"/>';
            			echo '<p><strong>Product code:</strong> '.$obj->product_code.'</p>';
            			echo '<p><strong>Description:</strong> '.$obj->product_desc.'</p>';
            			echo '<p><strong>Quantity:</strong> '.$obj->qty.'</p>';
            			echo '<p><strong>Price:</strong> '.$currency.$obj->price.'</p>';
            			echo '<hr>';  		

            		if($obj->qty > 0){
                              echo '<p><a href="update_cart.php?action=add&id='.$obj->id.'"><input type="submit" value="Add To Cart" style="clear:both; background: #0078A0; border: none; color: #fff; font-size: 1em; padding: 10px;" /></a></p>';
                        }
            		else {
            			echo 'Product out of stok!';
            		}

            		echo '</div>';
            		
      		}
      	}

      	$_SESSION['product_id'] = $product_id;

      	echo '</div>';
      	echo '</div>';

      ?>
     </div></div>

<?php include_once 'footer.php';?>
