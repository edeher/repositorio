<%-- 
    Document   : crearSolicitud
    Created on : 21/04/2016, 11:46:47 PM
    Author     : Mi Laptop
--%>



<%@page import="com.repositoriounia.dao.AreaInvestigacionDAOFactory"%>
<%@page import="com.repositoriounia.dao.AreaInvestigacionDAO"%>
<%@page import="com.repositoriounia.modelo.AreaInvestigacion"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	

    </head>
    <%
        AreaInvestigacionDAOFactory fabricate1 = new AreaInvestigacionDAOFactory();
        AreaInvestigacionDAO daote1 = fabricate1.metodoDAO();
        AreaInvestigacion[] area = daote1.leertodo();
    %>
    <body>
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Nueva Linea de Investigacion </h4>

        </div>
        <div class="modal-body">     

            <form class="form-horizontal form-label-left input_mask" id="modificaform" enctype="multipart/form-data">
                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">CODIGO</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control has-feedback-left" readonly="readonly" value="AUTOGENARADO">

                        <span class="fa fa-cc form-control-feedback left" aria-hidden="true"></span>
                    </div>
                </div>  
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">AREA INV.</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <select name="area" id="SelectArea" class="form-control">
                            <option value="--">--</option>
                            <%for (AreaInvestigacion area1 : area) {

                            %>
                            <option value="<%=area1.getIdAreaInvestigacion()%>"

                                    >
                                <%=area1.getDescripcion()%></option>
                                <%}%>
                        </select>
                    </div>

                </div>  
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Descripcion</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input name="descripcion" type="text" class="form-control" value="">
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
                url: "LineaInvestigacionController?accion=NuevaLinea",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .always(function () {
                        actualizar();
                        ocultarmodal();
                        alerta("Linea de Investigacion creada", true);
                    });
        });



    </script>

</html>



