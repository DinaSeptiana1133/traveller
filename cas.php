<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Traveller | Contact</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/custom_bootstrap.css">
    <link href="admin/assets/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/elegant.css">
    <link rel="stylesheet" href="assets/css/plyr.css">
    <link rel="stylesheet" href="assets/css/aos.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="shortcut icon" href="assets/images/index/traveller.jpg">
    <style>
      img{
        transition: 4s;
      }
      img:hover{
        transform: scale(1.5);
      }
    </style>
  </head>

  <body>
    <div id="main">
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
                      <li class="nav-item"><a class="pisen-nav-link" href="index.php">Home</a></i>
                      <li class="nav-item"><a class="pisen-nav-link active" href="cas.php">Contact | About Us </a></li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>

    <!-- Contact Section Begin -->
    <div class="container">
			<form action="Proses.php" method="POST">
				<div class="row mt-5">
					<div class="col-md-12"> 
            <h2 class="text-center bg-secondary"> Contact </h2>
						<div class="row mt-4 mb-5">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="name" placeholder="Name">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="email" placeholder="Email">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="phone" placeholder="Phone">
								</div>
              </div>
							<div class="col-md-6">
								<div class="form-group">
									<textarea name="message" name="message" id="message" cols="30" rows="6" class="form-control" placeholder="Message"></textarea>
								</div>
								<div class="form-group">
									<input type="submit" class="btn btn-primary btn-md" value="Send Message">
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>

      <div class="col-sm-12 text-center bg-secondary col-md-12 mt-5"> <h2> About Us </h2> </div>
      <section class="about-us">
        <div class="container mt-4 mb-5">
          <p>
          Traveller adalah sebuah agen pariwisata. 
          Kami berdedikasi untuk memberikan saran perjalanan terbaik dengan menawarkan perpaduan yang sempurna dari konten inspirasional 
          dan panduan tujuan komprehensif dengan hal-hal yang harus dilakukan dan tempat tinggal. 
          Yang paling penting, Traveller adalah pelarian harian Anda ke destinasi impian. 
          </p>
        </div>
      </section>
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

    <!-- Js Plugins -->
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
</body>
</html>