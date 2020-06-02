<?php
include 'includes/db.php';

session_start();

$user = $_POST['user'];
$pass = $_POST['pass'];

$conn = connectDb();


if(authUser($user, $pass)) {
  $_SESSION['login_user']=$user;
  header("Location: penztar.php");
}else {
  echo "Hiba! Sikertelen";
}
