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
            return $preparedStament->execute();

        } catch (PDOException $e) {
            throw new ApiException(
                500,
                0,
                "Error de base de datos en el servidor",
                "http://localhost",
                "Ocurrió el siguiente error al vaciar el carrito: " . $e->getMessage());
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