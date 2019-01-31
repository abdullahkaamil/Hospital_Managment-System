<?php
session_start();
if (!empty($_SESSION['admin'])&&!empty($_SESSION['type'])) {
	header("Location: admin/");
}
elseif (!empty($_SESSION['laboratory'])&&!empty($_SESSION['type'])) {
	header("Location: laboratory/");
}
elseif (!empty($_SESSION['doctor'])&&!empty($_SESSION['type'])) {
	header("Location: doctor/");
}
elseif (!empty($_SESSION['reception'])&&!empty($_SESSION['type'])) {
	header("Location: reception/");
}
elseif (!empty($_SESSION['bursar'])&&!empty($_SESSION['type'])) {
	header("Location: reception/");
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>786 Hospital - Login</title>
	<style type="text/css">
	body
	{
		background-color: #4682B4;
	}
		.wrapper
		{
			height: 250px;
			width: 55.4%;
			min-width:11.8em;
			background-color: #5F9EA0;
			border: 1px solid #5F9EA0;
			margin: 0 auto;
			margin-top: 150px;
			opacity: 0.5px;
		}
		.left
		{
			height: 170px;
			width: 57.1%;
			min-width:7.59em;
			border-right: 1px solid #C2C5BA;
			float: left;
			font-family: Arial;
			font-size: 25px;
			text-align: center;
			padding-top: 80px;
		}
		.right
		{
			height: 250px;
			width: 42.7%;
			min-width: 12em;
			float: left;
			text-align: center;
			font-family: Arial;
		}
		hr
		{
			border-bottom: 1px solid #5F9EA0;
			border-top: 1px solid #5F9EA0;
		}
		.input
		{
			height: 30px;
			width: 80%;
			padding-left: 20px;
			border-radius: 15PX;
			box-shadow: 3PX 3PX 3PX #333;
		}
		.btn
		{
			height: 35px;
			width: 50%;
			border: 0;
			background-color: #191970;
			margin: 0;
			color: white;
			font-weight: bold;
			cursor: pointer;
			border-radius: 15PX;
			box-shadow: 3PX 3PX 3PX #333;
		}
	</style>
</head>
<body>
<div class="wrapper">
	<div class="left">
		Hospital Management System<br><br> ( 786 Hospital )
	</div>
	<div class="right">
		<h3>Login Here</h3><hr>
		<form action="index.php" method="post">
			<input type="text" class="input" name="username" placeholder="Enter Username"><br><br>
			<input type="password" class="input" name="password" placeholder="Enter Password"><br><br>
			<input type="submit" class="btn" name="btn" value="Login"><br>
		</form>
<?php
		extract($_POST);
		if (isset($btn) && !empty($username) && !empty($password)) {
			require 'includes/users.php';
		 	login();
		 } 
		 ?>
	</div>
</div>
</body>
</html>