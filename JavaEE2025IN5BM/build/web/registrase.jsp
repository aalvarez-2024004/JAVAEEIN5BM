<%-- 
    Document   : registrase
    Created on : 22/07/2025, 16:28:18
    Author     : Francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfumería y Accesorios | Registrarse</title>
    <link rel="stylesheet" href="Styles/registrar.css">
</head>

    <nav>
        <a href="registrase.jsp" class="titulo"> Essenza & Co.</a>
    </nav>

<body>
    <div class="login-contendor">
        <div class="tabs">
            <a href="index.jsp">
                <button class="activo">Inicio de sesion</button>
            </a>
            <a href="registrase.jsp">
                <button class="activo">Registrase</button>
            </a>
        </div>
        <h2>Bienvenido</h2>
        <p>Essenza & Co.</p>
        <p class="subtitulo">Ingresa tus datos para Registrarte</p>
        
        <form action="RegistrarEmpleado" method="POST">
            <input type="text" name="txtNombre" placeholder="Nombre" required>
            <input type="text" name="txtApellido" placeholder="Apellido" required>
            <input type="text" name="txtDireccion" placeholder="Dirección" required>
            <input type="text" name="txtTelefono" placeholder="Teléfono" required>
            <input type="email" name="txtCorreo" placeholder="Correo" required>
            <input type="text" name="txtPuesto" placeholder="Puesto" required>
            <button type="sumbit" name="btnRegistrarse" class="boton-brillante">Registrarme</button>
            </div>
        </form>
    </div>
</body>
</html>
