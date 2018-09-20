<?php
// connect to database
include 'database.php';
 

$action = isset($_GET['action']) ? $_GET['action'] : "";
$name = isset($_GET['name']) ? $_GET['name'] : "";
 
// display a message
if($action=='removed'){
    echo "<div class='alert alert-info'>";
        echo "<strong>{$name}</strong> fue eliminado del carrito!";
    echo "</div>";
}
 
else if($action=='quantity_updated'){
    echo "<div class='alert alert-info'>";
        echo "<strong>{$name}</strong> la cantidad ha sido actualizada!";
    echo "</div>";
}
 
else if($action=='failed'){
        echo "<div class='alert alert-info'>";
        echo "<strong>{$name}</strong> no se pudo actualizar la cantidad!";
    echo "</div>";
}
 
else if($action=='invalid_value'){
        echo "<div class='alert alert-info'>";
        echo "<strong>{$name}</strong> cantidad es inválida!";
    echo "</div>";
}
 
// select products in the cart
$query="SELECT p.id_articulo as id, p.nombre_articulo as name, ci.quantity  
            FROM cart_items ci  
                LEFT JOIN articulos p 
                    ON ci.product_id = p.id_articulo"; 
 
$stmt=$con->prepare( $query );
$stmt->execute();
 
// count number of rows returned
$num=$stmt->rowCount();
 
if($num>0){
     
    //start table
    echo "<table class='table table-hover table-responsive table-bordered'>";
     
    // our table heading
    echo "<tr>";
        echo "<th class='textAlignLeft'>Lista de articulos</th>";

    
         
    echo "</tr>";
 
     
    while( $row = $stmt->fetch(PDO::FETCH_ASSOC)){
        extract($row);
       
        echo "<tr>";
            echo "<td>";
                        echo "<div class='product-id' style='display:none;'>{$id}</div>";
                        echo "<div class='product-name'>{$name}({$quantity})</div>";
            echo "</td>";
            echo "<td>";
            echo "<a href='eliminar.php?id={$id}&name={$name}' class='btn btn-danger'>";
                        echo "<span class='glyphicon glyphicon-remove'></span> Quitar";
            echo "</a>";
            echo "</td>";
        echo "</tr>";
             
  
    }
     
   
         
    echo "</table>";
}else{
    echo "<div class='alert alert-danger'>";
    echo "<strong>Vacio";
    echo "</div>";
}
 

?>