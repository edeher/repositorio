<%-- 
    Document   : VerAutores
    Created on : 27/04/2016, 10:46:37 AM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.AutorPublicacion"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAO"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
    AutorPublicacionDAOFactory fabricate= new   AutorPublicacionDAOFactory();
    AutorPublicacionDAO daote= fabricate.metodoDAO();
    int idPublicacion=Integer.parseInt(request.getParameter("codigo"));
    System.out.println("ver el codigo, llego"+idPublicacion);
    AutorPublicacion[] objAuP=daote.leertodoporpublicacion(idPublicacion);
    
    
    %>
    <body>
        <form name="f" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th>codigo</th>
                        <th>nombre</th>
                         <th>profesion</th>
                        <th>grado</th>
                         <th>especialidad</th>
                        <th>cargo</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <% for(AutorPublicacion objAuP1:objAuP )
                    {
                       
                          
                    
                    %>
                    <tr>
                        <td><%=1%></td>
                        <td><%=objAuP1.getAutor().getNombres() %></td>
                       <td><%=objAuP1.getAutor().getProfesion() %></td>
                       <td><%=objAuP1.getAutor().getGrado() %></td>
                       <td><%=objAuP1.getAutor().getEspecialidad() %></td>
                       <td><%=objAuP1.getTipoautor().name() %></td>
                      
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </form>
    </body>
</html>
