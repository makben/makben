<?php

	include_once('include/config.php');

	if(isset($_POST['add'])){
	$fullname=$_POST['fullname'];
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$contactno=$_POST['contactno'];
	$status=1    ;
	$sql="INSERT into users(fullName,userEmail,password,contactNo,status) values('$fullname','$email','$password','$contactno','$status')";

		
	if($con->query($sql)){
			$_SESSION['success'] = ' added successfully';
		}
		
		
		else{
			$_SESSION['error'] = 'Something went wrong while adding';
		}
	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}
	header('location: manage-users.php');
?>