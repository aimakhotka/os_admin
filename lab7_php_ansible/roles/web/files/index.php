<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title> PostgreSQL SELECT</title>

</head>
<body>
    <?php
    $db = pg_connect("host=192.168.56.3 port=5432 dbname=demo user=postgres password=postgres");
    $result = pg_query($db, "select * from airports limit 30");
echo "<table border=2>";
while($row=pg_fetch_assoc($result)){echo "<tr>";
    echo "<td align= 'center' width='200'> " . $row['airport_code'] . "</td>";
    echo "<td align= 'center' width='200'> " . $row['airport_name'] . "</td>";
    echo "<td align= 'center' width='200'> " . $row['city'] . "</td>";
    echo "<td align= 'center' width='200'> " . $row['coordinates'] . "</td>";
    echo "<td align= 'center' width='200'> " . $row['timezone'] . "</td>";
    echo "<td align= 'center' width='200'> " . $row['airport_code'] . "</td>";
    echo "</tr>";} 
    echo "</table>";
?>
</div>
</body>
</html>
