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
        <link href="css/animateModalcss/normalize.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/animateModalcss/animate.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/fileinput.css" rel="stylesheet" type="text/css"/>   
        <style>
            #btn-close-modal {
                width:100%;
                text-align: center;
                cursor:pointer;
                color:#fff;
            }

        </style>


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
        AutorPublicacionDAOFactory fabricate = new AutorPublicacionDAOFactory();
        AutorPublicacionDAO daote = fabricate.metodoDAO();

        PublicacionDAOFactory fabricate1 = new PublicacionDAOFactory();
        PublicacionDAO daote1 = fabricate1.metodoDAO();

        ArchivoPublicacionDAOFactory fabricate2 = new ArchivoPublicacionDAOFactory();
        ArchivoPublicacionDAO daote2 = fabricate2.metodoDAO();

        int idPublicacion = 2;
        Publicacion publi = daote1.leerxid(idPublicacion);
        AutorPublicacion[] objAuP = daote.leertodoporpublicacion(idPublicacion);

    %>

    <body class="nav-md">

        <div class="container body">


            <div class="main_container">

                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">

                        <div class="navbar nav_title" style="border: 0;">
                            <a href="" class="site_title"><i class="fa fa-laptop"></i> <span>REPOSITORIO VIP</span></a>
                        </div>
                        <div class="clearfix"></div>


                        <!-- menu prile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>
                                <h2>John Doe</h2>
                            </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                            <div class="menu_section">
                                <h3>General</h3>
                                <ul class="nav side-menu">

                                    <li><a href="Publicaciones.jsp"><i class="fa fa-table"></i> Publicaciones </a></li>
                                    <li><a href="AreasInvestigacion.jsp"><i class="fa fa-table"></i> Areas de Investigacion </a></li>
                                    <li><a href="LineaInvestigacion.jsp"><i class="fa fa-table"></i> Lineas de Investigacion </a></li>

                                    <li><a href="Denuncia.jsp"><i class="fa fa-table"></i> Denuncias </a></li>
                                    <li><a href="TemasSugeridos.jsp"><i class="fa fa-table"></i>Temas Sugeridos </a></li>
                                    <li><a href="ArchivosSolicitados.jsp"><i class="fa fa-table"></i> Archivos Solicitados </a></li>
                                    <li><a href="Facultades.jsp"><i class="fa fa-table"></i>Facultades </a></li>
                                    <li><a href="Escuelas.jsp"><i class="fa fa-table"></i>Escuelas </a></li>
                                    <li><a href="Investigadores.jsp"><i class="fa fa-group"></i> Investigadores </a></li>
                                    <li><a href="Solicitantes.jsp"><i class="fa fa-group"></i> Solicitantes </a></li>
                                    <li><a href="Denunciantes.jsp"><i class="fa fa-group"></i> Denunciantes </a></li>
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
                                <h3>DATOS DE PUBLICACION</h3>
                            </div>


                        </div>
                        <div class="clearfix"></div>

                        <div class="">



                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="x_panel">

                                    <div class="x_content">

                                        <!-- start accordion -->
                                        <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
                                            <div class="panel">
                                                <a class="panel-heading" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    <h4 class="panel-title">AUTORES</h4>
                                                </a>
                                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" id="tableAutores">

                                                        </table>
                                                    </div>
                                                </div>
                                            </div>


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

                                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">TIPO</label>
                                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                                <select name="descripcion"id="" class="form-control">
                                                                    <option value="--">--</option>
                                                                    <%for (DescripcionArchivo es : DescripcionArchivo.values()) {

                                                                    %>
                                                                    <option value="<%=es.name()%>"  >
                                                                        <%=es.getNom()%></option>
                                                                        <%}%>
                                                                </select>
                                                            </div>
                                                            <input type="hidden" name="idpublicacion" id="idpublicacion" value="<%=idPublicacion%>" />
                                                            &nbsp;

                                                        </div>
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
            </div>





        </div>



        <!--
        <div id="animatedModal">
            
            <div  id="btn-close-modal" class="close-modal-02"> 
                X
            </div>

            <div class="modal-content">
                <iframe id="iframepdf" src="ArchivoPublicacionController?accion=verArchivo&idArchivo=<%=idPublicacion%>" width="99.6%" height="460" frameborder="0">
                </iframe>
            </div>
        </div>     -->    

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

        <script src="js/animateModaljs/animatedModal.min.js" type="text/javascript"></script>

        <script>

            var table1, band, msj, table2;
            $(document).ready(function () {

                table1 = $('#tableArchivos').DataTable({
                    "paging": false,
                    "filter": false,
                    "bInfo": false,
                    "language": {
                        "url": "css/datatables/Spanish.json"
                    },
                    "columns": [{"title": "Cod"},
                        {"title": "Tipo de Documento"},
                        {"title": "<a id='btnNuevo' href='#' ><i class='fa fa-plus'></i></a>"}],
                    "columnDefs": [
                        {"targets": [2],
                            "orderable": false,
                            "className": 'text-center'},
                        {"targets": -1,
                            "data": null,
                            "defaultContent": '<button><a id="demo01" href="#animatedModal"><i class="fa fa-search"></i></a></button>&nbsp&nbsp<button name="btnVerArchivo1"><a><i class="fa fa-search-plus"></i></a></button>&nbsp&nbsp <button name="btnEliminar"><a><i class="fa fa-trash"></i></a></button>'}
                    ],
                    "ajax": "ArchivoPublicacionController?accion=ObtenerArchivos&codigo=" +<%=idPublicacion%>,
                    "initComplete": function () {

                    }
                });

                table2 = $('#tableAutores').DataTable({
                    "paging": false,
                    "filter": false,
                    "bInfo": false,
                    "language": {
                        "url": "css/datatables/Spanish.json"
                    },
                    "columns": [{"title": "Cod"},
                        
                        {"title": "Nombre"},
                        {"title": "especialidad"},
                        {"title": "Cargo"},
                        {"title": "<a href='#'id='btnNuevo'><i class='fa fa-plus'></i></a>"}],
                    "columnDefs": [
                        {"targets": [4],
                            "orderable": false,
                            "className": 'text-center'},
                        {"targets": -1,
                            "data": null,
                            "defaultContent": '<button name="btnRechazar"><a><i class="fa fa-search"></i></a></button>&nbsp&nbsp <button name="btnEliminar"><a><i class="fa fa-trash"></i></a></button>'}
                    ],
                    "ajax": "AutorPublicacionController?accion=ObtenerTodosPorPublicacion&codigo=" +<%=idPublicacion%>,
                    "initComplete": function () {

                    }
                });



                $('#tableArchivos tbody').on('click', 'button', function () {
                    var data = table1.row($(this).parents('tr')).data();
                    //alert("cargar pdf codigo "+ data[0]); 
                    var nombre = $(this).attr('name');
                    $("#demo01").animatedModal({color: '#404040'});

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
                });

                $('#tableAutores tbody').on('click', 'button', function () {
                    var data = table2.row($(this).parents('tr')).data();
                    //alert("cargar pdf codigo "+ data[0]); 
                    var nombre = $(this).attr('name');
                    $("#demo01").animatedModal({color: '#404040'});

                    if (nombre == 'btnEliminar') {
                        if (confirm("seguro que desea eliminar el Autor") == true)
                        {
                            $.ajax({
                                url: "AutorPublicacionController?accion=eliminarAutor&codigo="+data[0],
                            })
                                    .always(function ()
                                    {
                                        actualizar2();

                                    });
                        }
                    }
                });

            });
            /*--------------------------------fin del ready-----------------------------*/


            function mostrarModal(url) {
                $('#modalGrande .modal-content').load(url, function () {
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


    </body>

</html>
