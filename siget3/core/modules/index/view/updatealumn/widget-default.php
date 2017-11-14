<?php

if(count($_POST)>0){
	$user = AlumnData::getById($_POST["id"]);

	$user->name = $_POST["name"];
	$user->lastname = $_POST["lastname"];
	$user->address = $_POST["address"];
	$user->phone = $_POST["phone"];
	$user->email = $_POST["email"];
	$user->sexo = $_POST["sexo"];
	$user->dni = $_POST["dni"];
	$user->nacimientofecha = $_POST["nacimientofecha"];
	$user->nacimientolugar = $_POST["nacimientolugar"];
	$user->cp = $_POST["cp"];
	$user->legajo = $_POST["legajo"];
	$user->edad = $_POST["edad"];
	$user->nacionalidad = $_POST["nacionalidad"];
	$user->update();

	$user->user_id = $_SESSION["user_id"];


	$u = $user->update();

	$at = new AlumnTeamData();
	$at->alumn_id = $u[1];
	$at->alumn_id = $_POST["id"];
	$at->update();




print "<script>window.location='index.php?view=contacts';</script>";


}


?>