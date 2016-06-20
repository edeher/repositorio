<%-- 
    Document   : Autor
    Created on : 23/05/2016, 09:48:42 PM
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
        AutorPublicacionDAOFactory fabricate=new AutorPublicacionDAOFactory();
        AutorPublicacionDAO daote=fabricate.metodoDAO();
        
        int idAutor=Integer.parseInt(request.getParameter("codigo"));
        int idPublicacion=Integer.parseInt(request.getParameter("idPublicacion"));
        System.out.println("codigo= "+idAutor+"; idpublicacion="+idPublicacion);
        
        AutorPublicacion autorpu=daote.leerxidAuPuyidPu(idAutor, idPublicacion);
    
    %>
    <body>


        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Investigador UNIA </h4>

        </div>
        <div class="modal-body">     

            <form class="form-horizontal form-label-left " id="crearform" enctype="multipart/form-data">
                <div class="x_panel">
                    <div class="x_content">
                        

                      
                            
                                <div class="col-sm-12">
                                    <h4 class="brief"><i><strong><%=autorpu.getTipoautor().getNom() %></strong></i></h4>
                                    <div class="left col-xs-7">
                                        <h2><%=autorpu.getAutor().getNombres() %> <%=autorpu.getAutor().getApellidos() %></h2>
                                        <p><strong><%=autorpu.getAutor().getProfesion() %></strong>  </p>
                                        <ul class="list-unstyled">
                                            <li><i class="fa fa-phone"></i>: <%=autorpu.getAutor().getTelefono() %> </li>
                                            <li><i class="fa fa-envelope"></i>: <%=autorpu.getAutor().getCorrero() %> </li>

                                        </ul>
                                    </div>
                                    <div class="right col-xs-5 text-center">
                                        <img src="images/img.jpg" alt="" class="img-circle img-responsive">
                                    </div>
                                </div>
                                <div class="col-xs-12 bottom text-center">
                                    <div class="col-xs-12 col-sm-6 emphasis">
                                        <p class="ratings">
                                            <a>4.0</a>
                                            <a href="#"><span class="fa fa-star"></span></a>
                                            <a href="#"><span class="fa fa-star"></span></a>
                                            <a href="#"><span class="fa fa-star"></span></a>
                                            <a href="#"><span class="fa fa-star"></span></a>
                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 emphasis">
                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                            </i> <i class="fa fa-comments-o"></i> </button>
                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                            </i> View Profile </button>
                                    </div>
                                </div>
                          
                    </div>
                
                </div>


            </form>                          
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
           
        </div>
    </body>
</html>
