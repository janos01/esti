<?php

include "config.php";

function connectDb() {
  global $db;
                         /* gépnév, felhasználó, jelszó, adatbázisnév */
  $conn = mysqli_connect($db['host'], $db['user'], $db['pass'], $db['name']);
  if(!$conn) {
    die("Hiba! A kapcsolódás sikertelen!");
  }
  mysqli_set_charset($conn, 'utf8');
  return $conn;
}

function closeDb($conn) {
  mysqli_close($conn);
}

function authUser($user, $pass) {
  $authOk = false;
  $conn = connectDb();
  //azonmosítás
  $sql = "select user from users where user='$user' and pass='$pass'";
  $res = mysqli_query($conn, $sql);
  if(mysqli_num_rows($res)>0) {
    $authOk = true;
  }
  closeDb($conn);
  return $authOk;
}
