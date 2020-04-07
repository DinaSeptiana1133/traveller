<?php
if(isset($_SESSION["login"])){
    header("Location: index.php");
    exit;
}
require_once 'config/db.php';

if(isset($_POST["login"])) {
    $username = $_POST["name"];
    $password=$_POST["password"];

    $result = mysqli_query($db, "SELECT * FROM users WHERE name = '$username'");

    // cek username
    if(mysqli_num_rows($result) === 1){
        // cek pwd
        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row["password"])){

            // set session
            $_SESSION["login"] = true;


            header("Location:indexa.php");
            exit;
        }
    }
    $error = true;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/js/jquery.min.js">
    <link rel="stylesheet" href="assets/js/popper.js">
    <style>
        .bg{
            background: url(assets/img/f7c4485e4056095db603ae14f84343dc.jpg) no-repeat;
            width: 100%;
            height: 100vh;
        }
        .form-container{
            border: 0px solid white;
            padding: 50px 60px;
            margin-top: 20vh;
            -webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
            -moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
            box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
        }
    </style>
</head>
<body>
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <!-- form start -->
                <form action="" class="form-container" method="post" autocomplete="off">
                    <h1 class="text-center">
                        LOGIN
                    </h1>

                    <?php if (isset($error)) : ?>
                        <div class="alert alert-danger alert-dismissible">
                            <button class="close" data-dismiss="alert"> &times;</button>
                            Username & Password tidak sesuai
                        </div>
                    <?php endif; ?>

                    <div class="form-group">
                        <label> Username </label>
                        <input type="text" name="name" class="form-control" placeholder="Username">
                    </div>
                    <div class="form-group">
                        <label> Password </label>
                        <input type="password" name="password" class="form-control" placeholder="Password">
                    </div>
                    <button type="submit" name="login" class="btn btn-success btn-block"> Login </button>
                </form>
                <!-- form end-->
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>
</body>
</html>