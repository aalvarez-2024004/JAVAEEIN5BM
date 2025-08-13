<%-- 
    Document   : empleado
    Created on : 22/07/2025, 17:08:43
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            
            <form action="Controlador?menu=Empleado" method="POST" class="formulario">
                <input type="text" value="${empleado.getCodigoEmpleado()}" name="txtIdEmpleado" placeholder="ID" />
                <input type="text" value="${empleado.getNombreEmpleado()}" name="txtNombreEmpleado" placeholder="Nombre" required />
                <input type="text" value="${empleado.getApellidoEmpleado()}" name="txtApellidoEmpleado" placeholder="Apellido" required />
                <input type="text" value="${empleado.getDireccionEmpleado()}" name="txtDireccionEmpleado" placeholder="Dirección" required />
                <input type="text" value="${empleado.getTelefonoEmpleado()}" name="txtTelefonoEmpleado" placeholder="Teléfono" required />
                <input type="email" value="${empleado.getEmailEmpleado()}" name="txtEmailEmpleado" placeholder="Email" required />
                <input type="text" value="${empleado.getPuestoEmpleado()}" name="txtPuestoEmpleado" placeholder="Puesto" required />

                <div class="botones">
                    <button type="submit" name="accion" class="agregar" value="Agregar">Agregar</button>
                    <button type="submit" name="accion" class="actualizar">Actualizar</button>
                    <button type="submit" name="accion" class="buscar">Buscar</button>
                    <button type="submit" name="accion" class="eliminar">Eliminar</button>
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
                    <c:forEach var="empleado" items="${empleados}">
                        <tr>
                            <td>${empleado.getCodigoEmpleado()}</td>
                            <td>${empleado.getNombreEmpleado()}</td>
                            <td>${empleado.getApellidoEmpleado()}</td>
                            <td>${empleado.getDireccionEmpleado()}</td>
                            <td>${empleado.getTelefonoEmpleado()}</td>
                            <td>${empleado.getEmailEmpleado()}</td>
                            <td>${empleado.getPuestoEmpleado()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </div>

</body>
</html>
