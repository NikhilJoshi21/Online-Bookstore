<?php 
session_start();
include 'config1.php';
if( $_SESSION["logged_in"] == true){

if(isset($_POST["add_to_cart"]))
{
	if(isset($_SESSION["shopping_cart"]))
	{
		$item_array_id = array_column($_SESSION["shopping_cart"], "item_id");
		if(!in_array($_GET["id"], $item_array_id))
		{
			$count = count($_SESSION["shopping_cart"]);
			$item_array = array(
				'item_id'			=>	$_GET["id"],
				'item_name'			=>	$_POST["hidden_name"],
				'item_price'		=>	$_POST["hidden_price"],
				'item_quantity'		=>	$_POST["quantity"]
			);
			$_SESSION["shopping_cart"][$count] = $item_array;
		}
		else
		{
			echo '<script>alert("Item Already Added")</script>';
		}
	}
	else
	{
		$item_array = array(
			'item_id'			=>	$_GET["id"],
			'item_name'			=>	$_POST["hidden_name"],
			'item_price'		=>	$_POST["hidden_price"],
			'item_quantity'		=>	$_POST["quantity"]
		);
		$_SESSION["shopping_cart"][0] = $item_array;
	}
}

if(isset($_GET["action"]))
{
	if($_GET["action"] == "delete")
	{
		foreach($_SESSION["shopping_cart"] as $keys => $values)
		{
			if($values["item_id"] == $_GET["id"])
			{
				unset($_SESSION["shopping_cart"][$keys]);
				echo '<script>alert("Item Removed")</script>';
				echo '<script>window.location="indexcart.php"</script>';
			}
		}
	}
}
}
else
{
	header('location:login.html');
}

?>
<!DOCTYPE html>
<html>
	<head>
		<title> Shopping Cart</title>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</head>
	<body>

		<div class="container-fluid">
		
			<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Bookstore</a>
    </div>
    <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="viewcart.php">Cart</a></li>
      <li><a href="logout.php">Logout</a></li>
    </ul>    
  </div>
</nav>
			<?php
				$query = "SELECT * FROM book LIMIT 45,12";
				$result = mysqli_query($link, $query);
				if(mysqli_num_rows($result) > 0)
				{
					while($row = mysqli_fetch_array($result))
					{
				?>
			<div class="col-md-2">
				<form method="post" action="indexcart.php?action=add&id=<?php echo $row["b_id"]; ?>">
					<div style="border:1px solid #333; background-color:#white; border-radius:5px; padding:16px; width:230px;" align="center">
						<img src="<?php echo $row["b_img"]; ?>" class="img-responsive" style="width: 150px;height:200px;"/><br />

						<h4 class="text-info"><?php echo $row["b_nm"]; ?></h4>
						

						<h4 class="text-danger">Rs. <?php echo $row["b_price"]; ?></h4>

						<input type="text" name="quantity" value="1" class="form-control" style="width: 50px;" />

						<input type="hidden" name="hidden_name" value="<?php echo $row["b_nm"]; ?>" />

						<input type="hidden" name="hidden_price" value="<?php echo $row["b_price"]; ?>" />

						<input type="submit" name="add_to_cart" style="margin-top:5px;" class="btn btn-success" value="Add to Cart" />
						
					</div>
					<br>
				</form>
			</div>
			<?php
					}
				}
			?>
			
			
	</div>
	<br />
	</body>
</html>

