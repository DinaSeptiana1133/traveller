<?php
require_once 'admin/config/db.php';

require 'admin/config/db.php';

//kalau tidak ada id di query string
if(!isset($_GET['id'])){
	header('location:index.php');
}

//ambil id dari query string
$id = $_GET['id'];

//buat query untuk ambil data dari database
$query = mysqli_query($db, "SELECT * FROM detail WHERE id = $id");
$data = mysqli_fetch_array($query);

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Traveller | Detail</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/custom_bootstrap.css">
    <link href="admin/assets/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/plyr.css">
    <link rel="stylesheet" href="assets/css/aos.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="shortcut icon" href="assets/images/index/traveller.jpg">
  </head>

  <body>
    <div id="main">

    <!-- header -->
      <header>
        <div class="header-wrapper">
          <div class="container">
            <div class="header-menu">
              <div class="row no-gutters align-items-center justify-content-center">
                <div class="col-4 col-md-2">
                  <a class="logo" disabled="">
                    <img src="assets/images/index/traveller.jpg" alt="logo" width="90%">
                  </a>
                </div>
                <div class="col-8 col-md-8">
                <div class="mobile-menu">
                  <a href="#" id="showMenu"><i class="fas fa-bars"></i></a>
                </div>
                <nav class="navigation">
                  <ul>
                    <li class="nav-item"><a class="pisen-nav-link active" href="index.php">Home</a></i>
                    <li class="nav-item"><a class="pisen-nav-link" href="cas.php">Contact | About Us</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </header>
      <!--End header-->

      <section class="posts blog-2col">
        <div class="container">
        <h2 class="text-center"> <b> <?= $data["title"]; ?> </b> </h2> <br>
          <div class="row justify-content-center">
            <div class="col-12 col-md-9" align="justify">
              <div class="post-block post-classic">
                <div class="post-img">
                  <img src="assets/images/detail/<?= $data["foto"]; ?>" width="50%" alt="post image">
                </div>

                <p class="container">
                  <?php echo $data["content"]; ?>
                </p>
                </div>
              </div>
            </div>
          </div>
      </section>

      <!--Start footer-->
      <footer class="bg-dark">
        <div class="container">
          <div class="row">
            <div class="text-center col-sm-12">
              <div class="footer-contact mt-5">
                <h3 class="footer-link--title text-white"> Information</h3>
                <div class="contact-method">
                  <p class="text-white"><i class="fa fa-envelope"></i> traveller@gmail.com</p>
                  <p class="text-white"><i class="fa fa-mobile"></i> +(10) 345 6789 10</p>
                  <p class="text-white"><i class="fa fa-thumbtack"></i> Clapar Purwodadi Tegalrejo Magelang</p>
                </div>
              </div>
            </div>
            <div class="text-center col-sm-12 col-md-12 col-lg-12">
              <div class="copyright-text">
                <p class="text-white text-right">
                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
                </p>
              </div>
            </div>
          </div>
        </div>
      </footer>
      <!--End footer-->

      <script src="assets/js/jquery-3.4.0.min.js"></script>
      <script src="assets/js/jquery-ui.min.js"></script>
      <script src="assets/js/slick.min.js"></script>
      <script src="assets/js/plyr.min.js"></script>
      <script src="assets/js/aos.js"></script>
      <script src="assets/js/jquery.scrollUp.min.js"></script>
      <script src="assets/js/masonry.pkgd.min.js"></script>
      <script src="assets/js/imagesloaded.pkgd.min.js"></script>
      <script src="assets/js/numscroller-1.0.js"></script>
      <script src="assets/js/jquery.countdown.min.js"></script>
      <script src="assets/js/main.js"></script>
    </div>
  </body>
</html>