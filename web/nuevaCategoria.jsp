
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
        <h1>Nueva categoria</h1>
        <form action="nuevaCategoria" method="POST">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="" size="3"/></td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="descripcion" value="" size="30"/></td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td>
                        <select name="id_categoria">
                        <%
                        ArrayList<Categoria> categorias = (ArrayList<Categoria>) session.getAttribute("cates");
                        for(Categoria item : categorias){
                        %>
                        <option value="<%= item.getId()%>"><%=item.getDescripcion()%></option>
                        <%
                         }
                        %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
