<?php

require_once 'data/MysqlManager.php';

/**
 * Controlador del recurso "/students"
 */
class students {

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
                return self::searchStudent();
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


    private static function searchStudent() {

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
        if (!isset($decodedParameters["matricula"])) {
            throw new ApiException(
                400,
                0,
                "Las credenciales del alumno deben estar definidas correctamente",
                "http://localhost",
                "El atributo \"id\" o \"matricula\" o ambos, están vacíos o no definidos"
            );
        }

        $matricula = $decodedParameters["matricula"];
        
        // Buscar usuario en la tabla
        $dbResult = self::findStudentByCredentials($matricula);

        // Procesar resultado de la consulta
        if ($dbResult != NULL) {
            return [
                "status" => 200,
                "id_alumno" => $dbResult["id_alumno"],
                "nombre" => $dbResult["nombre"],
                "apellido" => $dbResult["apellido"],
                "num_control" => $dbResult["num_control"],
                "carrera" => $dbResult["carrera"],
                "semestre" => $dbResult["semestre"],
                "estatus" => $dbResult["estatus"]
            ];
        } else {
            throw new ApiException(
                400,
                0,
                "Alumno no encontrado o bloqueado.",
                "http://localhost",
                "Puede que no exista un usuario creado con la matricula \"$matricula\" o que se encuentre bloqueado."
            );
        }
    }

    
    private static function findStudentByCredentials($matricula) {
        try {
            $pdo = MysqlManager::get()->getDb();

            // Componer sentencia SELECT
            $sentence = "SELECT * FROM alumnos WHERE num_control=? AND estatus='Activo'";
            //select * from alumnos where estatus ='Activo'

            // Preparar sentencia
            $preparedSentence = $pdo->prepare($sentence);
            $preparedSentence->bindParam(1, $matricula, PDO::PARAM_INT);

            // Ejecutar sentencia
            if ($preparedSentence->execute()) {
                $studentData = $preparedSentence->fetch(PDO::FETCH_ASSOC);
                return $studentData;
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