<?php
	include_once 'head.php';
	require_once 'db.php';
?>

 <div class="row" style="margin-top:30px;">
      <div class="small-12">

        <p style="margin-top: 70px;">If you want to get in touch with us please fill out this form or send us an email at the adrress bellow the form.</p>

        <form method="POST" action="insert2.php" style="margin-top:30px;">
		      <div class="row">
		        <div class="small-8">

		          <div class="row">
		            <div class="small-4 columns">
		              <label  for="right-label" class="right inline">Name</label>
		            </div>
		            <div class="small-8 columns">
		              <input type="text" id="right-label" placeholder="your name" name="name" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" required="">
		            </div>
		          </div>
		          <div class="row">
		            <div class="small-4 columns">
		              <label  for="right-label" class="right inline">Subject</label>
		            </div>
		            <div class="small-8 columns">
		              <input type="text" id="right-label" placeholder="subject" name="subject" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" required="">
		            </div>
		          </div>
		          <div class="row">
		            <div class="small-4 columns">
		              <label  for="right-label" class="right inline">E-Mail</label>
		            </div>
		            <div class="small-8 columns">
		              <input type="email" id="right-label" placeholder="some@gmail.com" name="email" class="validate[required,custom[email]] feedback-input" required="">
		            </div>
		          </div>
		          <div class="row">
		            <div class="small-4 columns">
		              <label  for="right-label" class="right inline">Message</label>
		            </div>
		            <div class="small-8 columns">
		              <textarea rows="10" cols="5" id="right-label" placeholder="a short message" name="message" class="validate[required,length[6,255]] feedback-input" required=""></textarea> 
		            </div>
		          </div>
		          
		          <div class="row">
		            <div class="small-4 columns">

		            </div>
		            <div class="small-8 columns">
		              <input type="submit" id="right-label" value="Send" style="background: #0078A0; border: none; color: #fff; font-family: 'Helvetica Neue', sans-serif; font-size: 1em; padding: 10px;">
		              <input type="reset" id="right-label" value="Reset" style="background: #0078A0; border: none; color: #fff; font-family: 'Helvetica Neue', sans-serif; font-size: 1em; padding: 10px;">
		            </div>
          		  </div>
               </div>
             </div>
     </form>
   </div>
 </div>

<?php include_once 'footer.php';?>