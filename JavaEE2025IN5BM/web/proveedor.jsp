<%-- 
    Document   : proveedores
    Created on : 22/07/2025, 17:10:03
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Essenza | Gestión de Proveedores</title>
    <link rel="stylesheet" href="Styles/proveedor.css" />
</head>
<body>

    <nav>
        <a class="logo">Essenza &amp; Co.</a>
    </nav>

    <div class="contenedor-principal">

        <div class="form-container">
            <h2>Gestión de Proveedores</h2>
            
            <form action="" method="post" class="formulario">
                <input type="text" id="codigo" name="txtCodigoProveedor" placeholder="Código del Proveedor" required />
                <input type="text" id="nombre" name="txtNombre" placeholder="Nombre" required />
                <input type="text" id="direccion" name="txtDireccion" placeholder="Dirección" required />
                <input type="text" id="celular" name="txtCelular" placeholder="Celular" required />
                <input type="email" id="correo" name="txtCorreo" placeholder="Correo" required />

                <div class="botones">
                    <button type="submit" name="btnAgregar" class="agregar">Agregar</button>
                    <button type="submit" name="btnActualizar" class="actualizar">Actualizar</button>
                    <button type="submit" name="btnBuscar" class="buscar">Buscar</button>
                    <button type="submit" name="btnEliminar" class="eliminar">Eliminar</button>
                </div>
            </form>
            <div class="marca-interna">
                Essenza &amp; Co.
            </div>
        </div>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Dirección</th>
                        <th>Celular</th>
                        <th>Correo</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>

</body>
</html>
