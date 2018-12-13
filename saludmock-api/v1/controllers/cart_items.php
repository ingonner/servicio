<?php

require_once 'data/MysqlManager.php';

/**
 * Controlador del recurso "/cart_items"
 */
class cart_items {

    public static function get($urlSegments) {

       if (!isset($urlSegments[0])) {
            throw new ApiException(
                400,
                0,
                "El recurso está mal referenciado",
                "http://localhost",
                "El recurso $_SERVER[REQUEST_URI] no esta sujeto a resultados"
            );
        }

        switch ($urlSegments[0]) {
            case "show":
                return self::showCart_items();
                break;
            default:
                throw new ApiException(
                    404,
                    0,
                    "El recurso al que intentas acceder no existe",
                    "http://localhost", "No se encontró el segmento \"affiliates/$urlSegments[0]\".");
        }    


    }

    public static function post($urlSegments) {

        if (!isset($urlSegments[0])) {
            throw new ApiException(
                400,
                0,
                "El recurso está mal referenciado",
                "http://localhost",
                "El recurso $_SERVER[REQUEST_URI] no esta sujeto a resultados"
            );
        }

        switch ($urlSegments[0]) {
            case "add":
                return self::saveCart_items();
                break;
            case "clean":
                return self::cleanCart_items();
                break;
            case "show":
                return self::showCart_items();
                break;
            case "delete":
                return self::deleteCart_items();
                break;
            case "edit":
                return self::editCart_items();
                break;
            case "do_lend":
                return self::lend();
                break;
            default:
                throw new ApiException(
                    404,
                    0,
                    "El recurso al que intentas acceder no existe",
                    "http://localhost", "No se encontró el segmento \"affiliates/$urlSegments[0]\".");
        }
    }

    public static function put($urlSegments) {

    }



    private static function saveCart_items() {
        // Obtener parámetros de la petición
        $parameters = file_get_contents('php://input');
        $decodedParameters = json_decode($parameters, true);

        // Controlar posible error de parsing JSON
        if (json_last_error() != JSON_ERROR_NONE) {
            $internalServerError = new ApiException(
                500,
                0,
                "Error interno en el servidor. Contacte al administrador",
                "http://localhost",
                "Error de parsing JSON. Causa: " . json_last_error_msg());
            throw $internalServerError;
        }

        // Verificar integridad de datos
        // TODO: Implementar restricciones de datos adicionales
        if (!isset($decodedParameters["product_id"]) ||
            !isset($decodedParameters["quantity"]) ||
            !isset($decodedParameters["user_id"])
        ) {
            // TODO: Crear una excepción individual por cada causa anómala
            throw new ApiException(
                400,
                0,
                "Problema al insertar el artículo, intente nuevamente.",
                "http://localhost",
                "Uno de los atributos del artículo no está definido en los parámetros");
        }

        // Insertar articulo
        $dbResult = self::insertCart_items($decodedParameters);

        // Procesar resultado de la inserción
        if ($dbResult) {
            return ["status" => 201, "message" => "Añadido al carrito"];
        } else {
            throw new ApiException(
                500,
                0,
                "Error del servidor",
                "http://localhost",
                "Error en la base de datos al ejecutar la inserción del articulo.");
        }
    }

