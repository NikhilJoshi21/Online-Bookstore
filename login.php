<?php session_start();

	require "config1.php";
	if(isset($_POST['username'])and isset($_POST['password']))
	{
	$username=$_POST['username'];
	$password=$_POST['password'];

	$sql="SELECT * FROM user WHERE u_unm='$username' and u_pwd='$password'";
	$result=mysqli_query($link,$sql);
	
	 if(mysqli_num_rows($result) > 0 )
        { 
            $_SESSION["logged_in"] = true;
			$_SESSION['username']=$username;    
				
			header ("location: indexcart.php");
        }
		else
        {
             echo "<script type='text/javascript'>alert('Wrong credentials');</script>";
			 echo '<script>window.location="login.html"</script>';
  
        }
		
	
		
			


	
	
		


}



?>