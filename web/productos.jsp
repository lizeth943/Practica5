<%-- 
    Document   : newjsp
    Created on : 02-05-2020, 07:44:29 PM
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Productos</h1>
        <p><a href="nuevoproductos.jsp">Nuevo productos</a></p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Categoria</th>
                <th>Cantidad</th>
            </tr>
            <%
                ArrayList<Producto> productos = (ArrayList<Producto>) session.getAttribute("items");
                for (Producto item : productos){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getDescripcion()%></td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getCantidad()%></td>
                <td><a href='modificaProducto.jsp?id=<%=item.getId()%>'>Modificar</a></td>
                <td><a href="EliminaProducto?id=<%=item.getId()%>" onclick="return confirm('Esta seguro de eliminar ?')">Eliminar</a></td>
            </tr>
            <%
}           }
            %>
        </table>
        <p></p>
        <p><a href="index.jsp">Volver al menu principal</a></p>
    </body>
</html>
