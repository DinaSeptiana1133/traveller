<?php
session_start();

if(!isset($_SESSION["login"])){
    header("Location: index.php");
    exit;
}

require 'config/db.php';
// cek apakah tombol submit udah di klik belum
if(isset($_POST["submit"])){

    // var_dump($_POST);
    // var_dump($_FILES);
    // die;

    // cek data berhasil ditambah atau tidak
    if(tambah($_POST) > 0){
        echo "
            <script> alert('data berhasil ditambahkan');
            document.location.href = 'indexa.php';
            </script>
        ";
    } else {
        echo "<script> alert('data gagal ditambahkan');
        document.location.href = 'tambah.php';
        </script>
        ";
    }

}

function query($query){
  global $db;
  
// ambil data dari tabel pages
$result = mysqli_query($db, $query);
$rows = [];
while($row = mysqli_fetch_assoc($result)){
  $rows[] = $row;
}
return $rows;
}

function tambah($data){
  global $db;
  // ambil data dari setiap elemen form
  $title = $data["title"];
  $content = $data["content"];
  
  // upload gambar
  $foto = upload();
  if(!$foto){
      return false;
  }

  // query insert data
  $query = "INSERT INTO pages VALUES ('','$foto','$title','$content')";
  mysqli_query($db, $query);

  return mysqli_affected_rows($db);
}

function upload(){
  $namaFile = $_FILES['foto']['name'];
  $ukuranFile = $_FILES['foto']['size'];
  $error = $_FILES['foto']['error'];
  $tmpName = $_FILES['foto']['tmp_name'];

  // cek apakah tidak ada foto yang diupload
  if($error === 4){
      echo "<script> alert ('Pilih foto terlebih dahulu');
      </script>";
      return false;
  }

  // cek apakah yang diupload adalah foto atau bukan
  $ekstensifotoValid = ['jpg','jpeg','png'];
  $ekstensifoto = explode('.',$namaFile);
  $ekstensifoto = strtolower(end($ekstensifoto));
  if(!in_array($ekstensifoto, $ekstensifotoValid)){
      echo "<script> alert ('Yang anda upload bukan foto');
      </script>";
      return false;
  }

  // cek jika ukuran terlalu besar
  if($ukuranFile > 1000000){
      echo "<script> alert ('Ukuran foto terlalu besar');
      </script>";
      return false;
  }

  // lolos pengecekan, foto siap diupload
  // generate nama foto baru
  $namaFileBaru = uniqid();
  $namaFileBaru .= '.';
  $namaFileBaru .= $ekstensifoto;


  move_uploaded_file($tmpName, '../assets/images/index/'.$namaFileBaru);
  return $namaFileBaru;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tambah data</title>
</head>
<body>
    <h1>Tambah Data</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <ul>
            <li> 
                <label for="title"> Title </label>
                <input type="text" name="title" id="title" required>
            </li>
            <li>
                <label for="content"> Content : </label>
                <input type="text" name="content" id="content" required>
            </li>
            <li>
                <label for="foto"> Foto : </label>
                <input type="file" name="foto" id="foto" required>
            </li>
            <li>
                <button type="submit" name="submit">Submit</button>
            </li>
        </ul>
    </form>
</body>
</html>