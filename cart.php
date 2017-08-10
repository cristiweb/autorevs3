<?php


if(session_id() == '' || !isset($_SESSION)){session_start();}

include_once 'head.php';

require_once 'db.php';


?>

    <div class="row" style="margin-top:10px;">
      <div class="large-12">
        <?php

          echo '<p><h3>Your Shopping Cart</h3></p>';

          if(isset($_SESSION['cart'])) {

            $total = 0;
            echo '<table>';
            echo '<tr>';
            echo '<th>Code</th>';
            echo '<th>Name</th>';
            echo '<th>Quantity</th>';
            echo '<th>Cost</th>';
            echo '</tr>';
            foreach($_SESSION['cart'] as $product_id => $quantity) {

              try {
              	$result = $conn->query("SELECT product_code, product_name, product_desc, qty, price FROM products WHERE id = ".$product_id);
              } 
              catch (PDOException $e) {
              	echo "Error: ".$e;
              }


              if($result){

                while($obj = $result->fetchObject()) {
                  $cost = $obj->price * $quantity; //work out the line cost
                  $total = $total + $cost; //add to the total cost

                  echo '<tr>';
                  echo '<td>'.$obj->product_code.'</td>';
                  echo '<td>'.$obj->product_name.'</td>';
                  echo '<td>'.$quantity.'&nbsp;<a class="button [secondary success alert]" style="padding:5px;" href="update_cart.php?action=add&id='.$product_id.'">+</a>&nbsp;<a class="button alert" style="padding:5px;" href="update_cart.php?action=remove&id='.$product_id.'">-</a></td>';
                  echo '<td>'.$cost.'</td>';
                  echo '</tr>';
                }
              }
          }

          echo '<tr>';
          echo '<td colspan="3" align="right">Total</td>';
          echo '<td>'.$total.'</td>';
          echo '</tr>';

          echo '<tr>';
          echo '<td colspan="4" align="right"><a href="update_cart.php?action=empty" class="button alert">Empty Cart</a>&nbsp;<a href="products.php" class="button [secondary success alert]">Continue Shopping</a>';
          if(isset($_SESSION['username'])) {
            echo '<a href="orders_update.php"><button style="float:right;">Place order</button></a>';
          }

          else {
            echo '<a href="login.php"><button style="float:right;">Login</button></a>';
          }

          echo '</td>';

          echo '</tr>';
          echo '</table>';
        }

        else {
          echo "You have no items in your shopping cart.";
        }


          echo '</div>';
          echo '</div>';
          ?>

<!--       </div>
</div> -->

<?php include_once'footer.php';?>