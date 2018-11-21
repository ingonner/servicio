<?php
$host = "localhost";
//$db_name = "u834655291_inven";
//$username = "u834655291_usr";
//$password = "sspassword123";

$db_name = "sistema_bio";
$username = "root";
$password = "";
 
try {
    $con = new PDO("mysql:host={$host};dbname={$db_name}", $username, $password);
}
 
//to handle connection error
catch(PDOException $exception){
    echo "Connection error: " . $exception->getMessage();
}

?>