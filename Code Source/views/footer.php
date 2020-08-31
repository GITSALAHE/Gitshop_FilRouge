
  <link rel="stylesheet" href="../assets/css/Footer.css">
  <!-- Footer -->
  <footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <div class="footer-widget">
          <h3>Stay in touch</h3>
          <div class="footer-widget-content">
            <a href="mailto:gitshopllc@gmail.com" class="contact-link red">gitshopllc@gmail.com </a>
            <a href="tel:(0)5 24 256-789" class="contact-link">(0)5 24 256-789</a>
            <div class="footer-social">
            <ul>
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
              <li><a href="#"><i class="fa fa-youtube"></i></a></li>
              <li><a href="#"><i class="fa fa-rss"></i></a></li>
            </ul>
              </div>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
      <div class="footer-widget">
        <h3>Links</h3>
        <div class="footer-widget-content">
          <div class="media">
              <div class="media-body">
                 <p><a href="index.php">Home </a></p>
                
              </div>
           </div>
           <?php if(isset($_SESSION['idU'])): ?>
          <div class="media">
              <div class="media-body">
                 <p><a href="OrdersHistory.php">My Account</a></p>
              </div>
           </div>
           <?php else: ?>
           <div class="media">
              <div class="media-body">
                 <p><a href="login-reg.php">Account</a></p>
              </div>
           </div>
           <?php endif; ?>
           <div class="media">
              <div class="media-body">
                 <p><a href="cart2.php">Cart</a></p>
              </div>
           </div>
           <div class="media">
              <div class="media-body">
                 <p><a href="contactus.php">Contact</a></p>
              </div>
           </div>
        </div>
        </div>
      </div>
      <div class="col-sm-3">
      <div class="footer-widget">
        <h3>Other Business</h3>
        <div class="footer-widget-content">
          <div class="media">
              <div class="media-body">
                 <p><a href="FAQ.php">FAQ </a></p>
                
              </div>
           </div>
          <div class="media">
              <div class="media-body">
                 <p><a href="terms.php">terms and Condition</a></p>
              </div>
           </div>
        </div>
        </div>
      </div>
    </div>
  </div>
</footer>
  <!-- Footer -->
