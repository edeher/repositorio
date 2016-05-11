<%-- 
    Document   : verAutores
    Created on : 09/05/2016, 04:41:06 PM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.Publicacion"%>
<%@page import="com.repositoriounia.dao.PublicacionDAO"%>
<%@page import="com.repositoriounia.dao.PublicacionDAOFactory"%>
<%@page import="com.repositoriounia.modelo.AutorPublicacion"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAO"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

 

  <!-- Bootstrap core CSS -->

   <link href="css/bootstrap.min.css" rel="stylesheet">

  <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet">

  <!-- Custom styling plus plugins -->
  <link href="css/custom.css" rel="stylesheet">
  <link href="css/icheck/flat/green.css" rel="stylesheet">
  

  <script src="js/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        
    AutorPublicacionDAOFactory fabricate= new   AutorPublicacionDAOFactory();
    AutorPublicacionDAO daote= fabricate.metodoDAO();
    PublicacionDAOFactory fabricate1= new   PublicacionDAOFactory();
    PublicacionDAO daote1= fabricate1.metodoDAO();
    int idPublicacion=Integer.parseInt(request.getParameter("codigo"));
    System.out.println("ver el codigo, llego"+idPublicacion);
    AutorPublicacion[] objAuP=daote.leertodoporpublicacion(idPublicacion);
    Publicacion publi=daote1.leerxid(idPublicacion);
    
    %>
    <body>
        
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Autores de la Publicacion N° <%=publi.getIdPublicacion() %>  </h4>

        </div>
        <div class="modal-body">     
<div class="x_panel">
                <div class="x_title">
                  <h2>Titulo  <small> "<%=publi.getTitulo() %>"</small></h2>
                
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                         <th>Profesion</th>
                        <th>Grado</th>
                         <th>Especialidad</th>
                        <th>Cargo</th>
                      </tr>
                    </thead>
                    <tbody>
                    <% for(AutorPublicacion objAuP1:objAuP )
                    {
                      
                    %>
                    <tr>
                   <td><%=objAuP1.getAutor().getIdAutor() %></td>
                        <td><%=objAuP1.getAutor().getNombres() %></td>
                       <td><%=objAuP1.getAutor().getProfesion() %></td>
                       <td><%=objAuP1.getAutor().getGrado() %></td>
                       <td><%=objAuP1.getAutor().getEspecialidad() %></td>
                       <td><%=objAuP1.getTipoautor().name() %></td>
                      
                    </tr>
                    <%}%>
                </tbody>
                  </table>

                </div>
              </div>
            
        </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
          <button type="button" class="btn btn-primary" id="btnguardar" >Guardar Cambios</button>
      </div>
      
    </body>
     <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