    private static function cleanCart_items() {

        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia TRUNCATE para vaciar la tabla
            $sentence = "TRUNCATE TABLE cart_items";

            // Preparar sentencia
            $preparedStament = $pdo->prepare($sentence);

            // Ejecutar sentencia
            if($preparedStament->execute()){
                return ["status" => 201, "message" => "El carrito se vació correctamente."];
            }


        } catch (PDOException $e) {
            throw new ApiException(
                500,
                0,
                "Error de base de datos en el servidor",
                "http://localhost",
                "Ocurrió el siguiente error al vaciar el carrito: " . $e->getMessage());
        }

}

    private static function lend() {
        // Obtener parámetros de la petición
        $parameters = file_get_contents('php://input');
        $decodedParameters = json_decode($parameters, true);

        // Controlar posible error de parsing JSON
        if (json_last_error() != JSON_ERROR_NONE) {
            $internalServerError = new ApiException(
                500,
                0,
                "Error interno en el servidor. Contacte al administrador",
                "http://localhost",
                "Error de parsing JSON. Causa: " . json_last_error_msg());
            throw $internalServerError;
        }

        // Verificar integridad de datos
        // TODO: Implementar restricciones de datos adicionales
        if (!isset($decodedParameters["id_alumno"]) ||
            !isset($decodedParameters["fecha_devolucion"])
        ) 
        {
            // TODO: Crear una excepción individual por cada causa anómala
            throw new ApiException(
                400,
                0,
                "Problema al realizar el prestamo, intente nuevamente.",
                "http://localhost",
                "Uno de los atributos del préstamo no está definido en los parámetros");
        }

        //Verifica que el carrito no se encuentre vacío
        $checkCart = self::showCart_items();
        if($checkCart != NULL){

        // Realizar el prestamo
        $dbResult = self::saveLend($decodedParameters);

        // Procesar resultado de la inserción
        if ($dbResult != NULL) {

        //obtiene el id del ultimo prestamo registrado
        $dbResult2 = self::askLendDetails();  

        if ($dbResult2 != NULL) {

        //Inserta los detalles del préstamo
        $dbResult3 = self::saveLendDetails($dbResult2["id_prestamo"]);    
        
        if ($dbResult3 == true) {
            return ["status" => 201, "message" => "Prestamo realizado correctamente"];
        }
        else{
            throw new ApiException(
                500,
                0,
                "Error del servidor",
                "http://localhost",
                "Error en la base de datos al realizar el préstamo.");
           }


        }
        else {
            throw new ApiException(
                500,
                0,
                "Error del servidor",
                "http://localhost",
                "Error en la base de datos al realizar el préstamo.");
        }
         
        //$dbResult2 = self::saveLendDetails($decodedParameters);    
        //return ["status" => 201, "message" => "Prestamo realizado correctamente"];
       
        } else {
            throw new ApiException(
                500,
                0,
                "Error del servidor",
                "http://localhost",
                "Error en la base de datos al realizar el préstamo.");
        }
    }
    else {
            throw new ApiException(
                500,
                0,
                "No hay artículos que prestar.",
                "http://localhost",
                "No hay artículos que prestar.");
        }
}

private static function saveLendDetails($id_prestamo) {
mysql_select_db('u834655291_inven',mysql_connect('localhost','u834655291_usr','sspassword123'))or die(mysql_error());
    

    //Contar cuantos articulos hay en el carrito, para el FOR
    $cuenta = mysql_query("SELECT count(*) contar FROM cart_items")or die(mysql_error());
    $row = mysql_fetch_array($cuenta);
    $contar  = $row['contar']; 
    $N = $contar;


for($i=0; $i < $N; $i++) {

    $query = mysql_query("select id, product_id, quantity from cart_items order by id DESC")or die(mysql_error());
    $row = mysql_fetch_array($query);
    
    //trae datos del carrito
    $id = $row['id'];
    $id_producto = $row['product_id']; 
    $cantidad = $row['quantity'];


    //inserta en detalle_prestamos las filas
     mysql_query("insert detalle_prestamos (id_articulo,cantidad,id_prestamo,estatus_prestamo) values('$id_producto','$cantidad','$id_prestamo','pendiente')")or die(mysql_error());
    
    //va borrando las filas, para insertar la siguiente en el siguiente ciclo
    mysql_query("DELETE FROM `cart_items` WHERE id='$id'")or die(mysql_error());
    

}

return true;
 }


    private static function askLendDetails() {
        try {
            $pdo = MysqlManager::get()->getDb();

            //Componer sentencia SELECT
            $sentence = "select * from prestamos order by id_prestamo DESC";
        
            // Preparar sentencia
            $preparedSentence = $pdo->prepare($sentence);
           
            // Ejecutar sentencia
            if ($preparedSentence->execute()) {
                $lendDetails = $preparedSentence->fetch(PDO::FETCH_ASSOC);
                return $lendDetails;
            } else {
                throw new ApiException(
                    500,
                    0,
                    "Error de base de datos en el servidor",
                    "http://localhost",
                    "Hubo un error ejecutando una sentencia SQL en la base de datos. Detalles:" . $pdo->errorInfo()[2]
                );
            }

        } catch (PDOException $e) {
            throw new ApiException(
                500,
                0,
                "Error de base de datos en el servidor",
                "http://localhost",
                "Ocurrió el siguiente error al consultar el id del préstamo: " . $e->getMessage());
        }
    }

