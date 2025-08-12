<%-- 
    Document   : venta
    Created on : 22/07/2025, 17:34:01
    Author     : Titi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Essenza & Co. | Gestión de Ventas</title>
    <link rel="stylesheet" href="Styles/venta.css">
</head>
<body>
    <nav>
    </nav>

    <div class="contenedor-principal">
        <div class="form-container">
            <h2>Gestión de Ventas</h2>
            
            <form action="" method="post" class="formulario">
                <input type="text" name="txtIdVenta" placeholder="ID de venta" required>
                <input type="datetime-local" name="txtFecha" placeholder="Fecha" required>
                <input type="text" name="txtTotal" placeholder="Total" required>
                <input type="number" name="txtIdCliente" placeholder="ID Cliente" required>
                <input type="number" name="txtIdEmpleado" placeholder="ID Empleado" required>
                
                <div class="botones">
                    <button type="submit" name="btnAgregar">Agregar</button>
                    <button type="submit" name="btnActualizar">Actualizar</button>
                    <button type="submit" name="btnBuscar">Buscar</button>
                    <button type="submit" name="btnEliminar">Eliminar</button>
                </div>
            </form>
            
        </div>

        <div class="table-container">  
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Fecha</th>
                        <th>Total</th>
                        <th>ID Cliente</th>
                        <th>ID Empleado</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
