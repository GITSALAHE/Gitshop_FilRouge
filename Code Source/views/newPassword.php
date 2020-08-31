<?php
include('../app/database/connect.php');
include('../app/database/db.php');
include('../app/helpers/validateUser.php');
include('../app/controllers/users.php');
include('../app/controllers/category.php');
include('../app/controllers/product.php');
include('../app/controllers/cart.php');
include('../app/controllers/passwordReset.php'); 
if(!isset($_GET['token'])){
    header('location:index.php');
    $_SESSION['message'] = 'you are not authorized !';
    $_SESSION['type'] = 'error';
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="Description" content="Enter your description here" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">

  <link rel="stylesheet" href="../assets/css/Login-reg.css">
  <script src="https://use.fontawesome.com/c18f659ca0.js"></script>
  <title>Account</title>
</head>

<body>
  <!--.nav-collapse -->
  <?php include_once ('nav.php') ?>

  <!--/.nav-collapse -->
  

  <div class="container"  style="display: flex; justify-content:center" >
  <div class="form-wrap">
		<div class="tabs">
			<h2 style="text-align: center;">New password</h2>
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
      
         <?php include('../app/helpers/flashmessage.php') ?>
				<form class="signup-form" action="" method="post">
               
                    
					
                    <input type="password" class="input" name="password" id="user_pass" autocomplete="off" placeholder="Put your new password">
                  
					<input type="submit" class="button"  name="resetPassword" value="Reset your password">
				</form><!--.login-form-->
				
			</div><!--.signup-tab-content-->

		
		</div><!--.tabs-content-->
    </div><!--.form-wrap-->
    </div>

   

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>



<?php include_once ('footer.php') ?>
  </body>

</html>