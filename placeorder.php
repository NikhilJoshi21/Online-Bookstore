<?php
session_start();
require_once "config1.php";
$count1 = count($_SESSION["shopping_cart"]);


$name=$address=$city=$state=$zip=$phno=" ";




  // receive all input values from the form
  $name = mysqli_real_escape_string($link, $_POST['name']);
  $address = mysqli_real_escape_string($link, $_POST['address']);
  $city = mysqli_real_escape_string($link, $_POST['city']);
  $state = mysqli_real_escape_string($link, $_POST['state']);
  $zip = mysqli_real_escape_string($link, $_POST['zip']);
  $phno = mysqli_real_escape_string($link, $_POST['phno']);
 




  	$query1 = "INSERT INTO shipping_details (name, address, zip_code, city, state, phone) 
  			  VALUES('$name', '$address', '$zip', '$city', '$state', '$phno')";
			  
			  if(mysqli_query($link, $query1) ){
		echo "Inserted shipping details";
		$query2="SELECT shipping_details_id FROM shipping_details ORDER BY shipping_details_id DESC LIMIT 1";
		$result= mysqli_query($link,$query2);
		if (mysqli_num_rows($result) > 0) {
    
			while($row = mysqli_fetch_assoc($result)) {
        echo $row["shipping_details_id"] ;
		$x= $row["shipping_details_id"] ;
    }
       
    }
	else {
    echo "0 results";
			  } }

else{
		echo "ERROR: Could not able to execute. " . mysqli_error($link);
	}  	  
	
			  foreach($_SESSION["shopping_cart"] as $keys => $values)
			  {
							$query="INSERT INTO purchase_details(shipping_details_id,u_unm,item_id, item_name,  item_price, item_quantity,total)
									VALUES ('$x','".$_SESSION['username']."','".$values["item_id"]."','".$values["item_name"]."','".$values["item_price"]."','".$values["item_quantity"]."','".$_SESSION['total']."')";
						if(mysqli_query($link, $query) ){
		echo "Inserted";
	} else{
		echo "ERROR: Could not able to execute. " . mysqli_error($link);
	}  	  
  }
  header("location:last.html");
						

?>