<?php

require_once 'data/MysqlManager.php';

/**
 * Controlador del recurso "/loans"
 */
class loans {

    public static function get($urlSegments) {
 


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
            case "search":
                return self::buscaPrestamosAlumno();
                break;
            case "devolver":
                return self::devolucionIndividual();
                break;
            case "problema":
                return self::devolucionProblema();
                break;   
            default:
                throw new ApiException(
                    404,
                    0,
                    "El recurso al que intentas acceder no existe",
                    "http://localhost", "No se encontró el segmento \"students/$urlSegments[0]\".");
        }
    }

    public static function put($urlSegments) {

    }

    public static function delete($urlSegments) {

    }




      private static function buscaPrestamosAlumno() {
    // Obtener parámetros de la petición
        $parameters = file_get_contents('php://input');
        $decodedParameters = json_decode($parameters, true);

        // Controlar posible error de parsing JSON
        if (json_last_error() != JSON_ERROR_NONE) {
           $parametros_chidos = explode("=", $parameters);
            $matricula_comillas = $parametros_chidos[1];
            //$matricula = substr($matricula_comillas, 1, -1);
            $matricula = $matricula_comillas;
            //return "la matricula es: ". $matricula;
            }

        else{
            $matricula = $decodedParameters["matricula"];
        }

        
        //return "la matricula es ". $matricula;

        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia SELECT
            $sentence = "SELECT id_alumno, nombre, id_detalle_prestamos, nombre_articulo, cantidad, fecha_prestamo, fecha_devolucion from 
                (SELECT id_alumno, num_control, nombre, id_detalle_prestamos, nombre_articulo, cantidad, fecha_prestamo, fecha_devolucion FROM
                (SELECT id_detalle_prestamos, id_articulo, cantidad, alumnos.id_alumno, alumnos.num_control, concat(alumnos.nombre,' ',alumnos.apellido)as nombre, fecha_prestamo, fecha_devolucion from
                (SELECT id_detalle_prestamos, detalle_prestamos.id_articulo, cantidad, prestamos.id_alumno, prestamos.fecha_prestamo, prestamos.fecha_devolucion FROM detalle_prestamos LEFT JOIN prestamos on detalle_prestamos.id_prestamo = prestamos.id_prestamo WHERE detalle_prestamos.estatus_prestamo = 'Pendiente') as r1 LEFT JOIN alumnos on r1.id_alumno = alumnos.id_alumno) as r2 LEFT JOIN articulos on r2.id_articulo = articulos.id_articulo ORDER BY fecha_prestamo ASC) as r3 WHERE num_control = ?";

            // Preparar sentencia
            $preparedSentence = $pdo->prepare($sentence);
            $preparedSentence->bindParam(1, $matricula, PDO::PARAM_INT);

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
            return "Datos pesimos";
        }
    }



     private static function devolucionIndividual() {
        date_default_timezone_set('America/Mexico_City');
        $parameters = file_get_contents('php://input');
        $decodedParameters = json_decode($parameters, true);
        if (!isset($decodedParameters["problema"]) ||
            !isset($decodedParameters["accion_alumno"])||
           ///SSD !isset($decodedParameters["genero"])||
            !isset($decodedParameters["num_control"])||
            !isset($decodedParameters["carrera"])||
            !isset($decodedParameters["celular"])||
            !isset($decodedParameters["semestre"])
        )

         {
            return $decodedParameters;
            //return false;
         }

else{
        //Extraer datos del articulo
        $id_detalle_prestamos = $decodedParameters["id_detalle_prestamos"];
        $fecha_entregado=date('Y-m-d h:i:s a', time());
        $data = [
                    'id_detalle_prestamos' => $id_detalle_prestamos,
                    'fecha_entregado' => $fecha_entregado
                ];

        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia INSERT
            $sentence = "UPDATE detalle_prestamos SET estatus_prestamo='devuelto',fecha_entregado =:fecha_entregado where id_detalle_prestamos=:id_detalle_prestamos";

            // Preparar sentencia
            $preparedStament = $pdo->prepare($sentence);
            
            // Ejecutar sentencia
            if($preparedStament->execute($data)){
                return ["status" => 201, "message" => "La devolición se registró correctamente."];
            }        
           

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



 private static function devolucionProblema() {
        date_default_timezone_set('America/Mexico_City');
        $parameters = file_get_contents('php://input');
        $decodedParameters = json_decode($parameters, true);
         if (!isset($decodedParameters["id_detalle_prestamos"])||

        ){
            return $decodedParameters;
            //return false;
         }

else{
        //Extraer datos del articulo
        $id_detalle_prestamos = $decodedParameters["id_detalle_prestamos"];
        $fecha_entregado=date('Y-m-d h:i:s a', time());
        $data = [
                    'id_detalle_prestamos' => $id_detalle_prestamos,
                    'fecha_entregado' => $fecha_entregado
                ];

        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia INSERT
            $sentence = "UPDATE detalle_prestamos SET estatus_prestamo='devuelto',fecha_entregado =:fecha_entregado where id_detalle_prestamos=:id_detalle_prestamos";

            // Preparar sentencia
            $preparedStament = $pdo->prepare($sentence);
            
            // Ejecutar sentencia
            if($preparedStament->execute($data)){
                return ["status" => 201, "message" => "La devolición se registró correctamente."];
            }        
           

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







}