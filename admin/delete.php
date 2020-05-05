<?php
session_start();

if(!isset($_SESSION["login"])){
    header("Location: index.php");
    exit;
}

require 'config/db.php';
function hapus($id) {
    global $db;
    mysqli_query($db, "DELETE FROM contact WHERE id = $id");
    return mysqli_affected_rows($db);
}

$id = $_GET["id"];

if( hapus($id) > 0){
    echo "
        <script> alert('data berhasil dihapus');
        document.location.href = 'cas.php';
        </script>
    ";
} else {
    echo "<script> alert('data gagal dihapus');
    document.location.href = 'cas.php';
    </script>
    ";
    }
?>