<?php
// connect to database
include 'database.php';
 
// get the product id
$id = isset($_GET['id']) ? $_GET['id'] : "";
$name = isset($_GET['name']) ? $_GET['name'] : "";
$user_id=1;
 
// delete query
$query = "DELETE FROM cart_items WHERE product_id=?";
 
// prepare query
$stmt = $con->prepare($query);
 
// bind values
$stmt->bindParam(1, $id);

 
// execute query
if($stmt->execute()){
    // redirect and tell the user product was removed
    header('Location: prestamo.php?action=removed&id=' . $id . '&name=' . $name);
}
 
// if remove failed
else{
    // redirect and tell the user it failed
    header('Location: prestamo.php?action=failed&id=' . $id . '&name=' . $name);
}
?>