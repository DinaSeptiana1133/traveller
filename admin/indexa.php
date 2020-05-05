<?php
session_start();

if(!isset($_SESSION["login"])){
    header("Location: index.php");
    exit;
}

require_once 'config/db.php';
function query($query){
  global $db;
  
$result = mysqli_query($db, $query);
$rows = [];
while($row = mysqli_fetch_assoc($result)){
  $rows[] = $row;
}
return $rows;
}

$pgs = query("SELECT * FROM pages");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Traveller</title>
  <link rel="shortcut icon" href="../assets/images/index/traveller.jpg">
  <link href="assets/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center text-white" disabled="">
        <div class="sidebar-brand-text mx-3">Traveller</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Nav Item - Home -->
      <li class="nav-item active">
        <a class="nav-link" href="indexa.php">
          <i class="fas fa-fw fa-home"></i>
          <span>Home</span>
        </a>
      </li>

      <!-- Nav Item - Contact -->
      <li class="nav-item">
        <a class="nav-link" href="cas.php">
          <i class="fas fa-fw fa-phone"></i>
          <span>Contact | About Us</span>
        </a>
      </li>
      
      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="detail.php">
          <i class="fas fa-fw fa-table"></i>
          <span>Detail</span></a>
      </li>

      <!-- Nav Item - Information -->
      <li class="nav-item">
        <a class="nav-link" href="info.php">
          <i class="fas fa-fw fa-folder"></i>
          <span>Information</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
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

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
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
        <!-- <div class="container-fluid"> -->


          <!-- Content Row -->
          <!-- <div class="row"> -->
          <div class="container text-right"><a href="tambah.php">Tambah Data</a></div>

           <br>

           <table class="container table table-sm table-hover table-stripped">
          <thead class=" table-secondary text-dark text-center">
            <th>No</th>
            <th>Aksi</th>
            <th>Foto</th>
            <th>Title</th>
            <th>Content</th>
          <thead

        <?php $i=1; ?>
        <?php foreach($pgs as $row) : ?>
        <tr>
            <td><?php echo $i; ?></td>
            <td>
                <a href="edit.php?id=<?php echo $row["id"]; ?>">Edit</a> |
                <a href="hapus.php?id=<?php echo $row["id"]; ?>" onclick="return confirm('serius?');">Hapus</a>
            </td>
            <td><img src="../assets/images/index/<?php echo $row["foto"]; ?>" width="70" alt=""></td>
            <td><?php echo $row["title"]; ?></td>
            <td><?php echo $row["content"]; ?></td>
        </tr>
        <?php  $i++; ?>
        <?php endforeach; ?>
    </table>

        <!-- /.container-fluid -->

      <!-- </div> -->
      <!-- End of Main Content -->
      
      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website <script>document.write(new Date().getFullYear());</script></span>
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