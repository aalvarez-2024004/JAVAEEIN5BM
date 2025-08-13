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
        <a class="logo">Essenza &amp; Co.</a>
    </nav>
    <div class="contenedor-principal">
        <div class="form-container">
            <h2>Gestión de Ventas</h2>

            <form action="" method="post" class="formulario">
                <input type="text" id="idVenta" name="txtIdVenta" placeholder="ID de venta" required>
                <input type="datetime-local" id="fecha" name="txtFecha" placeholder="Fecha" required>
                <input type="text" id="total" name="txtTotal" placeholder="Total" required>
                <input type="number" id="idCliente" name="txtIdCliente" placeholder="ID Cliente" required>
                <input type="number" id="idEmpleado" name="txtIdEmpleado" placeholder="ID Empleado" required>

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
