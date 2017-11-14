<html> 
<body> 
<?php
include("libreria/motor.php"); 
$result = mysql_query("SELECT materia,curso,docente,mes,dia,hora FROM mesaregular", $link); 
echo "<table border = '1'> \n"; 
echo "<tr><td>Materia</td><td>Curso</td><td>Docente</td><td>Mes</td><td>Dia</td><td>Hora</td></tr> \n"; 
while ($row = mysql_fetch_row($result)){ 
       echo ""<tr><td>$row[0]</td><td>$row[1]</td><td>$row[2]</td><td>$row[3]</td><td>$row[4]</td><td>$row[5]</td>/tr> \n"; 
} 
echo "</table> \n"; 
?> 
</body> 
</html> 