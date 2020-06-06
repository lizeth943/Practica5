
package com.emergentes.modelo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "NuevoProducto", urlPatterns = {"/NuevoProducto"})
public class NuevoProducto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Producto objProducto = new Producto();
        objProducto.setId(Integer.parseInt(request.getParameter("id")));
        objProducto.setDescripcion(request.getParameter("descripcion"));
        objProducto.setId_categoria(Integer.parseInt(request.getParameter("id_categoria")));
        objProducto.setCantidad(Integer.parseInt(request.getParameter("cantidad")));
        
        HttpSession ses = request.getSession();
        
        ArrayList<Producto> lista = (ArrayList<Producto>)ses.getAttribute("items");
        
        lista.add(objProducto);
        
        ses.setAttribute("items", lista);
        
        response.sendRedirect("productos.jsp");
    }
    
}
