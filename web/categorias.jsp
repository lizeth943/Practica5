<%-- 
    Document   : categorias
    Created on : 02-05-2020, 06:59:33 PM
    Author     : HP
--%>

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
        <h1>Categorias</h1>
        <p><a href="nuevacategoria.jsp">Nueva categoria</a></p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
            </tr>
            <%
                ArrayList<Categoria> categorias = (ArrayList<Categoria>) session.getAttribute("cates");
                for( Categoria item : categorias){
                    %>
                    <tr>
                        <td><%= item.getId()%></td>
                        <td><%= item.getDescripcion ()%></td>
                        <td><a href='modificarCategoria.jsp?id=<%=item.getId()%>'>Modificar</a></td>
                    </tr>
                    <%
                         }
                    %>
            
        </table> 
        <p></p>
        <p><a href="index.jsp">Volver al menu principal</p>
    </body>
</html>
