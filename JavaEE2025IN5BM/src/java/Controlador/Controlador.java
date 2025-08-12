/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
*/
package Controlador;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
*
* @author informatica
*/
public class Controlador extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        
        if (menu.equals("Principal")) {
        request.getRequestDispatcher("admin.jsp").forward(request, response);
        }
        
        // Segun el valor del menu, se redigira al JSP correspondiente ;D
        if(menu != null){
            switch (menu) {
                case "Cliente":
                    request.getRequestDispatcher("cliente.jsp").forward(request, response);
                    break;
                case "Proveedor":
                    request.getRequestDispatcher("proveedor.jsp").forward(request, response);
                    break;
                case "Producto":
                    request.getRequestDispatcher("producto.jsp").forward(request, response);
                    break;    
                case "Empleado":
                    request.getRequestDispatcher("empleado.jsp").forward(request, response);
                    break;
                case "Venta":
                    request.getRequestDispatcher("venta.jsp").forward(request, response);
                    break; 
                case "detalleVenta":
                    request.getRequestDispatcher("detalleVenta.jsp").forward(request, response);
                    break;
                case "Factura":
                    request.getRequestDispatcher("factura.jsp").forward(request, response);
                    break;
                case "Compras":
                    request.getRequestDispatcher("compras.jsp").forward(request, response);
                    break;
                case "detalleCompras":
                    request.getRequestDispatcher("detalleCompra.jsp").forward(request, response);
                    break;
                case "cambiarCuenta":
                    request.getRequestDispatcher("principal.jsp").forward(request, response);
                    break;
                case "cerrarSesion":
                    //Elmina los datos guardados de la persona que inicio sesion
                    request.getSession().invalidate();
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**

     * Handles the HTTP <code>GET</code> method.

     *

     * @param request servlet request

     * @param response servlet response

     * @throws ServletException if a servlet-specific error occurs

     * @throws IOException if an I/O error occurs

     */

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response)

            throws ServletException, IOException {

        processRequest(request, response);

    }
 
    /**

     * Handles the HTTP <code>POST</code> method.

     *

     * @param request servlet request

     * @param response servlet response

     * @throws ServletException if a servlet-specific error occurs

     * @throws IOException if an I/O error occurs

     */

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)

            throws ServletException, IOException {

        processRequest(request, response);

    }
 
    /**

     * Returns a short description of the servlet.

     *

     * @return a String containing servlet description

     */

    @Override

    public String getServletInfo() {

        return "Short description";

    }// </editor-fold>
}

 