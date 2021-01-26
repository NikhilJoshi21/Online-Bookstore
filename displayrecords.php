<!DOCTYPE html>
<html>
<head>
 <title>Table with database</title>
 <style>
 body{
	 font-family: Verdana;
 }
 #log{
		  background-color: #4CAF50;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  border-radius: 25px;
		  margin-left: auto;
		  margin-right: auto;
		  margin-top: 50px;
		  display: block;
		  width: 15%;
 }
 #log:hover{
      opacity: 0.8;
    }
  table {
   
   width: 80%;
   color: #588c7e;
   font-family: Verdana;
   font-size: 17px;
   text-align: left;
   margin:auto;
  
     } 
  th {
   background-color: #4CAF50;
   color: white;
   
    }
	
	tr:nth-child(even)
	{
		background-color: #E5E8E8;
	}
 
 </style>
</head>
<body>
<h2>Order History</h2><br>
 <table>
 <tr>
  <th>Shipping ID</th> 
  <th>Username</th> 
  <th>Item ID</th>
  <th>Item Name</th>
  <th>Item Price</th>
  <th>Item Quantity</th>
  <th>Total</th>
 </tr>
 <?php
require "config1.php";
session_start();
   
  $sql = "SELECT shipping_details_id, u_unm,item_id, item_name,item_price,item_quantity,total FROM purchase_details WHERE u_unm='".$_SESSION['username']."'";
  $result = $link->query($sql);
  if ($result->num_rows > 0) {
   // output data of each row
   while($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["shipping_details_id"]. "</td><td>" . $row["u_unm"] . "</td><td>" . $row["item_id"]. "</td><td>" . $row["item_name"]. "</td><td>" . $row["item_price"]. "</td><td>" . $row["item_quantity"]. "</td><td>" . $row["total"]. "</td>";

}
echo "</table>";
} else { echo "0 results"; }
$link->close();
?>
<form action="logout.php">
<button value="Logout" id="log">Logout</button>
</form>
 </table>
</body>
</html>