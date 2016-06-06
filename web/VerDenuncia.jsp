<%-- 
    Document   : VerPublicacion
    Created on : 23/05/2016, 09:05:18 AM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.DescripcionArchivo"%>
<%@page import="com.repositoriounia.modelo.ArchivoPublicacion"%>
<%@page import="com.repositoriounia.dao.ArchivoPublicacionDAO"%>
<%@page import="com.repositoriounia.dao.ArchivoPublicacionDAOFactory"%>
<%@page import="com.repositoriounia.modelo.Publicacion"%>
<%@page import="com.repositoriounia.modelo.AutorPublicacion"%>
<%@page import="com.repositoriounia.dao.PublicacionDAO"%>
<%@page import="com.repositoriounia.dao.PublicacionDAO"%>
<%@page import="com.repositoriounia.dao.PublicacionDAOFactory"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAO"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>PUBLICACION </title>

        <!-- Bootstrap core CSS -->

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">

        <!-- Custom styling plus plugins -->
        <link href="css/custom.css" rel="stylesheet">
        <link href="css/icheck/flat/green.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="css/progressbar/bootstrap-progressbar-3.3.0.css">

        <link href="css/fileinput.css" rel="stylesheet" type="text/css"/>   



        <!--[if lt IE 9]>
              <script src="../assets/js/ie8-responsive-file-warning.js"></script>
              <![endif]-->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
              <![endif]-->

    </head>
    <%
        ArchivoPublicacionDAOFactory fabricate = new ArchivoPublicacionDAOFactory();
        ArchivoPublicacionDAO daote = fabricate.metodoDAO();

        int idArchivoPublicacion = Integer.parseInt(request.getParameter("idArchivoPublicacion"));
        ArchivoPublicacion archipu = daote.leerxid(idArchivoPublicacion);

    %>

    <body class="nav-md">

        <div class="container body">


            <div class="main_container">

                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">

                        <div class="navbar nav_title" style="border: 0;">
                            <a href="" class="site_title"> <img src="images/LOGO UNIA.png" alt="" height="50px" width="40px"/> <span>REPOSITORIO VIP</span></a>
                        </div>
                        <div class="clearfix"></div>


                        <!-- menu prile quick info -->

                        <!-- /menu prile quick info -->

                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                            <div class="menu_section">
                                <h3>Administrador</h3>
                                <ul class="nav side-menu">

                                    <li><a href="Publicaciones.jsp"><i class="fa fa-file-powerpoint-o"></i> Publicaciones </a></li>

                                    <li><a><i class="fa fa-edit"></i> Tablas<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">
                                            <li><a href="AreasInvestigacion.jsp"><i class="fa fa-table"></i> Areas de Investigacion </a></li>
                                            <li><a href="LineaInvestigacion.jsp"><i class="fa fa-table"></i> Lineas de Investigacion </a></li>
                                            <li><a href="Denuncia.jsp"><i class="fa fa-table"></i> Denuncias </a></li>
                                            <li><a href="TemasSugeridos.jsp"><i class="fa fa-table"></i>Temas Sugeridos </a></li>
                                            <li><a href="ArchivosSolicitados.jsp"><i class="fa fa-table"></i> Archivos Solicitados </a></li>
                                            <li><a href="Facultades.jsp"><i class="fa fa-table"></i>Facultades </a></li>
                                            <li><a href="Escuelas.jsp"><i class="fa fa-table"></i>Escuelas </a></li>
                                        </ul>
                                    </li>


                                    <li><a><i class="fa fa-child"></i> Personas<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">
                                            <li><a href="Investigadores.jsp"><i class="fa fa-group"></i> Investigadores </a></li>
                                            <li><a href="Solicitantes.jsp"><i class="fa fa-group"></i> Solicitantes </a></li>
                                            <li><a href="Denunciantes.jsp"><i class="fa fa-group"></i> Denunciantes </a></li>
                                            <li><a href="Autores.jsp"><i class="fa fa-user"></i> Autores </a></li>
                                        </ul>
                                    </li>



                                    <li><a href="Visitas.jsp"><i class="fa fa-suitcase"></i> Visitas </a></li>
                                    <li><a href="Estadistica.jsp"><i class="fa fa-bar-chart-o"></i> Estadisticas </a></li>

                                </ul>
                            </div>


                        </div>
                        <!-- /sidebar menu -->

                        <!-- /menu footer buttons -->

                        <!-- /menu footer buttons -->
                    </div>
                </div>

                <!-- top navigation -->

                <!-- /top navigation -->

                <!-- page content -->
                <div class="right_col" role="main">

                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>DATOS DE DENUNCIA</h3>
                            </div>


                        </div>
                        &nbsp;          
                        <div class="clearfix">
                            <%=archipu.getDescripcion().getNom()%>
                        </div>
                        &nbsp;
                        <div class="">



                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="x_panel">

                                    <div class="x_content">

                                        <!-- start accordion -->
                                        <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
                                            <div class="panel">
                                                <a class="panel-heading" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    <h4 class="panel-title">DENUNCIANTE</h4>
                                                </a>
                                                <form class="form-horizontal form-label-left " id="crearform" enctype="multipart/form-data">


                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">CODIGO</label>
                                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                                            <input type="text" class="form-control has-feedback-left" readonly="readonly" value="AUTOGENARADO">

                                                            <span class="fa fa-cc form-control-feedback left" aria-hidden="true"></span>
                                                        </div>
                                                    </div>         

                                                    <div class="form-group">

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
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexo</label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <div id="gender" class="btn-group" data-toggle="buttons">
                                                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                                    <input type="radio" name="sexo" value="M"> &nbsp; Masculino &nbsp;
                                                                </label>
                                                                <label class="btn btn-primary active" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
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
<div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" id="btnguardar" >Guardar</button>
        </div>

                                                </form>  
                                            </div>

                                            <!-- -->

                                            <!-- -->   


                                        </div>
                                        <!-- end of accordion -->


                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="x_panel">

                                    <div class="x_content">

                                        <!-- start accordion -->
                                        <div class="accordion" id="accordion1" role="tablist" aria-multiselectable="true">
                                            <div class="panel">
                                                <a class="panel-heading" role="tab" id="headingOne1" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne">
                                                    <h4 class="panel-title">ARCHIVOS</h4>
                                                </a>
                                                <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                                    <form enctype="multipart/form-data" id="cargaform">
                                                        
                                                        <div class="form-group">      

                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">ARCHIVO</label>
                                                            <input type="hidden" name="urllocal" value="xxx" />
                                                            <input type="hidden" name="urlweb" value="xxx" />
                                                            <input id="file-1" accept=".pdf" name="archivo" type="file" class="file"  data-preview-file-type="any" value="" data-show-preview="false">


                                                        </div>  
                                                        <!-------------------------botones de carga         ------------------------>
                                                        <div class="form-group">
                                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                                <button class="btn btn-primary" id="btnCargar" >Cargar</button>
                                                                <button class="btn btn-default" type="reset">Cancelar</button>
                                                            </div>
                                                        </div>

                                                    </form>
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" id="tableArchivos">

                                                        </table>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <!-- end of accordion -->


                                    </div>
                                </div>
                            </div>

                        </div>



                    </div>


                </div>
                <!-- /page content -->
                <div id="miModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">

                        </div>
                    </div>
                </div>
                <!--moda para archivos-->  
                <div id="miModal1" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header" height="">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">Archivo</h4>
                            </div>
                            <div class="modal-body">
                                <div class="iframe-container">
                                    <iframe id="iframepdf" src="" width="100%" height="550" frameborder="0">
                                    </iframe>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- fin de modal para archivos-->
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">

            </div>

        </div>



        <script src="js/jquery.min.js"></script>

        <script src="js/bootstrap.min.js"></script>

        <!-- bootstrap progress js -->
        <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- icheck -->
        <script src="js/icheck/icheck.min.js"></script>

        <script src="js/custom.js"></script>
        <!-- pace -->
        <script src="js/pace/pace.min.js"></script>
        <!-- PNotify -->
        <script type="text/javascript" src="js/notify/pnotify.core.js"></script>
        <script type="text/javascript" src="js/notify/pnotify.buttons.js"></script>
        <script type="text/javascript" src="js/notify/pnotify.nonblock.js"></script>
        <!-- Datatables-->
        <script src="js/datatables/jquery.dataTables.min.js"></script>
        <script src="js/datatables/dataTables.bootstrap.js"></script>
        <script src="js/datatables/dataTables.buttons.min.js"></script>
        <script src="js/datatables/buttons.bootstrap.min.js"></script>
        <script src="js/datatables/jszip.min.js"></script>
        <script src="js/datatables/pdfmake.min.js"></script>
        <script src="js/datatables/vfs_fonts.js"></script>
        <script src="js/datatables/buttons.html5.min.js"></script>
        <script src="js/datatables/buttons.print.min.js"></script>
        <script src="js/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="js/datatables/dataTables.keyTable.min.js"></script>
        <script src="js/datatables/dataTables.responsive.min.js"></script>
        <script src="js/datatables/responsive.bootstrap.min.js"></script>
        <script src="js/datatables/dataTables.scroller.min.js"></script>
        <!-------------------->
        <script src="js/fileinput.min.js" type="text/javascript"></script>
        <!-------------------->
        <script type="text/javascript" src="js/notify/pnotify.core.js"></script>
        <script type="text/javascript" src="js/notify/pnotify.buttons.js"></script>
        <script type="text/javascript" src="js/notify/pnotify.nonblock.js"></script>

        <script>

            var table1, band, msj, table2;
            $(document).ready(function () {
                /*-------------------------TABLA DE ARCHIVOS--------------------------*/
                table1 = $('#tableArchivos').DataTable({
                    "paging": false,
                    "filter": false,
                    "bInfo": false,
                    "language": {
                        "url": "css/datatables/Spanish.json"
                    },
                    "columns": [{"title": "Item"},
                        {"title": "Tipo de Documento"},
                        {"title": "<a id='btnNuevo' href='#' ><i class='fa fa-plus'></i></a>"}],
                    "columnDefs": [
                        {"targets": [2],
                            "orderable": false,
                            "className": 'text-center'},
                        // {"targets":0,"visible":false},
                        {"targets": -1,
                            "data": null,
                            "defaultContent": '<button name="btnVerArchivo"><a><i class="fa fa-search"></i></a></button>&nbsp&nbsp<button name="btnVerArchivo1"><a><i class="fa fa-search-plus"></i></a></button>&nbsp&nbsp <button name="btnEliminar"><a><i class="fa fa-trash"></i></a></button>&nbsp&nbsp<button name="btnSolicitar"><a><i class="fa fa-download"></i></a></button>&nbsp&nbsp<button name="btnDenunciar"><a><i class="fa fa-ban"></i></a></button>'}
                    ],
                    "ajax": "DenunciaController?accion=ObtenerArchivos&codigo=" +<%=9%>,
                    "initComplete": function () {

                    }
                });

                /*click en los botones del cuerpo de la tabla de archivos*/
                $('#tableArchivos tbody').on('click', 'button', function () {
                    var data = table1.row($(this).parents('tr')).data();
                    //alert("cargar pdf codigo "+ data[0]); 
                    var nombre = $(this).attr('name');

                    if (nombre == 'btnEliminar') {
                        if (confirm("seguro que desea eliminar el Archivo") == true)
                        {
                            $.ajax({
                                url: "ArchivoPublicacionController?accion=eliminarArchivo&idArchivo=" + data[0],
                            })
                                    .always(function ()
                                    {
                                        actualizar2();

                                    });
                        }
                    }
                    if (nombre == 'btnVerArchivo') {
                        $('#iframepdf').attr('src', 'ArchivoPublicacionController?accion=verArchivo&idArchivo=' + data[0]);
                        $('.modal-lg').css('width', '1420px');

                        $('#miModal1').modal('show');
                        $('#iframepdf').contentWindow.location.reload(true);
                    }
                    if (nombre == 'btnVerArchivo1') {
                        $('#iframepdf').attr('src', 'pdf.jsp?codigo=' + data[0]);
                        $('.modal-lg').css('width', '1420px');
                        $('#miModal1').modal('show');
                        $('#iframepdf').contentWindow.location.reload(true);
                    }
                    if (nombre == 'btnDenunciar') {

                        //window.location.href='VerPublicacion.jsp?idPublicacion='+data[0];
                        window.location.href = 'VerPublicacion.jsp?idPublicacion=' + data[0];
                    }
                });
                /*-------------------------TABLA DE AUTORES--------------------------*/

                /*click en los botones del cuerpo de la tabla de AUTORES*/

                /*enumerar las tablas*/
                /*tabla 1*/
                table1.on('order.dt search.dt', function () {
                    table1.column(0, {search: 'applied', order: 'applied'}).nodes().each(function (cell, i) {
                        cell.innerHTML = i + 1;
                    });
                    /*tabla 2*/
                }).draw();
                table2.on('order.dt search.dt', function () {
                    table2.column(0, {search: 'applied', order: 'applied'}).nodes().each(function (cell, i) {
                        cell.innerHTML = i + 1;
                    });
                }).draw();

                /*fin de enumerar las tablas*/
            });
            /*--------------------------------fin del ready-----------------------------*/


            function mostrarModal(url) {
                $('#miModal .modal-content').load(url, function () {
                    $('#miModal').modal('show');
                });
            }

            /*----------------atributos del file imput------------------*/
            $('#file-1').fileinput({
                browseLabel: 'Buscar',
                showUpload: false,
                showRemove: false
            });

            /*----------------carga de archivo------------------*/
            $('#btnCargar').click(function () {
                var formdata = new FormData($("#cargaform")[0]);
                $.ajax({
                    url: "ArchivoPublicacionController?accion=cargarArchivo",
                    type: "post",
                    contentType: false,
                    data: formdata,
                    processData: false,
                    cache: false})

                        .always(function ()
                        {
                            actualizar2();

                        });
            });
            /*----------------actulizacion de tablas-----------------*/
            function actualizar2() {
                table1.ajax.reload(function () {
                    table1.columns.adjust().draw();
                },
                        false);
                table2.ajax.reload(function () {
                    table2.columns.adjust().draw();
                },
                        false);

            }
        </script>
        <script type="text/javascript">
            var permanotice, tooltip, _alert;
            $(function () {
                new PNotify({
                    title: "APROVECHA",
                    type: "info",
                    text: "Solicita El Archivo que mas te interese ",
                    nonblock: {
                        nonblock: true
                    },
                    before_close: function (PNotify) {
                        // You can access the notice's options with this. It is read only.
                        //PNotify.options.text;

                        // You can change the notice's options after the timer like this:
                        PNotify.update({
                            title: PNotify.options.title + " - Enjoy your Stay",
                            before_close: null
                        });
                        PNotify.queueRemove();
                        return false;
                    }
                });

            });
        </script>

    </body>

</html>
