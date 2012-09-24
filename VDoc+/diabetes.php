<?php
	require_once('auth.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><link rel="stylesheet" href="code/menu_style.css" /><link rel="stylesheet" href="code/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>VDoc+: Diabetes</title>
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


<h1>Diabetes</h1><hr>
<p>
Diabetes mellitus, often simply referred to as diabetes, is a group of metabolic diseases in which a person has high blood sugar, either because the body does not produce enough insulin, or because cells do not respond to the insulin that is produced. This high blood sugar produces the classical symptoms of polyuria (frequent urination), polydipsia (increased thirst) and polyphagia (increased hunger).
<br />
The three main types of diabetes mellitus (DM) are:
<br />
    Type 1: DM results from the body's failure to produce insulin, and presently requires the person to inject insulin. (Also referred to as insulin-dependent diabetes mellitus (IDDM) or "juvenile" diabetes)<br />
    Type 2: DM results from insulin resistance, a condition in which cells fail to use insulin properly, sometimes combined with an absolute insulin deficiency. (Formerly referred to as noninsulin-dependent diabetes mellitus (NIDDM) or "adult-onset" diabetes)<br />
    Type 3: Gestational diabetes is when pregnant women, who have never had diabetes before, have a high blood glucose level during pregnancy. It may precede development of type 2 DM.<br />

Other forms of diabetes mellitus include congenital diabetes, which is due to genetic defects of insulin secretion, cystic fibrosis-related diabetes, steroid diabetes induced by high doses of glucocorticoids, and several forms of monogenic diabetes.

All forms of diabetes have been treatable since insulin became available in 1921, and type 2 diabetes may be controlled with medications. Both types 1 and 2 are chronic conditions that usually cannot be cured. Pancreas transplants have been tried with limited success in type 1 DM; gastric bypass surgery has been successful in many with morbid obesity and type 2 DM. Gestational diabetes usually resolves after delivery. Diabetes without proper treatments can cause many complications. Acute complications include hypoglycemia, diabetic ketoacidosis, or nonketotic hyperosmolar coma. Serious long-term complications include cardiovascular disease, chronic renal failure, and diabetic retinopathy (retinal damage). Adequate treatment of diabetes is thus important, as well as blood pressure control and lifestyle factors such as smoking cessation and maintaining a healthy body weight.
</p></body>
</html>
