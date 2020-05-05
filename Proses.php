<?php
require_once 'admin/config/db.php';

$name=$_POST['name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$message=$_POST['message'];

$query=mysqli_query($db,"INSERT INTO contact (name,email,phone,message) value('$name','$email','$phone','$message')");
if($query) {
    echo "Data berhasil dikirim";
?>
    <a href="cas.php">Kembali</a>
<?php
} else {
    echo "Gagal input data";
}
?>