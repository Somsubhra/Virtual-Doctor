<?php
	require_once('auth.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><link rel="stylesheet" href="code/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>VDoc+: Home</title>
<link rel="stylesheet" href="code/menu_style.css" />
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
<h1>Home</h1><hr>
<p>Welcome to VDoc+, your own virtual doctor, your own best friend. It is said "Health is Wealth". So here we are, to provide you your own virtul doctor. In VDoc+ you can evaluate your own symptoms. Give VDoc+ the symptoms and it will give you the probable disease and even suggest the treatment. You can get information about various ailments and also get important health tips and first aid instructions. You can also get the details of your nearby hospitals and NGOs. VDoc+ is aimed at promoting the health conditions of all individuals, bust various myths about health care, etc.   </p>
</body>
</html>
