<?php
	//Start session
	session_start();
	
	//Include database connection details
	require_once('config.php');
	
	//Array to store validation errors
	$errmsg_arr = array();
	
	//Validation error flag
	$errflag = false;
	
	//Connect to mysql server
	$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);
	if(!$link) {
		die('Failed to connect to server: ' . mysql_error());
	}
	
	//Select database
	$db = mysql_select_db(DB_DATABASE);
	if(!$db) {
		die("Unable to select database");
	}
	
	//Function to sanitize values received from the form. Prevents SQL injection
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	//Sanitize the POST values
	$username = clean($_POST['username']);
	$age = clean($_POST['age']);
	$gender = clean($_POST['gender']);
	$address = clean($_POST['address']);
	$email = clean($_POST['email']);
	$blood_group = clean($_POST['blood_group']);
	$height = clean($_POST['height']);
	$weight = clean($_POST['weight']);
	$medical_history = clean($_POST['medical_history']);
	
	$password = clean($_POST['password']);
	$confirm_password = clean($_POST['confirm_password']);
	
	//Input Validations
	if($username == '') {
		$errmsg_arr[] = 'User name missing';
		$errflag = true;
	}
	if($email == '') {
		$errmsg_arr[] = 'Email id missing';
		$errflag = true;
	}
	if($age == '') {
		$errmsg_arr[] = 'Age missing';
		$errflag = true;
	}
	if($password == '') {
		$errmsg_arr[] = 'Password missing';
		$errflag = true;
	}
	if($confirm_password == '') {
		$errmsg_arr[] = 'Confirm password missing';
		$errflag = true;
	}
	if( strcmp($password, $confirm_password) != 0 ) {
		$errmsg_arr[] = 'Passwords do not match';
		$errflag = true;
	}
	
	//Check for duplicate login ID
	if($email != '') {
		$qry = "SELECT * FROM userinfo WHERE email='$email'";
		$result = mysql_query($qry);
		if($result) {
			if(mysql_num_rows($result) > 0) {
				$errmsg_arr[] = 'Email ID already in use';
				$errflag = true;
			}
			@mysql_free_result($result);
		}
		else {
			die("Query failed");
		}
	}
	
	//If there are input validations, redirect back to the registration form
	if($errflag) {
		$_SESSION['ERRMSG_ARR'] = $errmsg_arr;
		session_write_close();
		header("location: register-form.php");
		exit();
	}

	//Create INSERT query
	$qry = "INSERT INTO userinfo(username,age,gender,address,email,blood_group,height,weight,medical_history,password) VALUES('$username','$age','$gender','$address','$email','$blood_group','$height','$weight','$medical_history','".md5($_POST['password'])."')";
	$result = @mysql_query($qry);
	
	//Check whether the query was successful or not
	if($result) {
		header("location: register-success.php");
		exit();
	}else {
		die("Query failed");
	}
?>