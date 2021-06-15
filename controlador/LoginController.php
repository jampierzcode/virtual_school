<?php
include_once "../modelo/Usuario.php";
session_start();
$username = $_POST["username"];
$password = $_POST["password"];


$usuario = new Usuario();

$usuario->Loguearse($username, $password);

if (!empty($usuario->datos)) {

    foreach ($usuario->datos as $dato) {
        $_SESSION["id_usuario"] = $dato->id_admin;
        $_SESSION["nombres"] = $dato->nombres;
    }
    header("Location: ../vistas/aula_virtual.php");
} else {
    $_SESSION["error"] = "EL usuario o contraseña es incorrecto";
    header("Location: ../index.php");
}
