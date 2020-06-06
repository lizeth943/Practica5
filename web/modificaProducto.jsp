<%-- 
    Document   : modificaProducto
    Created on : 02-05-2020, 09:39:21 PM
    Author     : HP
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.emergentes.modelo.Producto"%>
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
          ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("items");
          
          int id = Integer.parseInt(request.getParameter("id"));
          
          boolean encontrado = false;
          
          Iterator<Producto> it = lista.iterator();
          Producto p = null;
          while (it.hasNext()){
              p = it.next();
              if (p.getId() == id){
                  encontrado = true;
                  break;
              }
          }
        %>
        <h1>Modifica producto</h1>
        <form action="ModificaProducto" method="POST">
            <table>
                <tr> 
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%= p.getId() %>" size="3"/></td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td>
                        <select name="id_categoria">
                            <%
                               ArrayList<Categoria> categorias = (ArrayList<Categoria>) session.getAttribute("cates");
                               
                               for (Categoria item : categorias){
                            %>
                            <option value="<%= item.getId()%>"<% if (item.getId() ==p.getId_categoria()) {%> selected <%}%> ><%=item.getDescripcion()%></option>
                            <%
                               }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="text" name="cantidad" value="<%= p.getCantidad()%>" size="5" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
