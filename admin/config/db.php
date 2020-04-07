<?php
session_start();

$db_host = "localhost";
$db_name = "traveller";
$db_user = "root";
$db_pass = "";

$db = new mysqli($db_host, $db_user, $db_pass, $db_name);
if ($db->connect_error){
    die('Error : '. $db->connect_errno);
}
?>