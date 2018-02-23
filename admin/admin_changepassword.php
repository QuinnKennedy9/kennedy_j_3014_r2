<?php
	require_once('phpscripts/config.php');
	if(isset($_POST['submit'])){
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		if($username !== "" && $password !== ""){
			$result = changePassword($password, $username);
		}else{
			$message = "Please fill out the required fields.";
		}
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to your admin panel login</title>
<link rel="stylesheet" href="../css/main.css">
</head>
<body>
	<h1>What Would You Like to Change Your Password To?</h1>
	<form action="admin_changepassword.php" method="post" id="loginform">
		<label id="userloginlabel">Username</label>
		<br>
		<input id="userlogininput" type="text" name="username" value="" class="changepassword">
		<br>
		<label id="passwordloginlabel" >Password</label>
		<br>
		<input id="passwordlogininput" type="password" name="password" value="" class="changepassword">
		<br><br>
		<input type="submit" name="submit" value="Change Password" class="changepassword">
	</form>

</body>
</html>
