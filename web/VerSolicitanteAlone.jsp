<%-- 
    Document   : NuevoInvestigador2
    Created on : 18/06/2016, 12:00:09 PM
    Author     : Mi Laptop
--%>




<%@page import="com.repositoriounia.modelo.Solicitante"%>
<%@page import="com.repositoriounia.dao.SolicitanteDAO"%>
<%@page import="com.repositoriounia.dao.SolicitanteDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	

    </head>
    <%
         int idSolicitante= Integer.parseInt(request.getParameter("idSolicitante"));
       SolicitanteDAOFactory fabricate = new   SolicitanteDAOFactory();
          SolicitanteDAO daote = fabricate.metodoDAO();
         Solicitante denun=daote.leerxid(idSolicitante);
        
    %>
    <body>
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Solicitante </h4>

        </div>
        <div class="modal-body">  
            <!--cabeceras de pestañas-->
            
            <!--     finde cabeceras de pestañas  -->
            <!-- cuerpo de pestañas--->
            <div class="container">
              

                    <!---cuerpo de pestaña 1 --->
                   
                        <form class="form-horizontal form-label-left " id="crearform1" enctype="multipart/form-data">
                            
                            

                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">NOMBRES</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input type="hidden" name="idAutor1"id="idAutor1" value="" />
                                                   
                                                    <input name="nombres1" id="nombres1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="<%=denun.getNombres() %>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">apellido</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="apellidos1" id="apellidos1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="<%=denun.getApellidos() %>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">DNI</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="dni1" id="dni1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="<%=denun.getDni() %>">
                                                </div>
                                            </div>
                                        </div>         
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">telefono</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="telefono1" id="telefono1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="<%=denun.getTelefono() %>">
                                                </div>

                                            </div>

                                        </div>

                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">direccion</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="direccion1" id="direccion1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="<%=denun.getDireccion() %>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">correo</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="correo1" id="correo1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="<%=denun.getCorrero() %>">
                                                </div>
                                            </div>
                                        </div>
                                                <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Entidad</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="correo1" id="correo1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="<%=denun.getEntidad() %>">
                                                </div>
                                            </div>
                                        </div>
                                                <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Area de Trabajo</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="correo1" id="correo1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="<%=denun.getAreaTrabajo() %>">
                                                </div>
                                            </div>
                                        </div>
                                        

                                   
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            
                        </div>

                  
                    <!--fin de cuerpo pestaña 1--->

                    <!---cuerpo de pestaña 2 --->
                    
                    <!--fin de cuerpo pestaña 2--->
              
            </div>
            <!-- fin de cuerpo de pestañas-->
        </div>

    </body>
    <!--LIBRERIAS NECESARIAS PARA EL SCRIPT*-->



    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>

    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>  

    <!--LIBRERIAS NECESARIAS PARA EL SCRIPT*-->
    <script src="js/parsley/parsley.min.js" type="text/javascript"></script>
    <script src="js/select/select2.full.js" type="text/javascript"></script>
    <!-------------------------------------------------------------------->
    <script type="text/javascript">
         var  msj;
        $(document).ready(function () {

            
            /*----------------------------------*/
        });

       
    </script>

</html>



