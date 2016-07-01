<%-- 
    Document   : crearSolicitud
    Created on : 21/04/2016, 11:46:47 PM
    Author     : Mi Laptop
--%>


<%@page import="com.repositoriounia.modelo.AreaInvestigacion"%>
<%@page import="com.repositoriounia.dao.AreaInvestigacionDAO"%>
<%@page import="com.repositoriounia.dao.AreaInvestigacionDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        AreaInvestigacionDAOFactory fabricate=new AreaInvestigacionDAOFactory();
        AreaInvestigacionDAO daote=fabricate.metodoDAO();
        int idArea=Integer.parseInt(request.getParameter("codigo"));
        AreaInvestigacion area=daote.leerxid(idArea);
        
    %>
    <body>
        
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Editar Area N° <%=area.getIdAreaInvestigacion() %> </h4>

        </div>
        <div class="modal-body">     

             
                    <form class="form-horizontal form-label-left " id="modificaform" enctype="multipart/form-data">

              
                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">CODIGO</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                         <input type="hidden" name="idArea" value="<%=area.getIdAreaInvestigacion() %>" />
                        <input type="text" class="form-control has-feedback-left" readonly="readonly" value="<%=area.getIdAreaInvestigacion() %>">

                        <span class="fa fa-cc form-control-feedback left" aria-hidden="true"></span>
                    </div>
                </div>         

                 
                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">DESCRIPCION</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input name="descripcion" type="text" class="form-control" value="<%=area.getDescripcion() %>">
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
    <!-------------------------------------------------------------------->
    <script type="text/javascript">
        $(document).ready( function (){   
            
        });

        $('#btnguardar').click(function(){        
            var formdata=new FormData($("#modificaform")[0]);
            $.ajax({
                url:"AreaInvestigacionController?accion=modificarArea",
                type:"post",
                contentType:false,
                data:formdata,
                processData:false,
                cache:false})
            .always(function(){
                actualizar();
                ocultarmodal();
                alerta("Area de Investigacion modificada",true);
            });  
        });
    </script>
    
</html>

        

