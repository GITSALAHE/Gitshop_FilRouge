<?php
  // isset button SendMail 
  use PHPMailer\PHPMailer\PHPMailer;
  use PHPMailer\PHPMailer\SMTP;
  use PHPMailer\PHPMailer\Exception;
  require '../vendor/autoload.php';
if(isset($_POST['SendMail'])){

   
        if(!empty($_POST['name'] && $_POST['subject'] && $_POST['message'] && $_POST['email'])){
            $mail = new PHPMailer();
            $to = $_POST['email']; // this is your Email address
            $name = $_POST['name'];
            $message= $_POST['message'];
            $subject = $_POST['subject'];
            $email = $_POST['email'];
            $mail->AddEmbeddedImage('../assets/img/Logo.png', 'logoinen', 'Logo.png');

            $message = "
            
            <img src=\"cid:logoinen\" /> <br>
            <div style='backgroud-color:#8167A9;color:#fffff'>
            Customer name: " .$name . "<br>
                        email address : ". $email." <br>
            has say:" . "\n\n" .$message . "</div>";
            try {
              //Server settings
              $mail->isSMTP();                                            
              $mail->Host       = 'smtp.gmail.com';                    
              $mail->SMTPAuth   = true;                                   
              $mail->Username   = 'gitshopllc@gmail.com';                     
              $mail->Password   = '0646274243';                               
              $mail->SMTPSecure = 'ssl';        
              $mail->Port       = 465;                                    
          
              //Recipients
              $mail->setFrom('gitshopllc@gmail.com', 'Mariashop');
              $mail->addAddress('gitshopllc@gmail.com', 'Joe User');     
          
          
             
          
              // Content
              $mail->isHTML(true);                                  
              $mail->Subject = $subject;
              $mail->Body    = ''.$message.'';
          
              $mail->send();
          } 
          catch (Exception $e) {
              $Error = "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
          }
        
            $Message="Thanks for contacting us! We will be in touch with you shortly."; 
               
        }
    
        else {

            $Error="Please complete all fields";
        }
}
?>