<%-- 
    Document   : admin
    Created on : 22/07/2025, 16:43:15
    Author     : Francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Essenza & Co. | Ventana de Administrador</title>
    <link rel="stylesheet" href="Styles/admin.css">
</head>
<body>
    
    <nav>
        <ul>
            <li><a href="Controlador?menu=Cliente" target="contenido">Clientes</a></li>
            <li><a href="Controlador?menu=Proveedor" target="contenido">Proveedores</a></li>
            <li><a href="Controlador?menu=Producto" target="contenido">Productos</a></li>
            <li><a href="Controlador?menu=Empleado" target="contenido">Empleados</a></li>
            <li><a href="Controlador?menu=Venta" target="contenido">Ventas</a></li>
            <li><a href="Controlador?menu=detalleVenta" target="contenido">Detalle Ventas</a></li>
            <li><a href="Controlador?menu=Factura" target="contenido">Facturas</a></li>
            <li><a href="Controlador?menu=Compras" target="contenido">Compras</a></li>
            <li><a href="Controlador?menu=detalleCompras" target="contenido">Detalle Compras</a></li>
            <li class="avatar">
                <img src="img/UsuarioAdmin.png" alt="Avatar">
                <ul class="avatar-menu">
                    <%-- Se muestra el nombre y correo del empleado que inicio sesion--%>
                    <li><strong>${usuario.nombreEmpleado}</strong></li>
                    <li>${usuario.emailEmpleado}</li>
                    <li><a href="Controlador?menu=cambiarCuenta">Cambiar Cuenta</a></li>
                    <li><a href="Controlador?menu=cerrarSesion">Cerrar sesión</a></li>
                </ul>
            </li>
        </ul>
    </nav>

    <div class="panel">
        <h2>Bienvenido a la ventana de Administrador</h2>
    </div>

    <div class="contenido">
        <iframe name="contenido"></iframe>
    </div>

</body>
</html>
