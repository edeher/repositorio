<%-- 
    Document   : PublicacionAutores
    Created on : 15/04/2016, 02:41:45 PM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.Publicacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javaScript">
             function Ventana(f)
            {
                javascript:window.open('Prototipos/crearAutor.jsp', '', 'width=400,height=600,left=550,top=200,resizable=0,toolsbar=1,scrollbars=1');
               
            }
                     
            
        </script>
    </head>
    <%
        Publicacion publi=new Publicacion();
        publi=(Publicacion)request.getAttribute("publi");
        
    %>
    <body>
        <form name="f" method="POST">
             <table border="1">
            <thead>
                <tr>
                    <th>codigo</th>
                    <th>Linea de Investigacion</th>
                    <th>Titulo</th>
                    <th>fecha de Carga</th>
                    <th>fecha de Publicacion</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%=publi.getIdPublicacion() %></td>
                    <td><%=publi.getLineaInvestigacion().getDescripcion()%></td>
                    <td><%=publi.getTitulo() %></td>
                    <td><%=publi.getFechaCarga() %></td>
                    <td><%=publi.getFechaPublicacion()%></td>
                    
                </tr>
                <tr>
                    <td colspan="4">Agregar Autores</td>
                    <td><input type="button" value="agregar" onclick="Ventana(this.form)"/></td>
                   
                </tr>
                
            </tbody>
        </table>
        </form>
                    
    </body>
</html>
