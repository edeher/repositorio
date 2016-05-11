<%-- 
    Document   : crearSolicitud
    Created on : 21/04/2016, 11:46:47 PM
    Author     : Mi Laptop
--%>


<%@page import="com.repositoriounia.dao.LineaInvestigacionDAO"%>
<%@page import="com.repositoriounia.dao.LineaInvestigacionDAOFactory"%>
<%@page import="com.repositoriounia.modelo.LineaInvestigacion"%>
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
       LineaInvestigacionDAOFactory fabricate=new LineaInvestigacionDAOFactory();
       LineaInvestigacionDAO daote=fabricate.metodoDAO();

      int codigo=Integer.parseInt(request.getParameter("codigo"));
        LineaInvestigacion linea= daote.leerxid(codigo);

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
            <h4 class="modal-title" id="myModalLabel">Editar Linea de Investigacion N° <%=linea.getIdLineaInvestigacion() %> </h4>

        </div>
        <div class="modal-body">     

            <form class="form-horizontal form-label-left input_mask" id="modificaform" enctype="multipart/form-data">

                <input type="hidden" name="idLinea" value="<%=linea.getIdLineaInvestigacion() %>" />



               

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">AREA INV.</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <select name="idArea"id="SelectArea" class="btn btn-primary dropdown-toggle btn-sm">
                            <option value="--">--</option>
                             <%for (AreaInvestigacion area1: area) {
                                
                        %>
                            <option value="<%=area1.getIdAreaInvestigacion() %>"
                                     <%if(linea.getAreaInvestigacion().getIdAreaInvestigacion() ==area1.getIdAreaInvestigacion() )
                                            
                                            out.print("selected");
                                     %>
                                    >
                                <%=area1.getDescripcion() %></option>
                             <%}%>
                        </select>
                    </div>

                </div>  
               <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Descripcion</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input name="descripcion" type="text" class="form-control" value="<%=linea.getDescripcion() %>">
                    </div>
                </div>     
               
            </form>                          
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" id="btnguardar" >Guardar Cambios</button>
        </div>
    </body>
    <!--LIBRERIAS NECESARIAS PARA EL SCRIPT*-->
         
    
   
    <script src="js/jquery.min.js" type="text/javascript"></script>
      <script src="js/bootstrap.min.js" type="text/javascript"></script>
      
    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>  
  

    <!-------------------------------------------------------------------->
    <script type="text/javascript">
        $(document).ready(function () {
          
        });

        $('#btnguardar').click(function () {
            var formdata = new FormData($("#modificaform")[0]);
            $.ajax({
                url: "LineaInvestigacionController?accion=modificarLinea",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .always(function () {
                        actualizar();
                        ocultarmodal();
                        alerta("Linea de Investigacion modificada", true);
                    });
        });



    </script>

</html>



