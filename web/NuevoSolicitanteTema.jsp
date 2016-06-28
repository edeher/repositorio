<%-- 
    Document   : nuevaPublicacion
    Created on : 16/05/2016, 09:51:20 AM
    Author     : Mi Laptop
--%>


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
        
        FacultadDAOFactory fabricate1 = new FacultadDAOFactory();
        FacultadDAO daote1 = fabricate1.metodoDAO();
        Facultad[] facul = daote1.leertodo();
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
                                    <input type="text" class="form-control has-feedback-left" readonly="readonly" value="AUTOGENARADO">
                                        
                                    <span class="fa fa-cc form-control-feedback left" aria-hidden="true"></span>
                                </div>
                            </div>   
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">NOMBRES</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="nombres" type="text" class="form-control" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">apellido</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="apellidos" type="text" class="form-control" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">DNI</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="dni" type="text" class="form-control" value="">
                                    </div>
                                </div>
                            </div>         
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">telefono</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="telefono" type="text" class="form-control" value="">
                                    </div>

                                </div>

                            </div>
                            <div class="form-group">
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexo</label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <div id="gender" class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-default  active" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" name="sexo" value="M" checked=""> &nbsp; Masculino &nbsp;
                                        </label>


                                        <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" name="sexo" value="F" checked=""> Femenino
                                        </label>
                                    </div>
                                </div>
                                </div>
                            </div>
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">direccion</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="direccion" type="text" class="form-control" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">      
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">correo</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="correo" type="text" class="form-control" value="">
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
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Tipo de Entidad</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <select name="tipoentidad"id="" class="form-control">
                                            <option value="--">--</option>
                                            <%for (TipoEntidad es : TipoEntidad.values()) {

                                            %>
                                            <option value="<%=es.name()%>"  >
                                                <%=es.getNom()%></option>
                                                <%}%>
                                        </select>
                                    </div>
                                </div>
                            </div>  
                            <div class="form-group">
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Entidad</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="entidad" type="text" class="form-control" value="">
                                    </div>
                                </div>
                            </div>    
                            <div class="form-group">   
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Area de Trabajo</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="areatrabajo" type="text" class="form-control" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Area Temática</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input name="areatematica" type="text" class="form-control" value="">
                                    </div>
                                </div>
                            </div>  
                            <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Tema Sugerido</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                         <label for="message">Mensaje (20 palabras  maximo) :</label>
                        <textarea id="" required="required" name="tema"
                                  class="form-control" 
                                  data-parsley-trigger="keyup" 
                                  data-parsley-minlength="20" 
                                  data-parsley-maxlength="100" 
                                  data-parsley-minlength-message="Come on! You need to enter at least a 20 caracters long comment.."
                                  data-parsley-validation-threshold="10" >
                                      
                        </textarea>
                    </div>
                </div>
                            



                        </div>

                    </div>

                </div>


            </form>  


        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" id="btnSolicitar" >Solicitar</button>
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

        $('#btnSolicitar').click(function () {
            var formdata = new FormData($("#crearform")[0]);
            $.ajax({
                url: "TemasSugeridosController?accion=CrearSolicitud",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .done(function (msj) {

                        if (msj == 0) {
                            alert('nose puede crear');
                            ocultarmodal();
                            alerta("solicitud no enviada", false);
                        }
                        else
                        {
                            
                            ocultarmodal();
                            alerta("Socitud Recibida", true);
                        }
                    })
        });
    </script>

</html>



