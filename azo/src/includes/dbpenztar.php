<?php

function insertItem($conn, $tomb) {
  $sql = <<<EOT
  insert into tarca
  (penz, leiras)
  values
  ( '{$tomb['penz']}', '{$tomb['leiras']}')
EOT;
  if(mysqli_query($conn, $sql)) {
    return true;
  }else {
    echo mysqli_error($conn);
    return false;
  }
}


function getItems($conn) {
  $sql = <<<EOT
  select az, penz, leiras, date(datum)
  as datum
  from tarca;
EOT;
  $res = mysqli_query($conn, $sql);
  $datas = array();
  while($sor = mysqli_fetch_assoc($res)) {
    array_push($datas, array(
      $sor['az'],
      $sor['penz'],
      $sor['leiras'],
      $sor['datum']
    ));
  }
  return $datas;
}

function getBalance($conn) {
  $sql = "select sum(penz) as balance from tarca";
  $sor = 0;
  if(mysqli_query($conn, $sql)) {
    $sor = mysqli_fetch_assoc($res);
  }else {
    echo "Hiba! " . mysqli_error($conn);
  }
  return $sor['balance'];
}
