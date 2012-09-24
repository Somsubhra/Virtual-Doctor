<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>VDoc+: Signup</title>
<link rel="stylesheet" href="code/form_style.css" />
<?php
	if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
		echo '<ul class="err">';
		foreach($_SESSION['ERRMSG_ARR'] as $msg) {
			echo '<li>',$msg,'</li>'; 
		}
		echo '</ul>';
		unset($_SESSION['ERRMSG_ARR']);
	}
?>
</head>

<body>

<div align="center">
<form id="form" action="register-exec.php" method="post" >
<h1>New User on VDoc+ ???<br /> Sign Up now!</h1><br /><br />
<fieldset>
<legend>Your details</legend>
<ol>
<li>
<label for=username>Username</label>
<input id="username" name="username" type="text" placeholder="Your username" required autofocus /></li>

<li><label for=age>Age</label>
<input id="age" name="age" type="text" placeholder="Your age" required /></li>

<li><label for=gender>Gender</label><input type="text" name="gender" id="gender" placeholder="Male or Female" /></li>
</ol></fieldset>


<fieldset>
<legend>Contact details</legend>
<ol><li>
<label for=address>Address</label>
<textarea id="address" name="address" rows=5 required placeholder="Your address"></textarea>
</li>

<li>
<label for=email>E-mail</label>
<input id="email" name="email" type="email" placeholder="Your e-mail ID" required />
</li>
</ol>
</fieldset>

<fieldset>
<legend>Health details</legend>


<ol>
<li><label for="blood_group">Blood Group</label><input type="text" name="blood_group" id="blood_group" /></li>
<li><label for="height">Height(in cm)</label><input type="text" name="height" id="height" /></li>
<li><label for="weight">Weight(in kg)</label><input type="text" name="weight" id="weight" /></li>
<li><label for=medical_history>Medical History</label>
<textarea id="medical_history" name="medical_history" rows="5" placeholder="Your medical history"></textarea>
</li>

</ol>
</fieldset>


<fieldset><legend>Password details</legend>
<ol><li><label for=password>Password</label>
<input type="password" name="password" id="password" placeholder="Your password" /></li>
<li><label for=confirm_password>Password again</label>
<input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm your password"/></li>
</ol></fieldset>

<fieldset>
<button type="submit" name="submit">Sign Up</button></fieldset></form></div>
</body>
</html>
