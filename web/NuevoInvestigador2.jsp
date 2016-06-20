<%-- 
    Document   : NuevoInvestigador2
    Created on : 18/06/2016, 12:00:09 PM
    Author     : Mi Laptop
--%>


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
            <h4 class="modal-title" id="myModalLabel">Nuevo Investigador </h4>

        </div>
        <div class="modal-body">  
            <!--cabeceras de pestañas-->
            <ul id="myTabs" class="nav nav-tabs bar_tabs" role="tablist">
                <li role="presentation" class="active">
                    <a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">
                        buscar Autor
                    </a>
                </li>               
                <li role="presentation" class="">
                    <a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">
                        Crear Autor
                    </a>
                </li>                
            </ul>
            <!--     finde cabeceras de pestañas  -->
            <!-- cuerpo de pestañas--->
            <div class="container">
                <div id="myTabContent" class="tab-content">  

                    <!---cuerpo de pestaña 1 --->
                    <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                        
                        <div class="col-sm-6">

                            <div class="input-group">
                                <input type="text" class="form-control">
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-primary">Cargar!</button>
                                </span>
                            </div>
                            <div class="right col-xs-5 text-center">
                                <img src="images/LOGO UNIA.png" alt="" class="img-circle img-responsive">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="x_panel">

                                <div class="x_content">

                                    <div class="form-group">      
                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">NOMBRES</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="nombres" class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">      
                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">apellido</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="apellidos" class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">      
                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">DNI</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="dni" class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                    </div>         
                                    <div class="form-group">      
                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">telefono</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="telefono" class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                            </div>

                                        </div>

                                    </div>

                                    <div class="form-group">      
                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">direccion</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="direccion" class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">      
                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">correo</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input name="correo" class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Tipo de Autor</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <select name="descripcion"id="" class="form-control">
                                            <option value="--">--</option>
                                            <%for (TipoAutor es : TipoAutor.values()) {

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

                        

                    </div>  
                    <!--fin de cuerpo pestaña 1--->

                    <!---cuerpo de pestaña 2 --->
                    <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="home-tab">
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
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Facultad</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <select name="facultad" id="SelectFacultad" class="form-control">
                                                        <option value="--">--</option>
                                                        <%for (Facultad area1 : facul) {

                                                        %>
                                                        <option value="<%=area1.getIdFacultad()%>"

                                                                >
                                                            <%=area1.getDescripcion()%></option>
                                                            <%}%>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>  
                                        <div class="form-group">
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Escuela</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <select name="escuela"  id="SelectEscuela" class="form-control">

                                                    </select>
                                                </div>
                                            </div>
                                        </div>    
                                        <div class="form-group">   
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">PROFESION</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="profesion" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">GRADO </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="grado" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">ESPECIALIDAD</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="especialidad" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Tipo de Autor</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <select name="descripcion"id="" class="form-control">
                                                        <option value="--">--</option>
                                                        <%for (TipoAutor es : TipoAutor.values()) {

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


                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="x_panel">

                                    <div class="x_content">

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



                        </form>  
                    </div>
                    <!--fin de cuerpo pestaña 2--->
                </div>
            </div>
            <!-- fin de cuerpo de pestañas-->
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

            $('#SelectFacultad').on('change', function () {
                var codigo = this.value;
                $.ajax({
                    type: 'POST',
                    url: 'EscuelaController?accion=buscarporFacultad&codigo=' + codigo,
                    data: $(this).serialize(),
                    success: function (data) {
                        $('#SelectEscuela').html(data);
                    }
                });
            });

            /*----------------------------------*/




            /*----------------------------------*/
        });

        $('#btnguardar').click(function () {
            var formdata = new FormData($("#crearform")[0]);
            $.ajax({
                url: "AutorController?accion=crearInvestigador",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .always(function () {
                        actualizar();
                        ocultarmodal();
                        alerta("Investigador Creado", true);
                    });
        });
    </script>

</html>



