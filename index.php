<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Link de font google -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Style Icons -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
    <!-- Icon Title Page -->
    <link rel="icon" href="img/logo_colegio.png">
    <!-- Link de los estilos principales -->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/login.css">
    <title>Login Aula virtual</title>
</head>

<body>
    <div class="container_login">
        <div class="form_login">
            <div class="container_img">
                <img width="150px" src="img/logo_login.png" alt="logo_login_cristo_salvador">
            </div>
            <h1 class="title_school">Aula virtual</h1>
            <form action="controlador/LoginController.php" method="post">
                <div class="controls_form">
                    <input name="username" type="text" placeholder="Ingresa tu nombre de usuario">
                    <i class="far fa-user"></i>
                </div>
                <div class="controls_form">
                    <input name="password" type="password" placeholder="Ingresa tu password">
                    <i class="fas fa-lock"></i>
                </div>
                <button class="btn_submit" type="submit">Acceder</button>
                <p>Inicia sesion para continuar</p>
            </form>

        </div>
        <div class="box_design"></div>
    </div>
</body>

</html>