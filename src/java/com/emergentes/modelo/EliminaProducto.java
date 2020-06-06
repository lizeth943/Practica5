
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

@WebServlet(name = "EliminaProducto", urlPatterns = {"/EliminaProducto"})
public class EliminaProducto extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        ArrayList<Producto> lista = (ArrayList<Producto>)ses.getAttribute("items");
        
        Producto p = null;
        
        int indice = 0;
        
        while (indice < lista.size()){
            p = lista.get(indice);
            
            if( p.getId() == Integer.parseInt(request.getParameter("id")) ){
               lista.remove(indice);
               break;
            }
            indice++;
        }
        ses.setAttribute("items",lista);
        response.sendRedirect("productos.jsp");
    }
}
