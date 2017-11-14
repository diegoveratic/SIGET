<?php 



 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title>Equivalencias</title>
 	<link rel="stylesheet" type="text/css" href="estilos.css">
	<link href="css/estilos2.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 	<meta charset="utf-8">
 	<meta charset="utf-8">
 </head>
 <body bgcolor="#CED8F6" >
 	<center><div class="alert alert-info">
			<h1>Consulta De Equivalencias</h1>
			</div>
			 <a href="index.html"><img src="images/atras.png"></a>
 	<table border="1px" bgcolor="#81DAF5">
 	<td>
 		<form action="busqueda_ads.php" method="post">
 			<div class="alert alert-info">
			<h3>
 			Consulte por:
 			<select name="opcion">
 				<option value="nada">Ninguna opcion</option>
 				<option value="mes">- Mes</option>
 				<option value="turno">- Turno</option>
 				<option value="taller">- Taller nº</option>
 				
 			</select><br> <br><br>
 			<input type="text" name="busca" placeholder="Ingrese su busqueda">

 			<input type="submit" name="siguiente" value="Buscar">
<br> <br> En caso de no elegir una opción, <br> se listarán todas las mesas existentes.
 			</h3>
			</div>
 		</form>
 	</td>
 	</table>
 	</center>
 </body>
 </html>