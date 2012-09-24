<?php
	require_once('auth.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>VDoc+: Hospitals </title>
<link rel="stylesheet" href="code/menu_style.css" />
<link rel="stylesheet" href="code/form_style.css" /><link rel="stylesheet" href="code/style.css" />

<script type="text/javascript" language="javascript" src="ajax.js"></script>
<script type="text/javascript" language="javascript" src="tools.js"></script>
<script type="text/javascript" language="javascript" src="autosuggest-city.js"></script>
<script type="text/javascript" language="javascript">



</script>
<style type="text/css">
<!--
.searchList {
	margin: 0px;
	padding: 0px;
	list-style-type: none;
	position: absolute;
	width: 350px;
	height: 160px;
	
	overflow:-moz-auto-vertical;
	
}
.wrapSearch {
}
#input {
	width: 220px;
	padding: 2px;
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 11px;
}
html, body {
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 11px;
}
.searchList li {
	display: block;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #D6D6D6;
	width: 98%;
	
}
.searchList li a{
	display: block;
	color: #006;
	text-decoration: none;
	background-color: #F9F9F9;
	padding-top: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
	padding-left: 8px;
	
}
.searchList li a:hover{
	color: #FFF;
	background-color: #555;
}
.listWrap {
	visibility: hidden;
	
}
-->
</style>
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
<h1>Hospitals</h1><br /><hr />
<form id="form" name="ngo" action="hospital-results.php" method="post" target="mainFrame">

<fieldset><legend>Enter your city name</legend>
<ol>
<li>
    <label for="s1">City</label><input name="city" type="text" id="input1"  onkeyup="autoSuggest(this.id, 'listWrap1', 'searchList1', 'input1', event);" onkeydown="keyBoardNav(event, this.id);" />   
 
  <div class="listWrap" id="listWrap1">
  <ul class="searchList" id="searchList1">
  </ul>
  </div>
</li>
</ol></fieldset>

<fieldset><button type="submit" name="submit" id="submit">Go</button></fieldset>

</form>
</body>
</html>
