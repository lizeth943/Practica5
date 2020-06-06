<%@page import="com.emergentes.modelo.Categoria" %>
<%@page import="com.emergentes.modelo.Producto" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(session.getAttribute("items")== null){
   ArrayList<Producto> lista = new ArrayList<Producto>();
   session.setAttribute("items", lista);
}
if(session.getAttribute("cates")== null){
   ArrayList<Categoria> lista = new ArrayList<Categoria>();
   lista.add(new Categoria(1, "Bebidas"));
   lista.add(new Categoria(2, "Galletas"));
   lista.add(new Categoria(3, "Golocinas"));
   session.setAttribute("cates", lista);
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Almacen</h1>
        <ul>
            <li><a href="productos.jsp">Productos</a></li>
            <li><a href="categorias.jsp">Productos</a></li>
        </ul>
    </body>
</html>
