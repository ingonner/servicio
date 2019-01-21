<?php
//mysql_select_db('u834655291_inven',mysql_connect('localhost','u834655291_usr','sspassword123'))or die(mysql_error());

$host = "localhost";
$db_name = "sistema_bio";
$username = "root";
$password = "";

mysql_select_db($db_name,mysql_connect($host,$username,$password))or die(mysql_error());
 
try {
    $con = new PDO("mysql:host={$host};dbname={$db_name}", $username, $password);
}
 
//to handle connection error
catch(PDOException $exception){
    echo "Connection error: " . $exception->getMessage();
}


date_default_timezone_set('America/Mexico_City');
?>