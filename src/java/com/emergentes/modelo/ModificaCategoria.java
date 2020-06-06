
package com.emergentes.modelo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ModificaCategoria", urlPatterns = {"/ModificaCategoria"})
public class ModificaCategoria extends HttpServlet {

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
        HttpSession ses = request.getSession();
        ArrayList<Categoria> lista = (ArrayList<Categoria>)ses.getAttribute("cates");
        
        Iterator<Categoria> it = lista.iterator();
        Categoria p = null;
        boolean encontrado = false;
        while (it.hasNext() && encontrado != true){
           p = it.next();
           if( p.getId() == Integer.parseInt(request.getParameter("id")) ){
              encontrado = true;
           }
        }
        if (encontrado){
           p.setDescripcion(request.getParameter("descripcion"));
        }
        ses.setAttribute("cates", lista);
        response.sendRedirect("categorias.jsp");
    }
}

