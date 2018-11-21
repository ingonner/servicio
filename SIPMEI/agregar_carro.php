<?php
// connect to database
include ('dbcon.php');
 
// product details
$id = isset($_GET['id']) ?  $_GET['id'] : die;
$name = isset($_GET['name']) ?  $_GET['name'] : die;
$quantity  = isset($_GET['quantity']) ?  $_GET['quantity'] : die;
$user_id=1;
$created=date('Y-m-d H:i:s');
 

$query = mysql_query("insert into cart_items (product_id,quantity,user_id, created) values ('$id',$quantity,'$user_id','$created')")or die(mysql_error());



// if database insert succeeded
if($query){
    header('Location: prestamo.php?action=added&id=' . $id . '&name=' . $name);
}
 
// if database insert failed
else{
     header('Location: prestamo.php?action=failed&id=' . $id . '&name=' . $name);
}
 