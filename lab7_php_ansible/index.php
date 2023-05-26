<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> PostgreSQL Select </title>
</head>

<body>

<?php
date_default_timezone_set('Europe/Moscow')
$db = pg_connect("host=192.168.56.3 port=5432 dbname=demo user=postgres password=postgres");
$result = pg_query("$db", "SELECT * FROM airports limit 5");
echo "<table border=2>";
while ($row=rg_fetch_assoc($result)){echo "<tr>";
echo "<td align='center' wigth='200'>" $row['airport_code'] "</td>";
echo "<td align='center' wigth='200'>" $row['airport_name'] "</td>";
echo "<td align='center' wigth='200'>" $row['city'] "</td>";
echo "<td align='center' wigth='200'>" $row['coordinates'] "</td>";
echo "<td align='center' wigth='200'>" $row['timezone'] "</td>";
echo "</tr>";}
echo "</table>";
?>
</div>
</body>

</html>
