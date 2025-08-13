<%-- 
    Document   : empleado
    Created on : 22/07/2025, 17:08:43
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Essenza | Gestión de Empleados</title>
    <link rel="stylesheet" href="Styles/empleado.css" />
</head>
<body>

    <nav>
        <a class="logo">Essenza &amp; Co.</a>
    </nav>

    <div class="contenedor-principal">

        <div class="form-container">
            <h2>Gestión de Empleados</h2>
            
            <form action="" method="post" class="formulario">
                <input type="text" id="idEmpleado" name="txtIdEmpleado" placeholder="ID" required />
                <input type="text" id="nombreEmpleado" name="txtNombreEmpleado" placeholder="Nombre" required />
                <input type="text" id="apellido" name="txtApellido" placeholder="Apellido" required />
                <input type="text" id="direccion" name="txtDireccion" placeholder="Dirección" required />
                <input type="text" id="telefono" name="txtTelefono" placeholder="Teléfono" required />
                <input type="email" id="correoElectronico" name="txtCorreoElectronico" placeholder="Email" required />
                <input type="text" id="puesto" name="txtPuesto" placeholder="Puesto" required />

                <div class="botones">
                    <button type="submit" name="btnAgregar" class="agregar">Agregar</button>
                    <button type="submit" name="btnEditar" class="actualizar">Actualizar</button>
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
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Dirección</th>
                        <th>Teléfono</th>
                        <th>Email</th>
                        <th>Puesto</th>
                        <th>Acciones</th>
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
