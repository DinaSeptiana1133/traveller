<?php
require_once 'admin/config/db.php';

if(isset($_POST['submit'])){

$name       =$_POST['name'];
$email      =$_POST['email'];
$phone      =$_POST['phone'];
$message    =$_POST['message'];

$query= "INSERT INTO contact (name,email,phone,message) VALUES ('$name','$email','$phone','$message')";
$result = mysqli_query($db, $query);

if($result) {
    echo "Data berhasil dikirim";
?>
    <a href="cas.php">Kembali</a>
<?php
} else {
    echo "Gagal input data";
}
}
?>