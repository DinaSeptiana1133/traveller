<?php
  session_start();

if(!isset($_SESSION["login"])){
  header("Location: index.php");
  exit;
}

include('config/db.php');
  
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Traveller | Tambah Data</title>
  <link rel="shortcut icon" href="../assets/images/index/traveller.jpg">
  <link href="assets/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <link href="assets/css/style.css" rel="stylesheet">
  </head>
  <body>
      <center>
        <h1 class="mt-4 text-primary">Tambah Data</h1> <a class="container" href="indexa.php">Cancel</a>
      <center>
      <form method="POST" action="tambah1.php" enctype="multipart/form-data" >
      <section class="base">
        <div>
          <label>Title :</label>
          <input type="text" name="title" autofocus="" required="" />
        </div>
        <div>
          <label>Content :</label>
         <input type="text" name="content" required="" />
        </div>
        <div>
          <label>Foto :</label>
         <input type="file" name="foto" required="" />
        </div>
        <div>
         <button class="btn btn-primary" type="submit">Send</button>
        </div>
        </section>
      </form>
  </body>
</html>
