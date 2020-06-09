<?php
include 'includes/db.php';
include 'includes/dbpenztar.php';

echo file_get_contents('templates/head.tpl');
echo file_get_contents('templates/menu.tpl');

$conn = connectDb();
$tetelek = getItems($conn);
closeDb($conn);


$tableRows = "";
foreach($tetelek as list($az, $penz, $leiras, $datum)) {
  $tableRow = file_get_contents('templates/tableRow.tpl');
  $tableRow = str_replace('{ az }', $az, $tableRow);
  $tableRow = str_replace('{ penz }', $penz, $tableRow);
  $tableRow = str_replace('{ leiras }', $leiras, $tableRow);
  $tableRow = str_replace('{ datum }', $datum, $tableRow);
  $tableRows .= $tableRow;
}

$page = file_get_contents('templates/lista.tpl');
$page = str_replace('{ tableRows }',   $tableRows, $page);
echo $page;

echo file_get_contents('templates/foot.tpl');
