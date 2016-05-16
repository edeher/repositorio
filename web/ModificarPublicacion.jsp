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
        PublicacionDAOFactory fabricate = new PublicacionDAOFactory();
        PublicacionDAO daote = fabricate.metodoDAO();
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        Publicacion publi = daote.leerxid(codigo);

        AutorPublicacionDAOFactory fabricate2 = new AutorPublicacionDAOFactory();
        AutorPublicacionDAO daote2 = fabricate2.metodoDAO();

        AutorPublicacion autopu = daote2.leerxidPubliPrincipal(codigo);

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
            <h4 class="modal-title" id="myModalLabel">Editar Publicacion N° <%=publi.getIdPublicacion()%> </h4>

        </div>
        <div class="modal-body">     

            <form class="form-horizontal form-label-left " id="modificaform" enctype="multipart/form-data">

                <input type="hidden" name="idPublicacion" value="<%=publi.getIdPublicacion()%>" />



                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">ENCARGADO</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control has-feedback-left" readonly="readonly" value="<%=autopu.getAutor().getGrado() + " " + autopu.getAutor().getNombres()%> ">

                        <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                    </div>
                </div>         

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">AREA INV.</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <select name="area"id="SelectArea" class="btn btn-primary dropdown-toggle btn-sm">
                            <option value="--">--</option>
                             <%for (AreaInvestigacion area1: area) {
                                
                        %>
                            <option value="<%=area1.getIdAreaInvestigacion() %>"
                                     <%if(publi.getLineaInvestigacion().getAreaInvestigacion().getIdAreaInvestigacion() ==area1.getIdAreaInvestigacion() )
                                            
                                            out.print("selected");
                                     %>
                                    >
                                <%=area1.getDescripcion() %></option>
                             <%}%>
                        </select>
                    </div>

                </div>  
                <div class="form-group">

                    <label class="control-label col-md-3 col-sm-3 col-xs-12">LINEA INV.</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <select name="linea"  id="SelectLinea" class="btn btn-primary dropdown-toggle btn-sm">

                        </select>
                    </div>
                </div>             
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">TITULO</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input name="titulo" type="text" class="form-control" value="<%=publi.getTitulo()%>">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">PUBLICACION</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input name="fecha" type="text" class="form-control has-feedback-left" id="input_fpublicacion" value="<%=publi.getFechaPublicacion()%> ">
                        <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>     
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
                    url: 'LineaInvestigacionController?accion=BuscarPorArea&codigo='+ codigo,
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
                        alerta("Publicacion modificada", true);
                    });
        });



    </script>

</html>



