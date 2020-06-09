<?php
include '../src/includes/dbpenztar.php';
include '../src/includes/db.php';

$conn = connectDb();
var_dump(getItems($conn));
closeDb($conn);
