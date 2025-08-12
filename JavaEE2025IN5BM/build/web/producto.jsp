<%-- 
    Document   : producto
    Created on : 23 jul 2025, 07:05:17
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gestión de Productos</title>
    <link rel="stylesheet" href="Styles/producto.css" />
    <link rel="stylesheet" href="fonts.css" />
</head>

<body>

    <nav>
        <a class="logo">Essenza & Co.</a>
    </nav>
    <div class="fondo"></div>

    <div class="contenedor-principal">
        
        <div class="panel-formulario">
            <h1>Gestión de Productos</h1>

            <form action="" method="post" class="formulario">
                <input type="text" autocomplete="off" name="txtId" class="input" placeholder="ID del producto" required>
                <input type="text" autocomplete="off" name="txtNombreProducto" class="input" placeholder="Nombre del producto" required>
                <input type="text" autocomplete="off" name="txtDescripcion" class="input" placeholder="Descripción" required>
                <input type="text" autocomplete="off" name="txtPrecio" class="input" placeholder="Precio" required>
                <input type="text" autocomplete="off" name="txtExistencias" class="input" placeholder="Existencias" required>
                <input type="text" autocomplete="off" name="txtIdCategoria" class="input" placeholder="ID Categoría" required>
                <input type="text" autocomplete="off" name="txtIdMarca" class="input" placeholder="ID Marca" required>

                <div class="botones">
                    <button type="submit" name="btnAgregar">
                        <span>Agregar</span>
                    </button>
                    <button type="submit" name="btnActualizar">
                        <span>Editar</span>
                    </button>
                    <button type="submit" name="btnBuscar">
                        <span>Buscar</span>
                    </button>
                    <button type="submit" name="btnEliminar" class="Eliminar">
                        <span>Eliminar</span>
                    </button>
                </div>
            </form>
        </div>

        <!-- Modal de confirmación de eliminación -->
        <div id="confirmacionContenedor" class="modal">
            <div class="contenedorElimnar">
                <div class="notificacionEliminar">
                    <div class="fondo">
                        <div class="fondoTxt">
                            <div class="txt">
                                <svg class="fondo-svg" xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                    <path fill-rule="evenodd"
                                        d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                                        clip-rule="evenodd"></path>
                                </svg>
                            </div>
                            <div class="fondoWarning">
                                <p class="encabezadoWarning">¿Estas seguro de que quieres eliminar el registro?</p>
                                <div class="descripcionWarning">
                                    <p>Este registro se eliminará permanentemente de la base de datos.</p>
                                </div>
                                <div class="fondoBtnWarning">
                                    <button type="submit" form="formProducto" name="btnEliminar" class="btnConfirmarDelete">Si, Eliminar</button>
                                    <button type="button" class="noDelete" id="cancelarEliminacion">Cancelar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel-tabla">
            <div class="tabla-contenedor">
                <table class="tabla">
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
                        <!-- Aquí irían los registros desde la BD -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const botonesEliminar = document.querySelectorAll('.Eliminar');
            const modal = document.querySelector('.modal');
            const confirmarEliminacion = document.querySelector('.btnConfirmarDelete');
            const cancelarEliminacion = document.querySelector('.noDelete');

            if (modal) modal.style.display = 'none';

            botonesEliminar.forEach(boton => {
                boton.addEventListener('click', () => {
                    if (modal) modal.style.display = 'flex';
                });
            });

            if (cancelarEliminacion) {
                cancelarEliminacion.addEventListener('click', () => {
                    if (modal) modal.style.display = 'none';
                });
            }

            if (modal) {
                modal.addEventListener('click', (event) => {
                    if (event.target === modal) {
                        modal.style.display = 'none';
                    }
                });
            }
        });
    </script>

</body>
</html>
