<?php
$con = mysqli_connect('localhost','root','','hospital');
if (empty($con)) {
 	echo mysqli_error();
 } 
 $data = mysqli_select_db($con,"hospital");
 if (empty($data)) {
 	echo mysqli_error();
 }
?>