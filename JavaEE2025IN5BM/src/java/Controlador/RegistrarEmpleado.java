/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(name = "RegistrarEmpleado", urlPatterns = {"/RegistrarEmpleado"})
public class RegistrarEmpleado extends HttpServlet {

    EmpleadoDAO empleadoDAO = new EmpleadoDAO();
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrarEmpleado</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarEmpleado at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

        // Capturar datos del formulario
        String nombre = request.getParameter("txtNombre");
        String apellido = request.getParameter("txtApellido");
        String direccion = request.getParameter("txtDireccion");
        String telefono = request.getParameter("txtTelefono");
        String correo = request.getParameter("txtCorreo");
        String puesto = request.getParameter("txtPuesto");

        Empleado nuevoEmpleado = new Empleado();
        nuevoEmpleado.setNombreEmpleado(nombre);
        nuevoEmpleado.setApellidoEmpleado(apellido);
        nuevoEmpleado.setDireccionEmpleado(direccion);
        nuevoEmpleado.setTelefonoEmpleado(telefono);
        nuevoEmpleado.setEmailEmpleado(correo);
        nuevoEmpleado.setPuestoEmpleado(puesto);

        boolean registrado = empleadoDAO.agregar(nuevoEmpleado);

        response.setContentType("text/html;charset=UTF-8");
        if (registrado) {
            response.getWriter().println("<script>alert('Empleado registrado correctamente');location='index.jsp';</script>");
        } else {
            response.getWriter().println("<script>alert('Error al registrar empleado');location='registrarse.jsp';</script>");
        }
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
