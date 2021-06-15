<?php

if (!empty($_SESSION["id_usuario"])) {
    header("Location: ../vistas/aula_virtual.php");
} else {
    header("Location: ../index.php");
}

include_once "Conexion.php";

class Usuario
{
    var $datos;

    public function __construct()
    {
        // se va a conectar a la base de datos
        $db = new Conexion(); // $db ya no es una variable es un objeto
        $this->conexion = $db->pdo;
        // $this hace referencia al objeto que se crea en una instancia de clase
    }

    function Loguearse($dni, $password)
    {
        // Consulotar usuario por methodo post
        $sql = "SELECT * FROM admin WHERE dni=:dni and password=:password";
        $query = $this->conexion->prepare($sql);
        $query->execute(array(':dni' => $dni, ':password' => $password));
        $this->datos = $query->fetchAll(); // retorna objetos o no
        return $this->datos;
    }
}
