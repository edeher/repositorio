<%-- 
    Document   : carga archivo
    Created on : 04/05/2016, 07:06:29 PM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.ArchivoPublicacion"%>
<%@page import="com.repositoriounia.dao.ArchivoPublicacionDAOFactory"%>
<%@page import="com.repositoriounia.dao.ArchivoPublicacionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
       ArchivoPublicacionDAOFactory fabricate=new ArchivoPublicacionDAOFactory();
        ArchivoPublicacionDAO daote=fabricate.metodoDAO();
        //int idPublicacion=Integer.parseInt(request.getParameter("idublicacion"));
        ArchivoPublicacion [] archipu=daote.leertodoidpublicacion(2); 
    
    %>
    <body>
        <form name="f" method="POST" enctype="multipart/form-data" action="ArchivoPublicacionController?accion=cargarArchivo" >
            <table border="1">
                 <tr>
                        <td>1</td>
                        <td><input type="text" name="idpublicacion" value="2" /></td>
                        
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><input type="text" name="descripcion" value="TE" /></td>
                        
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><input type="text" name="urllocal" value="urllocal" /></td>
                        
                    </tr>
                     <tr>
                        <td>4</td>
                        <td><input type="text" name="urlweb" value="urlweb" /></td>
                        
                    </tr>
                     <tr>
                        <td>Selecciona el archivo</td>
                        <td><input accept=".pdf" type="file" name="archivo" value="" /></td>
                        
                    </tr>
               <tr>
                        <td>5</td>
                        <td><input type="submit" value="enviar" /></td>
                        
                    </tr>
            </table>
            
            <table border="1">
                <thead>
                    <tr>
                        <th>titulo</th>
                        <th>nombre de Archivo</th>
                        <th>opcion</th>
                    </tr>
                </thead>
                <tbody>
                     <% for(ArchivoPublicacion obj:archipu )
                    {
                       
                    %>
                    <tr>
                        <td><%=obj.getPublicacion().getTitulo() %> </td>
                        <td><%=obj.getDescripcion().getNom()%> </td>
                        <td><a href="ArchivoPublicacionController?accion=verArchivo&idpublicacion=<%=obj.getIdArchivoPublicacion()%>">Ver archivo</a></td>
                    </tr>
                   <%}%>
                </tbody>
            </table>

        </form>
    </body>
</html>
