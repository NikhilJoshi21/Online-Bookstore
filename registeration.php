<?php
// Include config file
require_once "config1.php";
 
// Define variables and initialize with empty values
$username = $password = $confirm_password = $fullname="";
$username_err = $password_err = $confirm_password_err = $fullname_err="";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // Validate username
    if(empty(trim($_POST["username"]))){
        $username_err = "Please enter a username.";
    } else{
        // Prepare a select statement
        $sql = "SELECT u_id FROM users WHERE u_unm = ?";
		

        
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_username);
            
            // Set parameters
            $param_username = trim($_POST["username"]);
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                /* store result */
                mysqli_stmt_store_result($stmt);
                
                if(mysqli_stmt_num_rows($stmt) == 1){
                    $username_err = "This username is already taken.";
                } else{
                    $username = trim($_POST["username"]);
                }
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }
        }
         
        // Close statement
        mysqli_stmt_close($stmt);
    }
    
    // Validate password
    if(empty(trim($_POST["password"]))){
        $password_err = "Please enter a password.";     
    } elseif(strlen(trim($_POST["password"])) < 6){
        $password_err = "Password must have atleast 6 characters.";
    } else{
        $password = trim($_POST["password"]);
    }
    
    // Validate confirm password
    if(empty(trim($_POST["confirm_password"]))){
        $confirm_password_err = "Please confirm password.";     
    } else{
        $confirm_password = trim($_POST["confirm_password"]);
        if(empty($password_err) && ($password != $confirm_password)){
            $confirm_password_err = "Password did not match.";
        }
    }
    
    // Check input errors before inserting in database
    if(empty($username_err) && empty($password_err) && empty($confirm_password_err)){
        
        // Prepare an insert statement
        $sql = "INSERT INTO user (u_unm, u_pwd) VALUES (?, ?)";
         
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "ss", $param_username, $param_password);
            
            // Set parameters
            $param_username = $username;
            $param_password = password_hash($password, PASSWORD_DEFAULT); // Creates a password hash
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Redirect to login page
                header("location: login.html");
            } else{
                echo "Something went wrong. Please try again later.";
            }
        }
         
        // Close statement
        mysqli_stmt_close($stmt);
    }
    
    // Close connection
    mysqli_close($link);
}
?>
 


<!DOCTYPE html>
<html>
<head>
	<title>Registration</title>
	<style type="text/css">
		body{
			font-family: Verdana;
			background-color: black;
		}
		*{
			box-sizing: border-box;
		}
		.container{
			padding: 16px;
			background-color: white;
		}
		input[type=text], input[type=password]{
			width: 100%;
  			padding: 15px;
  			margin: 5px 0 22px 0;
  			display: inline-block;
  			border: none;
  			background: #f1f1f1;
		}
		#regbtn{
			background-color: #4CAF50;
  			color: white;
  			padding: 16px 20px;
  			margin: 8px 0;
  			border: none;
  			cursor: pointer;
  			width: 100%;
  			opacity: 0.9;
		}
		#regbtn:hover{
			opacity: 0.8;
		}

	</style>
</head>
<body>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    <!--Full Name: <input type="text" name="fullname" placeholder="Enter your full name" id="fname" required><br> -->
	User name: <input type="text" name="username" placeholder="Enter User name" id="uname" required><br>
    Email: <input type="text" placeholder="Enter Email" id="email" required><br>
    Password: <input type="password" placeholder="Enter Password" id="psw" required><br>
    Confirm Password: <input type="password" placeholder="Confirm Password" id="pswrep" required>
    <hr>
    <button type="submit" id="regbtn">Register</button>
  </div>
</form>
</body>
</html>