<?php

$limit = 10;

if (!isset($_POST['input']))
exit;

$input = trim($_POST['input']);

require_once "dbconfig.php";

mysql_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD) or die("Could not connect to host");
mysql_select_db(DB_DATABASE) or die("Could not connect to database");

// Select the data from the mysql

// change below according to your own needs.

$sql = "SELECT `name` FROM `city` WHERE `name` LIKE '$input%' LIMIT $limit";

$result = mysql_query($sql);

if (!$result || !mysql_num_rows($result))
exit;

include_once "headers.php";

echo "<response>";

while ($row = mysql_fetch_array($result))
{
   $keywords = $row['name'];
   echo "<keywords>". $keywords ."</keywords>";   	
}

echo "</response>";

?>