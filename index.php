<?php
require_once 'admin/config/db.php';

function query($query){
  global $db;
  
$result = mysqli_query($db, $query);
$rows = [];
while($row = mysqli_fetch_assoc($result)){
  $rows[] = $row;
}
return $rows;
}

$jumlahDataPerHalaman = 5;
$jumlahData = count(query("SELECT * FROM pages"));
$jumlahHalaman =ceil($jumlahData / $jumlahDataPerHalaman);

$halamanAktif = (isset($_GET["halaman"])) ? $_GET["halaman"] : 1;
$awalData = ($jumlahDataPerHalaman * $halamanAktif) - $jumlahDataPerHalaman;

$pgs = query("SELECT * FROM pages LIMIT $awalData,$jumlahDataPerHalaman");

if(isset($_POST["cari"])){
  $pgs = cari($_POST["keyword"]);
}

function cari($keyword){
  $query = "SELECT * FROM pages WHERE title LIKE '%$keyword%'";
  return query($query);
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Traveller | Home</title>
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
              <div class="col-0 col-xl-2">
                <div class="menu-function">
                  <div id="search">
                  <form action="" method="post">
                    <input type="text" name="keyword" id="" size="10" autofocus placeholder="Search..." autocomplete="off">
                    <button type="submit" name="cari"><i class="fas fa-search"></i></button>
                  </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
      <!--End header-->

      <h2 class="text-center"> Tempat Wisata di <b>Indonesia</b> </h2> <br>

      <!-- start of content -->
      <?php foreach($pgs as $row) : ?>
      <section>
        <div class="container">
          <div class="container row justify-content-center">
            <div class="col-12 col-md-12" align="justify">
              <div class="post-block post-classic">
                <div class="post-img mt-5 text-center">
                  <img src="assets/images/index/<?= $row["foto"]; ?>" width="100%" alt="post image">
                </div>
                <div class="post-detail">
                  <a class="post-title regular" href="detail.php?id=<?= $row["id"]; ?>"> <?php echo $row["title"]; ?> </a>
                  <p class="post-describe">
                    <?php echo $row["content"]; ?>
                  </p>
                </div>
              </div>
            </div>       
          </div>
        </div>
      </section>
      <?php endforeach; ?>
      <!-- end of content -->

      <div class="container mb-5 mt-5">
        <div class="text-center">
          <?php if($halamanAktif > 1) : ?>
           <a href="?halaman=<?= $halamanAktif- 1; ?>">&laquo;</a>
          <?php endif; ?>

          <?php for($i=1; $i <= $jumlahHalaman; $i++) : ?>
            <?php if($i == $halamanAktif) : ?>
              <a href="?halaman=<?= $i; ?>" style="font-weight: bold; color:red;"><?= $i; ?></a>
            <?php else : ?>
              <a href="?halaman=<?= $i; ?>"><?= $i; ?></a>
            <?php endif; ?>
          <?php endfor; ?>

          <?php if($halamanAktif < $jumlahHalaman) : ?>
            <a href="?halaman=<?= $halamanAktif + 1; ?>">&raquo;</a>
          <?php endif; ?>
        </div>
      </div>

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