<?php
	require_once('auth.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><link rel="stylesheet" href="code/style.css" /><link rel="stylesheet" href="code/menu_style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>VDoc+: Your ailment</title>
</head>

<body>

<div id="header" align="right">Welcome <?php echo $_SESSION['SESS_FIRST_NAME'];?> | <a href="logout.php" target="_parent">Logout</a></div>

<ul id="menu">
<li><a href="member-index.php" target="mainFrame">Home</a></li>
<li><a href="symptoms.php" target="mainFrame">Evaluate Symptoms</a></li>
<li><a href="#" target="mainFrame">Ailments</a>
	<ul>
    <li><a href="#" target="mainFrame">Lung Diseases</a><ul><li><a href="bronchitis.php" target="mainFrame">Bronchitis</a></li><li><a href="asthma.php" target="mainFrame">Asthma</a></li><li><a href="tuberculosis.php" target="mainFrame">Tuberculosis</a></li></ul></li>
    <li><a href="#" target="mainFrame">STD</a><ul><li><a href="aids.php" target="mainFrame">AIDS</a></li><li><a href="gonorrhea.php" target="mainFrame">Gonorrhea</a></li><li><a href="syphilis.php" target="mainFrame">Syphilis</a></li></ul></li>
    <li><a href="#" target="mainFrame">Cancer</a><ul><li><a href="lung-cancer.php" target="mainFrame">Lung</a></li><li><a href="mouth-cancer.php" target="mainFrame">Mouth</a></li><li><a href="breast-cancer.php" target="mainFrame">Breast</a></li></ul></li>
    <li><a href="diabetes.php" target="mainFrame">Diabetes</a></li>
    <li><a href="heart.php" target="mainFrame">Heart Ailments</a></li>
    </ul>
</li>

<li><a href="#" target="mainFrame">Health Tips</a>
	<ul>
    <li><a href="#" target="mainFrame">Lung Diseases</a><ul><li><a href="bronchitis-tips.php" target="mainFrame">Bronchitis</a></li><li><a href="asthma-tips.php" target="mainFrame">Asthma</a></li><li><a href="tuberculosis-tips.php" target="mainFrame">Tuberculosis</a></li></ul></li>
    <li><a href="#" target="mainFrame">STD</a><ul><li><a href="aids-tips.php" target="mainFrame">AIDS</a></li><li><a href="gonorrhea-tips.php" target="mainFrame">Gonorrhea</a></li><li><a href="syphilis-tips.php" target="mainFrame">Syphilis</a></li></ul></li>
    <li><a href="#" target="mainFrame">Cancer</a><ul><li><a href="lung-cancer-tips.php" target="mainFrame">Lung</a></li><li><a href="mouth-cancer-tips.php" target="mainFrame">Mouth</a></li><li><a href="breast-cancer-tips.php" target="mainFrame">Breast</a></li></ul></li>
    <li><a href="diabetes-tips.php" target="mainFrame">Diabetes</a></li>
    <li><a href="heart-tips.php" target="mainFrame">Heart Ailments</a></li>
    </ul>
</li>
<li><a href="#" target="mainFrame">First-Aid</a>
<ul>
<li><a href="electric-shock.php" target="mainFrame">Electric Shock</a></li>
<li><a href="burns.php" target="mainFrame">Burns</a></li>
<li><a href="cuts-scrapes.php" target="mainFrame">Cuts and Scrapes</a></li>
<li><a href="nosebleed.php" target="mainFrame">Nosebleed</a></li>
<li><a href="resuscitation.php" target="mainFrame">Resuscitation</a></li>

</ul>

</li>

<li><a href="#" target="mainFrame">Links</a>
	<ul>
    <li><a href="hospital.php" target="mainFrame">Hospitals</a></li>
   
    <li><a href="ngo.php" target="mainFrame">NGOs</a></li>
    </ul>
</li>

<li><a href="medical-history.php" target="mainFrame">Medical History</a></li>

</ul>
<h1>Evaluate Symptoms</h1><hr /><br />

<?php
$conn = mysql_connect("localhost","root","");
mysql_select_db("vdocdatabase",$conn);
$query = "SELECT d from (SELECT disease d, SUM(answers) s from questions group 
			by d order by s desc limit 1) as q;";
$execute=mysql_query($query);
echo("<h2>You most probably suffer from the following ailment:<h2>");
while($result = mysql_fetch_array($execute)){
	$res = $result["d"];
	echo("<p>$res</p>");}
$query1 = "drop table questions;";
$execute1=mysql_query($query1);
mysql_close($conn);


$id = $_SESSION['SESS_MEMBER_ID'];
$conn2 = mysql_connect("localhost","root","");
mysql_select_db("vdocdatabase",$conn2);
$query2 = "select medical_history from userinfo where member_id='$id'";
$execute2=mysql_query($query2);

$result2 = mysql_fetch_array($execute2);
$new_history = $result2['medical_history']."<br>***VDoc+ diagnosed you with ".$res."***<br>";
$query3= "update userinfo set medical_history='$new_history' where member_id='$id'";
$execute3 = mysql_query($query3);
mysql_close($conn2);

$conn4 = mysql_connect("localhost","root","");
mysql_select_db("vdocdatabase",$conn4);
$query4 = "select * from disease where disease='$res'";
$execute4 = mysql_query($query4);
while($result4 = mysql_fetch_array($execute4)){
echo("<h2>About $res</h2>");
echo("<p>".$result4['about']."</p>");
echo("<h2>Suggested treatment</h2>");
echo("<p>".$result4['cure']."</p>");
}

mysql_close($conn4);
?>
<a href="symptoms.php"><p>Check for other symptoms</p></a>

</body>
</html>
