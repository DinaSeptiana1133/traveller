<?php
session_start();

if(!isset($_SESSION["login"])){
    header("Location: index.php");
    exit;
}

require_once 'config/db.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Traveller | Edit Detail</title>
  <link rel="shortcut icon" href="../assets/images/index/traveller.jpg">
  <link href="assets/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>

</head>

<body id="page-top">
  <div id="wrapper">

    <!--start of sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
      <a class="sidebar-brand d-flex align-items-center justify-content-center text-white" disabled="">
        <div class="sidebar-brand-text mx-3">Traveller</div>
      </a>
      <hr class="sidebar-divider">

      <!-- Home -->
      <li class="nav-item">
        <a class="nav-link" href="indexa.php">
          <i class="fas fa-fw fa-home"></i>
          <span>Home</span>
        </a>
      </li>

      <!-- Contact -->
      <li class="nav-item">
        <a class="nav-link" href="cas.php">
          <i class="fas fa-fw fa-phone"></i>
          <span>Contact | About Us</span>
        </a>
      </li>
      
      <!-- Detail -->
      <li class="nav-item active">
        <a class="nav-link" href="detail.php">
          <i class="fas fa-fw fa-table"></i>
          <span>Detail</span></a>
      </li>

      <hr class="sidebar-divider d-none d-md-block">
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <ul class="navbar-nav ml-auto">
            <div class="topbar-divider d-none d-sm-block"></div>
            <!-- Logout -->
            <li class="nav-item dropdown no-arrow">
              <a class="dropdown-item" href="logout.php" data-toggle="modal" data-target="#logoutModal">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                Logout
              </a>
            </li>
          </ul>
        </nav>
        <!-- End of Topbar -->

    </div>
    <!-- End of Content Wrapper -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 text-gray">Edit Detail</h1>
          </div>




          <?php
//ambil data berdasarkan parameter GET id
$dtl = mysqli_fetch_array(mysqli_query($db, "SELECT * FROM detail where id='$_GET[id]'"));

if(isset($_POST['submit'])){

  //buat variabel dari setiap field name form produk
$title= mysqli_real_escape_string($db, $_POST['title']);    //varibel field title
$content= mysqli_real_escape_string($db, $_POST['content']);    //varibel field content

$file=$_FILES['foto']['tmp_name'];    //temporary foto
$nama_file=$_FILES ['foto']['name']; //ambil nama file
$ukuran=$_FILES['foto']['size'];    //ukuran file
$ekstensifoto = explode('.',$nama_file);
$ekstensifoto = strtolower(end($ekstensifoto));  //extensi setelah .(titik)

 if(empty($title)){    //jika nama kosong maka muncul pesan
        $error="<p style='color:#F00;'>* Masukan Title Produk</p>";
    }
    elseif(empty($content)){  //jika deskripsi kosong maka muncul pesan
        $error="<p style='color:#F00;'>* Masukan content Produk</p>";
    }
    else{
    if(empty($file)){
        $save=mysqli_query($db, "UPDATE detail set title='$title',content='$content' where id='$_GET[id]'");
        if($save){ //jika update berhasil maka muncul pesan dan menuju ke halaman produk
                   echo "<script>alert('Data Berhasil disimpan ke database');document.location='detail.php'</script>";
        }else{  //jika update gagal maka muncul pesan
                 echo "<script>alert('Proses simpan gagal, coba kembali');document.location='detail.php'</script>";
         }

    }else
    if($ukuran > 2000000){
        $error="<p style='color:#F00;'>* Ukuran File Maksimal 2MB</p>";
    }
    elseif(strlen($nama_file) > 225){
        $error="<p style='color:#F00;'>* Nama File Maksimal 225 Karakter</p>";
    }
    elseif($ekstensifoto !="jpg" && $ekstensifoto !="png" && $ekstensifoto !="jpeg"){
        $error="<p style='color:#F00;'>* Format File yang diizinkan hanya .jpg/.png/.jpeg</p>";
    }
    else{  //jika semua sudah terpenuhi maka simpan ke tb_produk

      $namaFileBaru = uniqid();
      $namaFileBaru .= '.';
      $namaFileBaru .= $ekstensifoto;

    move_uploaded_file($file,'../assets/images/detail/'.$namaFileBaru);    //upload foto baru

    $save=mysqli_query($db, "UPDATE detail set title='$title',content='$content',foto='$namaFileBaru' where id='$_GET[id]'");
    if($save){ //jika update berhasil maka muncul pesan dan menuju ke halaman produk
        echo "<script>alert('Data Berhasil disimpan ke database');document.location='detail.php'</script>";
    }else{  //jika update gagal maka muncul pesan
         echo "<script>alert('Proses simpan gagal, coba kembali');document.location='detail.php'</script>";
    }
}
}
}
?>

          <!-- Content Row -->
          <div class="row">
            <form action="" method="post" enctype="multipart/form-data">
              <input type="hidden" name="id" value="<?php echo $dtl["id"]; ?> ">
              <input type="hidden" name="fotoLama" value="<?php echo $dtl["foto"]; ?> ">

              <!-- Foto -->
              <div class="col-xl-12 mb-2">
                <div class="card shadow mb-4">
                  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Foto</h6>
                  </div>
                  <div class="card-body">
                    <div>
                      <img src="../assets/images/detail/<?php echo $dtl["foto"]; ?>" width="80%">
                    </div> <br>
                    <input type="file" name="foto" id="foto">
                  </div>
                </div>
              </div>

              <!-- Judul -->
              <div class="col-xl-12 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Title</div>
                          <input class="col-sm-12" type="text" name="title" id="title" value="<?php echo $dtl["title"]; ?>">
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- content -->
              <div class="col-xl-12 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Content</div>
                          <textarea cols="140" rows="5" name="content"><?php echo $dtl["content"]; ?></textarea>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- submit -->
              <div class="container text-center">
                <button class="btn btn-primary" type="submit" name="submit">Submit</button>
              </div>

            </form>
          </div>
          <!-- end of content row -->

      </div>
      <!-- End of Main Content -->
      
      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 
              <script>
                document.write(new Date().getFullYear())
              </script>
            </span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Logout?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Apakah anda yakin akan logout?</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="index.php">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/sb-admin-2.min.js"></script>

</body>
</html>