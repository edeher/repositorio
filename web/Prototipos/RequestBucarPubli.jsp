
<%-- 
    Document   : RequestBucarPubli
    Created on : 25/04/2016, 08:55:33 AM
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
             function Ventana(f,codigo)
            {
                javascript:window.open('Prototipos/crearAutor.jsp?val=bus&codigo='+codigo, '', 'width=500,height=400,left=550,top=200,resizable=0,toolsbar=1,scrollbars=1');
               
            }
             function Ventana1(f,codigo)
            {
                javascript:window.open('Prototipos/VerAutores.jsp?codigo='+codigo, '', 'width=500,height=400,left=550,top=200,resizable=0,toolsbar=1,scrollbars=1');
               
            }     
            
        </script>
    </head>
    <%
       Publicacion[] publi= (Publicacion[]) request.getAttribute("publi");
    %>
    <body>
        <form name="f" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Linea de Investigacion</th>
                         <th>Titulo</th>
                          <th>Fecha de Carga</th>
                           <th>fecha de Publicacion</th>
                           <th colspan="2">opciones</th>
                           
                    </tr>
                </thead>
                <tbody>
                     <%                    
                    for (Publicacion publi1:publi) 
                    {
                        int codigo=publi1.getIdPublicacion();
                %>
                    <tr>
                        <td><%=publi1.getIdPublicacion() %></td>
                        <td><%=publi1.getLineaInvestigacion().getDescripcion() %></td>
                        <td><%=publi1.getTitulo() %></td>
                        <td><%=publi1.getFechaCarga() %></td>
                         <td><%=publi1.getFechaPublicacion() %></td>
                         <td><input type="button" value="agregar" onclick="Ventana(this.form,'<%=codigo%>')"/></td>
                         <td><input type="button" value="autores" onclick="Ventana1(this.form,'<%=codigo%>')"/></td>
                    </tr>
                    <%}%>
                   
                </tbody>
            </table>

        </form>
    </body>
</html>
