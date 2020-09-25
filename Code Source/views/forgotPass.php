<?php
include('../app/models/connect.php');
include('../app/models/db.php');
include('../app/helpers/validateUser.php');
include('../app/controllers/users.php');
include('../app/controllers/category.php');
include('../app/controllers/product.php');
include('../app/controllers/cart.php');
include('../app/helpers/validationPassword.php');
include('../app/controllers/passwordReset.php');
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
  <div class="form-wrap" style="margin-bottom:263px">
	

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
                <h2 style="text-align: center;">Reset password</h2>
         <?php include('../app/helpers/flashmessage.php') ?>
				<form class="signup-form" style="height: initial;" action="" method="post">
					<input type="email" class="input" name="email" id="user_email" autocomplete="off" placeholder="Email">
					<input type="submit" class="button"  name="forgot" value="Reset">
				</form><!--.login-form-->
				<div class="help-text">
					
					<p><a href="login-reg.php">Back to login</a></p>
				</div><!--.help-text-->
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