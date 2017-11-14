<?php

if(count($_POST)>0){
	$user = AlumnData::getById($_POST["alumn_id"]);
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

	$user->c1_fullname = $_POST["c1_fullname"];
	$user->c1_address = $_POST["c1_address"];
	$user->c1_phone = $_POST["c1_phone"];
	$user->c1_note = $_POST["c1_note"];

	$user->user_id = $_SESSION["user_id"];


	$u = $user->update();
Core::alert("Actualizado Exitosamente!");
print "<script>window.location='index.php?view=team&id=$_POST[tid]';</script>";


}


?>