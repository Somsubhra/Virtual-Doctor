<?php
	require_once('auth.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

</head>

<body>





<?php
$conn = mysql_connect("localhost","root","");
mysql_select_db("vdocdatabase",$conn);
$s1 = $_POST["s1"];
$s2 = $_POST["s2"];
$s3 = $_POST["s3"];
$s4 = $_POST["s4"];
$s5 = $_POST["s5"];



$query = "select * from disease where s1='$s1' or s1='$s2' or s1='$s3' or s1='$s4' or s1='$s5'
									or s2='$s1' or s2='$s2' or s2='$s3' or s2='$s4' or s2='$s5'
									or s3='$s1' or s3='$s2' or s3='$s3' or s3='$s4' or s3='$s5'
									or s4='$s1' or s4='$s2' or s4='$s3' or s4='$s4' or s4='$s5'
									or s5='$s1' or s5='$s2' or s5='$s3' or s5='$s4' or s5='$s5'";
$execute=mysql_query($query);

while($result = mysql_fetch_array($execute)){
	//echo($result['disease']."<br>");
	/*echo($result['s1']."<br>");
	echo($result['s2']."<br>");
	echo($result['s3']."<br>");
	echo($result['s4']."<br>");
	echo($result['s5']."<br>");*/
	$s11=$result['s1'];
	$s22=$result['s2'];
	$s33=$result['s3'];
	$s44=$result['s4'];
	$s55=$result['s5'];
	$disease=$result['disease'];
	$query1 = "create table questions(
				n int AUTO_INCREMENT primary key,
				disease varchar(15) not null,
				questions varchar(15) not null,
				answers int(1) null
				)";
	$execute1=mysql_query($query1);
	
	if($s11!=$s1 && $s11!=$s2 && $s11!=$s3 && $s11!=$s4 && $s11!=$s5){
	$query2  =	"insert questions(disease, questions) values('$disease','$s11');";
			
	$execute2=mysql_query($query2);
	}
	
	if($s22!=$s1 && $s22!=$s2 && $s22!=$s3 && $s22!=$s4 && $s22!=$s5){
	$query3  =	"insert questions(disease, questions) values('$disease','$s22');";
			
	$execute3=mysql_query($query3);}
	
	
	
	if($s33!=$s1 && $s33!=$s2 && $s33!=$s3 && $s33!=$s4 && $s33!=$s5){
	$query4  =	"insert questions(disease, questions) values('$disease','$s33');";
			
	$execute4=mysql_query($query4);}
	
	
	
	if($s44!=$s1 && $s44!=$s2 && $s44!=$s3 && $s44!=$s4 && $s44!=$s5){
	$query5  =	"insert questions(disease, questions) values('$disease','$s44');";
			
	$execute5=mysql_query($query5);}
	
	
	
	if($s55!=$s1 && $s55!=$s2 && $s55!=$s3 && $s55!=$s4 && $s55!=$s5){
	$query6  =	"insert questions(disease, questions) values('$disease','$s55');";
			
	$execute6=mysql_query($query6);
	}
	}  
	mysql_close($conn);
    
	header("location:questions.php");

?>
</body>
</html>
