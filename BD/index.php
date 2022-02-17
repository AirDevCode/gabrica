<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET,POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$servidor = "localhost:3308"; $usuario = "root"; $contrasenia = ""; $nombreBaseDatos = "gabrica";
$conexionBD = new mysqli($servidor, $usuario, $contrasenia, $nombreBaseDatos);

if (isset($_GET["read"])){
    $sqlLeads = mysqli_query($conexionBD,"SELECT * FROM leads WHERE id=".$_GET["read"]);
    if(mysqli_num_rows($sqlLeads) > 0){
        $leads = mysqli_fetch_all($sqlLeads,MYSQLI_ASSOC);
        echo json_encode($leads);
        exit();
    }
    else{  echo json_encode(["success"=>0]); }
}

if(isset($_GET["insert"])){
  $current_date = date('Y-m-d H:i:s');
  $data = json_decode(file_get_contents("php://input"));
  $name=$data->nombre;
  $nit=$data->nit;
  $place=$data->place;
  $team=$data->team;
  $city=$data->city;
  $promotor=$data->promotor;
  $rtc=$data->rtc;
  $captain=$data->captain;
  $checked=$data->checked;
      if(($name!="")&&($nit!="")&&($checked!="")){
          
  $sqlEmpleaados = mysqli_query($conexionBD,"INSERT INTO leads(id, client_name, nit, place, team, city, promotor, RTC, captain, terms, ip, reg_date) VALUES('$name','$nit','$place', '$team', '$city', '$promotor', '$rtc', '$captain', '$checked', '$current_date') ");
  echo json_encode(["success"=>1]);
  }
  exit();
}

else{ echo json_encode([["success"=>0]]); }
?>