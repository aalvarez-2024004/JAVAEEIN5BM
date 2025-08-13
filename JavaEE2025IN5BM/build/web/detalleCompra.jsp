<%-- 
    Document   : detalleCompras
    Created on : 22/07/2025, 17:57:26
    Author     : danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Essenza | Detalle de Compras</title>
    <link rel="stylesheet" href="Styles/detalleCompra.css">
</head>
<body>

    <nav>
        <a class="logo">Essenza & Co.</a>
    </nav>

    <div class="contenedor-principal">

        <div class="form-container">
            <h2>Gestión de Productos</h2>
            
            <form action="" method="post" class="formulario">
                <input type="text" name="txtCantidad" placeholder="Cantidad" required>
                <input type="text" name="txtPrecioUnitario" placeholder="Precio Unitario" required>
                <input type="email" name="txtCodigoCompra" placeholder="Codigo Compra" required>
                <input type="password" name="txtCodigoProducto" placeholder="Codigo Producto" required>

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
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Codigo Compra</th>
                        <th>Codigo Producto</th>
                    </tr>
                </thead>
            </table>
        </div>
        <div class="cube-loader">
            <div class="cube-top"></div>
            <div class="cube-wrapper">
              <span style="--i:0" class="cube-span"></span>
              <span style="--i:1" class="cube-span"></span>
              <span style="--i:2" class="cube-span"></span>
              <span style="--i:3" class="cube-span"></span>
            </div>
          </div>
    </div>

</body>
</html>
