<%-- 
    Document   : proveedores
    Created on : 22/07/2025, 17:10:03
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ventana de Clientes</title>
    <link rel="stylesheet" href="Styles/cliente.css">
</head>
<body>

    <nav>
        <a class="logo"> Essenza & Co.</a>
    </nav>
    
    <div class="fondo"></div>

    <div class="contenedor-principal">
        <div class="panel-formulario">
            <h1>Gestión de Clientes</h1>

            <form action="" method="post" class="formulario">
                <input type="text" id="codigoCliente" name="txtCodigoCliente" placeholder="Código del cliente" />
                <input type="text" id="nombreCliente" name="txtNombreCliente" placeholder="Nombre del Cliente" />
                <input type="text" id="apellidoCliente" name="txtApellidoCliente" placeholder="Apellido del Cliente" />
                <input type="text" id="correoCliente" name="txtCorreoCliente" placeholder="Correo del Cliente" />
                <input type="password" id="contraseniaCliente" name="txtContraseniaCliente" placeholder="Contraseña" />
                <input type="text" id="imagen" name="txtImagen" placeholder="(Solo poner '' o null)" />

                <div class="botones">
                    <button type="submit" name="btnAgregar">Agregar</button>
                    <button type="submit" name="btnActualizar">Actualizar</button>
                    <button type="submit" name="btnBuscar">Buscar</button>
                    <button type="submit" name="btnEliminar" class="eliminar">Eliminar</button>
                </div>
            </form>

            <div class="marca-interna">
                Essenza & Co.
            </div>
        </div>

        <div class="panel-tabla">
            <div class="tabla-contenedor">
                <table class="tabla">
                    <thead>
                        <tr>
                            <th>Id Cliente</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Correo</th>
                            <th>Contraseña</th>
                        </tr>
                    </thead>
                </table>
            </div> 
        </div> 
    </div>  
    
</body>
</html>
