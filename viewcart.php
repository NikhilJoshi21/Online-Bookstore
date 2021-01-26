<?php 
session_start();
include 'config1.php';
?>
<!DOCTYPE html>
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<style>
		#am,#cp{
		background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  border-radius: 25px;
		  margin-left: auto;
		  margin-right: auto;
		  display: block;
		  width: 15%;
		}
		#am:hover,#cp:hover{
      opacity: 0.8;
    }
	#am{
		margin-left:20px;
	}
	#cp{
		margin-top: -60px;
		margin-right: 20px;
	}
		</style>
	</head>
	<body>
<div style="clear:both"></div>
			<br />
			<h2><b>Order Details<b></h2><br>
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<tr>
						<th width="10%">Item ID</th>
						<th width="40%">Item Name</th>
						<th width="10%">Quantity</th>
						<th width="5%">Action</th>
						
						<th width="20%">Price</th>
						<th width="15%">Total</th>
						
						
					</tr>
					<?php
					if(!empty($_SESSION["shopping_cart"]))
					{
						$total = 0;
						foreach($_SESSION["shopping_cart"] as $keys => $values)
						{
					?>
					<tr>
						<td> <?php echo $values["item_id"]; ?></td>
						<td><?php echo $values["item_name"]; ?></td>
						<td><?php echo $values["item_quantity"]; ?></td>
						<td><a href="viewcart.php?action=delete&id=<?php echo $values["item_id"]; ?>"><span class="text-danger">Remove</span></a></td>
						<td>Rs. <?php echo $values["item_price"]; ?></td>
						<td>Rs. <?php echo number_format($values["item_quantity"] * $values["item_price"], 2);?></td>
						
					</tr>
					<?php
							$total = $total + ($values["item_quantity"] * $values["item_price"]);
							$_SESSION['total']= $total;
						}
					?>
					<tr>
						<td colspan="5" align="right">Total</td>
						<td align="right">Rs. <?php echo number_format($total, 2); ?></td>
						
					</tr>
					<?php
					}
					?>
						
				</table>
			</div>
		</div>
	</div>


				<form action='indexcart.php' method= "POST">
				<button name='add_more' value='Add more' id="am">Add more</button>
				<button type="submit" formaction="placeorder.html" id="cp">Confirm and proceed</button>
				
			</form>
		</body>
		</html>