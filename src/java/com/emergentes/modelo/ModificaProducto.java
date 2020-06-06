/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

@WebServlet(name = "ModificaProducto", urlPatterns = {"/ModificaProducto"})
public class ModificaProducto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        
        ArrayList<Producto> lista = (ArrayList<Producto>)ses.getAttribute("items");
        
        Iterator<Producto> it = lista.iterator();
        Producto p = null;
        boolean encontrado = false;
        while (it.hasNext() && encontrado != true){
            p = it.next();
            if ( p.getId() == Integer.parseInt(request.getParameter("id"))){
                encontrado = true;
            }
        }
        if (encontrado){
            p.setDescripcion(request.getParameter("descripcion"));
            p.setId_categoria(Integer.parseInt(request.getParameter("id_categoria")));
            p.setCantidad(Integer.parseInt(request.getParameter("cantidad")));
        }
        ses.setAttribute("items",lista);
        response.sendRedirect("productos.jsp");
    }
}

