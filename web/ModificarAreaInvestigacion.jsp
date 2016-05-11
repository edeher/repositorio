<%-- 
    Document   : crearSolicitud
    Created on : 21/04/2016, 11:46:47 PM
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
       
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        
         AreaInvestigacionDAOFactory fabricate1= new   AreaInvestigacionDAOFactory();
          AreaInvestigacionDAO daote1= fabricate1.metodoDAO();
          AreaInvestigacion area=daote1.leerxid(codigo);
    %>
    <body>
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Editar Area de Investigacion N° <%=area.getIdAreaInvestigacion() %> </h4>

        </div>
        <div class="modal-body">     

            <form class="form-horizontal form-label-left input_mask" id="modificaform" enctype="multipart/form-data">

                <input type="hidden" name="idArea" value="<%=area.getIdAreaInvestigacion() %>" />



                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">CODIGO</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control has-feedback-left" readonly="readonly" value="<%=area.getIdAreaInvestigacion() %> ">

                        <span class="fa fa-barcode form-control-feedback left" aria-hidden="true"></span>
                    </div>
                </div>         

               
               
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">TITULO</label>
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
    <script src="js/moment/moment.min.js"></script>
    <script src="js/datepicker/daterangepicker.js"></script>    
    <!-------------------------------------------------------------------->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#input_fpublicacion').daterangepicker({
                format: 'YYYY-MM-DD',
                singleDatePicker: true,
                calender_style: "picker_4"



            },
            function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#SelectArea').on('change', function () {
                var codigo = this.value;
                $.ajax({
                    type: 'POST',
                    url: 'EscuelaController?accion=buscarporFacultad&codigo=' + codigo,
                    data: $(this).serialize(),
                    success: function (data) {
                        $('#SelectLinea').html(data);
                    }
                });
            });
        });

        $('#btnguardar').click(function () {
            var formdata = new FormData($("#modificaform")[0]);
            $.ajax({
                url: "PublicacionController?accion=modificarPublicacion",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .always(function () {
                        actualizar();
                        ocultarmodal();
                        alerta("Solicitud modificada", true);
                    });
        });



    </script>

</html>



