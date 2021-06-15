<?php
session_start();
if (empty($_SESSION["id_usuario"])) {
    session_destroy();
    header("Location: ../index.php");
} else {


?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="../img/logo_colegio.png">;
        <title>Aula Virtual</title>
    </head>

    <body>
        <h1>Bienvenido Usuario: <?php echo $_SESSION["nombres"] ?></h1>
        <a href="../controlador/LogoutController.php">Cerrar sesion</a>
    </body>

    </html>
<?php
}
?>