<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Essenza | Gestión de Productos</title>
    <link rel="stylesheet" href="Styles/producto.css" />
</head>
<body>
    <nav>
        <a class="logo">Essenza &amp; Co.</a>
    </nav>
    <div class="contenedor-principal">
        <div class="form-container">
            <h2>Gestión de Productos</h2>

            <form action="" method="post" class="formulario">
                <input type="text" id="id" name="txtId" placeholder="ID del producto" required />
                <input type="text" id="nombre" name="txtNombreProducto" placeholder="Nombre del producto" required />
                <input type="text" id="descripcion" name="txtDescripcion" placeholder="Descripción" required />
                <input type="text" id="precio" name="txtPrecio" placeholder="Precio" required />
                <input type="text" id="existencias" name="txtExistencias" placeholder="Existencias" required />
                <input type="text" id="idCategoria" name="txtIdCategoria" placeholder="ID Categoría" required />
                <input type="text" id="idMarca" name="txtIdMarca" placeholder="ID Marca" required />
                <div class="botones">
                    <button type="submit" name="btnAgregar" class="agregar">Agregar</button>
                    <button type="submit" name="btnActualizar" class="actualizar">Actualizar</button>
                    <button type="submit" name="btnBuscar" class="buscar">Buscar</button>
                    <button type="button" name="btnEliminar" class="eliminar">Eliminar</button>
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
                        <th>Descripción</th>
                        <th>Precio</th>
                        <th>Existencias</th>
                        <th>ID Categoría</th>
                        <th>ID Marca</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Registros dinámicos aquí -->
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
