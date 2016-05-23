<%-- 
    Document   : crearSolicitud
    Created on : 21/04/2016, 11:46:47 PM
    Author     : Mi Laptop
--%>




<%@page import="com.repositoriounia.modelo.Facultad"%>
<%@page import="com.repositoriounia.dao.FacultadDAO"%>
<%@page import="com.repositoriounia.dao.FacultadDAOFactory"%>
<%@page import="com.repositoriounia.modelo.Escuela"%>
<%@page import="com.repositoriounia.dao.EscuelaDAO"%>
<%@page import="com.repositoriounia.dao.EscuelaDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	

    </head>
    <%
       EscuelaDAOFactory fabricate=new EscuelaDAOFactory();
       EscuelaDAO daote=fabricate.metodoDAO();

      int codigo=Integer.parseInt(request.getParameter("codigo"));
        Escuela escuela= daote.leerxid(codigo);

         FacultadDAOFactory fabricate1= new   FacultadDAOFactory();
          FacultadDAO daote1= fabricate1.metodoDAO();
          Facultad[] facul=daote1.leertodo();
    %>
    <body>
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Editar Escuela N° <%=escuela.getIdEscuela() %> </h4>

        </div>
        <div class="modal-body">     

            <form class="form-horizontal form-label-left input_mask" id="modificaform" enctype="multipart/form-data">

                <input type="hidden" name="idEscuela" value="<%=escuela.getIdEscuela() %>" />



               

                 <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Facultad</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <select name="facultad" id="SelectArea" class="form-control">
                            <option value="--">--</option>
                             <%for (Facultad area1: facul) {
                                
                        %>
                            <option value="<%=area1.getIdFacultad() %>"
                                     <%if(escuela.getFacultad().getIdFacultad() ==area1.getIdFacultad() )
                                            
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
                        <input name="descripcion" type="text" class="form-control" value="<%=escuela.getDescripcion() %>">
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
                url: "EscuelaController?accion=modificarEscuela",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .always(function () {
                        actualizar();
                        ocultarmodal();
                        alerta("Escuela modificada", true);
                    });
        });



    </script>

</html>



