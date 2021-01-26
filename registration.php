<?php
session_start();
require_once "config1.php";


// initializing variables
$username = "";
$email    = "";
$errors = array(); 

// connect to the database
//$db = mysqli_connect('localhost', 'root', '', 'registration');

// REGISTER USER
if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $username = mysqli_real_escape_string($link, $_POST['username']);
  $email = mysqli_real_escape_string($link, $_POST['email']);
  $password_1 = mysqli_real_escape_string($link, $_POST['password']);
  $password_2 = mysqli_real_escape_string($link, $_POST['confirm_password']);
  echo "hello1";

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($username)) { array_push($errors, "Username is required"); }
  if (empty($email)) { array_push($errors, "Email is required"); }
  if (empty($password_1)) { array_push($errors, "Password is required"); }
  if ($password_1 != $password_2) {
	array_push($errors, "The two passwords do not match");
  echo "The two passwords do not match";}

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM user WHERE u_unm='$username' OR u_email='$email' LIMIT 1";
  $result = mysqli_query($link, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['u_unm'] == $username) {
      array_push($errors, "Username already exists");
	  echo "Username already exists";
    }

    if ($user['u_email'] ==$email) {
      array_push($errors, "email already exists");
	  echo "email already exists";
    }
  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	

  	$query = "INSERT INTO user (u_unm, u_email, u_pwd) 
  			  VALUES('$username', '$email', '$password_1')";
			  if(mysqli_query($link, $query)){
    echo "Records inserted successfully.";
} else{
    echo "ERROR: Could not able to execute $query. " . mysqli_error($link);
}
  	
	//echo"hello3";
  	$_SESSION['username'] = $username;
  	$_SESSION['success'] = "You are now logged in";
	//echo "hello4";
	header ("location:login.html");
  
  }
}

?>