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
        int idPublicacion = Integer.parseInt(request.getParameter("idPublicacion"));
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
                        Autor existente
                    </a>
                </li>               
                <li role="presentation" class="">
                    <a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">
                        Crear Nuevo Autor
                    </a>
                </li>                
            </ul>
            <!--     finde cabeceras de pestañas  -->
            <!-- cuerpo de pestañas--->
            <div class="container">
                <div id="myTabContent" class="tab-content">  

                    <!---cuerpo de pestaña 1 --->
                    <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                        <form class="form-horizontal form-label-left " id="crearform1" enctype="multipart/form-data">
                            <div class="col-sm-6">

                                <div class="input-group">
                                    <input type="text" class="form-control" name="dnix" id="dnix">
                                    <span class="input-group-btn">
                                        <button type="button" id="btncargar" name="cargar" class="btn btn-primary">Cargar!</button>
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
                                                    <input type="hidden" name="idAutor1"id="idAutor1" value="" />
                                                    <input type="hidden" name="idPublicacion1"id="" value="<%=idPublicacion%>" />
                                                    <input name="nombres1" id="nombres1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">apellido</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="apellidos1" id="apellidos1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">DNI</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="dni1" id="dni1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>         
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">telefono</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="telefono1" id="telefono1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                                </div>

                                            </div>

                                        </div>

                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">direccion</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="direccion1" id="direccion1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">correo</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="correo1" id="correo1"class="form-control has-feedback-left" readonly="readonly" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Tipo de Autor</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <select name="tipoautor"id="" class="form-control">
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
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="button" class="btn btn-primary" id="btnguardar1" >Guardar</button>
                        </div>

                    </div>  
                    <!--fin de cuerpo pestaña 1--->

                    <!---cuerpo de pestaña 2 --->
                    <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="home-tab">
                        <form class="form-horizontal form-label-left " id="crearform2" enctype="multipart/form-data">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="x_panel">

                                    <div class="x_content">
                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">CODIGO</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control has-feedback-left" readonly="readonly" value="AUTOGENARADO">
                                                <input type="hidden" name="idPublicacion2"id="idAutor1" value="<%=idPublicacion%>" />
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
                                                    <input name="profesion2" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">GRADO </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="grado2" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">ESPECIALIDAD</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="especialidad2" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Tipo de Autor</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <select name="tipoautor2"id="" class="form-control">
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
                                                    <input name="nombres2" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">apellido</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="apellidos2" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">DNI</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="dni2" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>         
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">telefono</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="telefono2" type="text" class="form-control" value="">
                                                </div>

                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexo</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <div id="gender" class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-default  active" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="sexo2" value="M" checked=""> &nbsp; Masculino &nbsp;
                                                    </label>


                                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="sexo2" value="F" checked=""> Femenino
                                                    </label>
                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">direccion</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="direccion2" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">      
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">correo</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <input name="correo2" type="text" class="form-control" value="">
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>



                        </form>  
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="button" class="btn btn-primary" id="btnguardar2" >Guardar</button>
                        </div>
                    </div>
                    <!--fin de cuerpo pestaña 2--->
                </div>
            </div>
            <!-- fin de cuerpo de pestañas-->
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
         var  msj;
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
        $('#btncargar').click(function () {

            var dnix = $("#dnix").val();

            $.getJSON('AutorController?accion=BuscarxDni&dni=' + dnix, function (json) {
                var codigo = [];
                var nombre = [];
                var apellidos = [];
                var dni = [];
                var telefono = [];
                var direccion = [];
                var correo = [];

                $.each(json.autor, function (item, obj) {
                    codigo.push(obj.codigo);
                    $('#idAutor1').val(codigo);

                    nombre.push(obj.nombres);
                    $('#nombres1').val(nombre);

                    apellidos.push(obj.apellido);
                    $('#apellidos1').val(apellidos);

                    dni.push(obj.dni);
                    $('#dni1').val(dni);

                    nombre.push(obj.nombres);
                    $('#nombres1').val(nombre);

                    telefono.push(obj.telefono);
                    $('#telefono1').val(telefono);

                    direccion.push(obj.direccion);
                    $('#direccion1').val(direccion);

                    correo.push(obj.correo);
                    $('#correo1').val(correo);
                });

            });

        });
        $('#btnguardar1').click(function () {
            var formdata = new FormData($("#crearform1")[0]);
            $.ajax({
                url: "AutorPublicacionController?accion=crearveryleer1",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .done(function (msj) {

                        if (msj == 0) {
                            alert('El tipo de Autor o el Autor mismo ya Existen');
                    
                            alerta("Autor no creado", false);
                        }
                        else
                        {
                            actualizar2();
                            ocultarmodal();
                            alerta("Autor creado", true);
                        }
                    })

        });
        $('#btnguardar2').click(function () {
            var formdata = new FormData($("#crearform2")[0]);
            $.ajax({
                url: "AutorPublicacionController?accion=crearveryleer2",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .done(function (msj) {

                        if (msj == 0) {
                            alert('El tipo de Autor o el Autor mismo ya Existen');
                            ocultarmodal();
                            alerta("Autor no creado", false);
                        }
                        else
                        {
                            actualizar2();
                            ocultarmodal();
                            alerta("Autor creado", true);
                        }
                    })

        });

    </script>

</html>



