<?php
  include_once 'head.php';

  require_once 'db.php';
?>
          
<div class="row featurette">
        <div class="col-md-12">

                  <?php

                      try{
                         $result = $conn->prepare("SELECT * FROM articles ");
                         $result->execute(array());
                      }
                      catch(PDOException  $e){
                         echo "Error: ".$e;
                      }

                     

                      if($result){
                          while ( $obj = $result -> fetchObject()) {
                            echo ' <article>';
                              echo '<div class="art-header">';
                                  echo '<p><h3 style="margin-top: 40px;margin-bottom: 40px;">'.$obj->title.'</h3></p>';
                                  echo '<p>Posted on: '.$obj->date.'</p>';
                              echo '</div>';
                              echo '<div class="art-content">';
                                echo '<img style="margin-bottom: 40px;" src="images/'.$obj->img_name.'" />';
                                echo '<p class="lead">'.$obj->content.'</p>';
                              echo '</div>';
                             echo '</br>'; 
                             echo '<a class="button" style="margin-top: 40px;" target="_blank" href="'.$obj->link.'">More info</a>';
                            echo '</article>';
                            echo '<hr>';
                          }
                      }

                  ?>
        </div>
</div>

<p class="row small-2"><a href="#" style="clear:both; background: #0078A0; border: none; color: #fff; font-size: 1em; padding: 10px;">Back to top</a></p>

<?php include_once 'footer.php';?>