private static function saveLend($decodedParameters) {
date_default_timezone_set('America/Mexico_City');
        //Extraer datos del articulo
        $id_alumno = $decodedParameters["id_alumno"];
        //$fecha_prestamo=date('Y-m-d');
        $fecha_prestamo=date('d-m-Y h:i:s a', time());
        $fecha_devolucion = $decodedParameters["fecha_devolucion"];

        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia INSERT
            $sentence = "INSERT INTO prestamos (id_alumno,fecha_prestamo,fecha_devolucion)" .
                " VALUES (?,?,?)";

            // Preparar sentencia
            $preparedStament = $pdo->prepare($sentence);
            $preparedStament->bindParam(1, $id_alumno);
            $preparedStament->bindParam(2, $fecha_prestamo);
            $preparedStament->bindParam(3, $fecha_devolucion);

            // Ejecutar sentencia
            return $preparedStament->execute();

        } catch (PDOException $e) {
            throw new ApiException(
                500,
                0,
                "Error de base de datos en el servidor",
                "http://localhost",
                "Ocurrió el siguiente error al intentar insertar el prestamo en la base de datos" . $e->getMessage());
        }
    }



    private static function insertCart_items($decodedParameters) {
        //Extraer datos del articulo
        $product_id = $decodedParameters["product_id"];
        $quantity = $decodedParameters["quantity"];
        $user_id = $decodedParameters["user_id"];

        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia INSERT
            $sentence = "INSERT INTO cart_items (product_id, quantity, user_id)" .
                " VALUES (?,?,?)";

            // Preparar sentencia
            $preparedStament = $pdo->prepare($sentence);
            $preparedStament->bindParam(1, $product_id);
            $preparedStament->bindParam(2, $quantity);
            $preparedStament->bindParam(3, $user_id);

            // Ejecutar sentencia
            return $preparedStament->execute();

        } catch (PDOException $e) {
            throw new ApiException(
                500,
                0,
                "Error de base de datos en el servidor",
                "http://localhost",
                "Ocurrió el siguiente error al intentar insertar el articulo: " . $e->getMessage());
        }
    }

    
     private static function editCart_items() {
        $parameters = file_get_contents('php://input');
        $decodedParameters = json_decode($parameters, true);
         if (!isset($decodedParameters["product_id"]) ||
            !isset($decodedParameters["quantity"])
        ){
            return $decodedParameters;
            //return false;
         }

else{
        //Extraer datos del articulo
        $product_id = $decodedParameters["product_id"];
        $quantity = $decodedParameters["quantity"];
        $data = [
                    'product_id' => $product_id,
                    'quantity' => $quantity
                ];

        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia INSERT
            $sentence = "UPDATE cart_items SET quantity=:quantity where product_id=:product_id";

            // Preparar sentencia
            $preparedStament = $pdo->prepare($sentence);
            
            // Ejecutar sentencia
            $preparedStament->execute($data);

            return ["status" => 201, "message" => "Cambios guardados"];
           

        } catch (PDOException $e) {
            throw new ApiException(
                500,
                0,
                "Error de base de datos en el servidor",
                "http://localhost",
                "Ocurrió el siguiente error al intentar insertar el articulo: " . $e->getMessage());
        }
    }
}



 private static function deleteCart_items() {
        $parameters = file_get_contents('php://input');
        $decodedParameters = json_decode($parameters, true);
         if (!isset($decodedParameters["product_id"])
        ){
            return $decodedParameters;
            //return false;
         }

else{
        //Extraer datos del articulo
        $product_id = $decodedParameters["product_id"];
        $data = [
                    'product_id' => $product_id
                ];
        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia INSERT
            $sentence = "DELETE FROM cart_items where product_id=:product_id";

            // Preparar sentencia
            $preparedStament = $pdo->prepare($sentence);
            
            // Ejecutar sentencia
            $preparedStament->execute($data);

            return ["status" => 201, "message" => "Eliminado"];
           

        } catch (PDOException $e) {
            throw new ApiException(
                500,
                0,
                "Error de base de datos en el servidor",
                "http://localhost",
                "Ocurrió el siguiente error al intentar eliminar el articulo: " . $e->getMessage());
        }
    }
}

  private static function showCart_items() {
        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia SELECT
            $sentence = "SELECT p.id_articulo as id, p.nombre_articulo as name, ci.quantity FROM cart_items ci LEFT JOIN articulos p ON ci.product_id = p.id_articulo";

            // Preparar sentencia
            $preparedSentence = $pdo->prepare($sentence);

            // Ejecutar sentencia
            if ($preparedSentence->execute()) {
             
                $rows = array();
                
                // Verificar datos
               
                while( $row = $preparedSentence->fetch(PDO::FETCH_ASSOC)){
                    extract($row);
                    $rows[] = $row;
                }        
            
                return $rows; 
            /*
                if(empty($rows)){
                    return NULL;
                }  
                else{
                 return $rows; 
                }        
             */  
                
            } else {
                throw new ApiException(
                    500,
                    0,
                    "Error de base de datos en el servidor",
                    "http://localhost",
                    "Hubo un error ejecutando una sentencia SQL en la base de datos. Detalles:" . $pdo->errorInfo()[2]
                );
            }

        } catch (PDOException $e) {
            throw new ApiException(
                500,
                0,
                "Error de base de datos en el servidor",
                "http://localhost",
                "Ocurrió el siguiente error al consultar el afiliado: " . $e->getMessage());
        }
    }


}