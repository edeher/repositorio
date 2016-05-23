<%-- 
    Document   : nuevaPublicacion
    Created on : 16/05/2016, 09:51:20 AM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.dao.AreaInvestigacionDAOFactory"%>
<%@page import="com.repositoriounia.dao.AreaInvestigacionDAO"%>
<%@page import="com.repositoriounia.modelo.AreaInvestigacion"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAO"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAOFactory"%>
<%@page import="com.repositoriounia.modelo.AutorPublicacion"%>
<%@page import="com.repositoriounia.dao.FacultadDAO"%>
<%@page import="com.repositoriounia.modelo.Facultad"%>
<%@page import="com.repositoriounia.dao.FacultadDAOFactory"%>
<%@page import="com.repositoriounia.modelo.Publicacion"%>
<%@page import="com.repositoriounia.dao.PublicacionDAO"%>
<%@page import="com.repositoriounia.dao.PublicacionDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	

    </head>
    <%
        PublicacionDAOFactory fabricate = new PublicacionDAOFactory();
        PublicacionDAO daote = fabricate.metodoDAO();
        

        AutorPublicacionDAOFactory fabricate2 = new AutorPublicacionDAOFactory();
        AutorPublicacionDAO daote2 = fabricate2.metodoDAO();

        

         AreaInvestigacionDAOFactory fabricate1= new   AreaInvestigacionDAOFactory();
          AreaInvestigacionDAO daote1= fabricate1.metodoDAO();
          AreaInvestigacion[] area=daote1.leertodo();
    %>
    <body>
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Nueva Area de Investigación  </h4>

        </div>
        <div class="modal-body">     

            <form class="form-horizontal form-label-left " id="crearform" enctype="multipart/form-data">

              
                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">CODIGO</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control has-feedback-left" readonly="readonly" value="AUTOGENARADO">

                        <span class="fa fa-cc form-control-feedback left" aria-hidden="true"></span>
                    </div>
                </div>         

                 
                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">DESCRIPCION</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input name="descripcion" type="text" class="form-control" value="">
                    </div>
                </div>

               
            </form>                          
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" id="btnguardar" >Guardar</button>
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
        $(document).ready(function () {
            
     
        });

        $('#btnguardar').click(function () {
            var formdata = new FormData($("#crearform")[0]);
            $.ajax({
                url: "FacultadController?accion=crearFacultad",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .always(function () {
                        actualizar();
                        ocultarmodal();
                        alerta("Facultad creada", true);
                    });
        });
    </script>

</html>



