<?php

include_once 'head.php';

if(!isset($_SESSION["username"])) {
  header("location:index.php");
}

if($_SESSION["type"]!="admin") {
  header("location:index.php");
}

require_once 'db.php';

?>

    <div class="row" style="margin-top:10px; margin-bottom: 60px;">
      <div class="large-12">
        <h3>Wellcome Admin!</h3>
        <?php
          $result = $conn->query("SELECT * from products order by id asc");
          if($result) {
            while($obj = $result->fetchObject()) {
              echo '<div class="large-4 columns">';
                echo '<p><h3>'.$obj->product_name.'</h3></p>';
                echo '<img src="images/products/'.$obj->product_img_name.'"/>';
                echo '<p><strong>Product Code</strong>: '.$obj->product_code.'</p>';
                echo '<p><strong>Description</strong>: '.$obj->product_desc.'</p>';
                echo '<p><strong>Units Available</strong>: '.$obj->qty.'</p>';
                echo '<div class="large-6 columns" style="padding-left:0;">';
                  echo '<form method="post" name="update-quantity" action="admin_update.php">';
                  echo '<p><strong>New Qty</strong>:</p>';
                echo '</div>';
              echo '<div class="large-6 columns">';
              echo '<input type="number" name="quantity[]"/>';

              echo '</div>';
              echo '</div>';
            }
          }
        ?>

      </div>
    </div>
    <center><p><input style="clear:both;" type="submit" class="button" value="Update"></p></center>
   </form>
<?php include_once 'footer.php';?>
   
   


