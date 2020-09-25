  <?php if (isset($_SESSION['message'])) : ?>
    <script>
      swal("<?php echo $_SESSION['message'] ?>", "Press ok to continue", "<?php echo $_SESSION['type'] ?>");
    </script>
    <?php
    unset($_SESSION['message']);
    unset($_SESSION['type']);
    ?>

  <?php endif; ?>


  <?php if (isset($_SESSION['addToCart'])) : ?>
    <div class="alert simple-alert" style="background: #8167a9;
    HEIGHT: 121px;
    color: white;">
      <h3><?php echo $_SESSION['addToCart'] ?></h3>
      <a class="" style="color:#fff" href="cart2.php">Go to cart</a>
    </div>
    <?php
    unset($_SESSION['addToCart']);
    ?>
  <?php endif; ?>