<%-- 
    Document   : nuevaPublicacion
    Created on : 16/05/2016, 09:51:20 AM
    Author     : Mi Laptop
--%>


<%@page import="com.repositoriounia.modelo.Respuesta"%>
<%@page import="com.repositoriounia.modelo.ArchivosSolicitados"%>
<%@page import="com.repositoriounia.dao.ArchivosSolicitadosDAO"%>
<%@page import="com.repositoriounia.dao.ArchivosSolicitadosDAOFactory"%>
<%@page import="com.repositoriounia.modelo.TipoEntidad"%>
<%@page import="com.repositoriounia.modelo.TipoAutor"%>
<%@page import="com.repositoriounia.modelo.DescripcionArchivo"%>
<%@page import="com.repositoriounia.dao.FacultadDAO"%>
<%@page import="com.repositoriounia.modelo.Facultad"%>
<%@page import="com.repositoriounia.dao.FacultadDAOFactory"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	

    </head>
    <%
        int idArchivoSolicitado = Integer.parseInt(request.getParameter("idArchivoSolicitado"));
       ArchivosSolicitadosDAOFactory fabricate = new ArchivosSolicitadosDAOFactory();
        ArchivosSolicitadosDAO daote= fabricate.metodoDAO();
        ArchivosSolicitados archiso = daote.leerxid(idArchivoSolicitado);
    %>
    <body>
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Datos de Solicitud </h4>

        </div>
        <div class="modal-body">  

            <form class="form-horizontal form-label-left " id="crearform" enctype="multipart/form-data">

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="x_panel">

                        <div class="x_content">
                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">CODIGO</label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" class="form-control has-feedback-left" readonly="readonly" value="<%=idArchivoSolicitado%>">
                                    <input type="hidden" name="idArchivoSolicitado"id="idAutor1" value="<%=idArchivoSolicitado%>" />       
                                    <span class="fa fa-cc form-control-feedback left" aria-hidden="true"></span>
                                </div>
                            </div>   
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Solicitante</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="nombres" type="text" class="form-control" value="<%=archiso.getSolicitante().getNombres() %>">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Publicacion</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="publicacion" type="text" class="form-control" value="<%=archiso.getArchivoPublicacion().getPublicacion().getTitulo() %>">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Archivo</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="archivo" type="text" class="form-control" value="<%=archiso.getArchivoPublicacion().getDescripcion().getNom() %>">
                                    </div>
                                </div>
                            </div>         
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Fecha de Solicitud</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="telefono" type="text" class="form-control" value="<%=archiso.getFechaSolicitud() %>">
                                    </div>

                                </div>

                            </div>
                            
                            
                            


                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="x_panel">

                        <div class="x_content">


                            <div class="form-group">
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Respuesta</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <select name="respuesta" id="" class="form-control">
                                            <option value="--">--</option>
                                            <%for (Respuesta es : Respuesta.values()) {

                                            %>
                                            <option value="<%=es.name()%>"  >
                                                <%=es.getNom()%></option>
                                                <%}%>
                                        </select>
                                    </div>
                                </div>
                            </div>  
                            
                            


                        </div>

                    </div>

                </div>


            </form>  


        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" id="btnResponder" >Responder</button>
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


            /*----------------------------------*/
        });

        $('#btnResponder').click(function () {
            var formdata = new FormData($("#crearform")[0]);
            $.ajax({
                url: "ArchivosSolicitadosController?accion=respuesta",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .done(function (msj) {

                        if (msj == 0) {
                            alert('nose puede crear');
                            ocultarmodal();
                            alerta("solicitud no Modificada", false);
                        }
                        else
                        {
                            actualizar();
                            ocultarmodal();
                            alerta("Socitud con Respuesta", true);
                        }
                    })
        });
    </script>

</html>



