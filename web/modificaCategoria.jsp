<%-- 
    Document   : modificaCategoria
    Created on : 02-05-2020, 07:22:43 PM
    Author     : HP
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        ArrayList<Categoria> lista = (ArrayList<Categoria>) session.getAttribute("cates");
        int id = Integer.parseInt(request.getParameter("id"));
        boolean encontrado = false;
        Iterator<Categoria> it = lista.iterator();
        Categoria p = null;
        while (it.hasNext()){
        p=it.next();
          if (p.getId() == id){
            encontrado = true;
            break;
          }
        }
        %>
        <h1>Modifica categoria</h1>
        <form action="ModicaCategoria" method="POST">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%= p.getId() %>" size="3"/></td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="descripcion" value="<%=p.getDescripcion()%>" size="30"/></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar" /></td>
                </tr>
                
            </table>
    </body>
</html>
