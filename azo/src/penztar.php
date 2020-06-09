<?php

session_start();

echo file_get_contents('templates/head.tpl');
echo file_get_contents('templates/menu.tpl');


if(isset($_SESSION['login_user'])) {
  echo file_get_contents('templates/penztar.tpl');
}else {
  echo "Nem vagy bejelentkezve!";
}

echo file_get_contents('templates/foot.tpl');
