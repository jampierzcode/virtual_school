<?php
include_once "../modelo/Conexion.php";



$username = $_POST["username"];
$password = $_POST["password"];


// conexion con sonculta preparada

// $sql = "Select * from usuario where username = :user and password = :password"
// $preparar = $conexion->prepare($sql);
// $preparar->execute(array(':user'-> $username, ':password'-> $password));
// $usuario = $preparar.fetchAll(PDO::object)

// foreach($usuario as $dato){
//      $_SESSION["id_usuario"]= $dato->id_usuario;
// }
// header ('Location: ../vistas/aula_virtual.php')

// header('Location ../index.php')

echo "Nombre de usuario: " . $username;
echo "Nombre de password: " . $password;
