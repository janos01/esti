<?php
include 'includes/db.php';
include 'includes/dbpenztar.php';

echo file_get_contents('templates/head.tpl');
echo file_get_contents('templates/menu.tpl');

$conn = connectDb();
if(insertItem($conn, $_POST)) {
  $msg ="Sikeres felvétel";
}else {
  $msg = "Hiba! A felvétel nem sikerült!";
}
closeDb($conn);

$page = file_get_contents('templates/felvesz.tpl');
$page = str_replace('{ msg }', $msg, $page);
echo $page;

echo file_get_contents('templates/foot.tpl');
