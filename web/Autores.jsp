<%-- 
    Document   : Autores
    Created on : 25/05/2016, 03:03:51 PM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.Autor"%>
<%@page import="com.repositoriounia.dao.AutorDAO"%>
<%@page import="com.repositoriounia.dao.AutorDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Investigadores</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
        <link href="css/icheck/flat/green.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->

    </head>
    <%
        AutorDAOFactory fabricate = new AutorDAOFactory();
        AutorDAO daote = fabricate.metodoDAO();
        Autor[] autor = daote.leertodo();


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
                                <h3>Autores</h3>
                            </div>


                        </div>
                       z

                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">
                                    <div class="x_content">

                                        <div class="row">

                                            <div class="col-md-12 col-sm-12 col-xs-12" style="text-align:center;">
                                                <ul class="pagination pagination-split">
                                                    <li><a href="#">A</a>
                                                    </li>
                                                    <li><a href="#">B</a>
                                                    </li>
                                                    <li><a href="#">C</a>
                                                    </li>
                                                    <li><a href="#">D</a>
                                                    </li>
                                                    <li><a href="#">E</a>
                                                    </li>
                                                    <li>...</li>
                                                    <li><a href="#">W</a>
                                                    </li>
                                                    <li><a href="#">X</a>
                                                    </li>
                                                    <li><a href="#">Y</a>
                                                    </li>
                                                    <li><a href="#">Z</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>

                                            <% for (Autor autor1 : autor) {

                                            %>


                                            <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                                <div class="well profile_view">
                                                    <div class="col-sm-12">
                                                        <h4 class="brief"><i>Investigador UNIA</i></h4>
                                                        <div class="left col-xs-7">
                                                            <h2><%=autor1.getNombres() %> </h2>
                                                            <p> <%=autor1.getApellidos() %></p>
                                                            <p> <%=autor1.getProfesion() %> </p>
                                                            <ul class="list-unstyled">
                                                                <li><i class="fa fa-phone"></i>: <%=autor1.getTelefono() %> </li>
                                                                <li><i class="fa fa-envelope"></i>: <%=autor1.getCorrero() %> </li>
                                                            </ul>
                                                        </div>
                                                        <div class="right col-xs-5 text-center">
                                                            <img src="images/LOGO UNIA.png" alt="" class="img-circle img-responsive">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 bottom text-center">
                                                        <div class="col-xs-12 col-sm-6 emphasis">
                                                            <p class="ratings">
                                                                <a>4.0</a>
                                                                <a href="#"><span class="fa fa-star"></span></a>
                                                                <a href="#"><span class="fa fa-star"></span></a>
                                                                <a href="#"><span class="fa fa-star"></span></a>
                                                                <a href="#"><span class="fa fa-star"></span></a>
                                                                <a href="#"><span class="fa fa-star-o"></span></a>
                                                            </p>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-6 emphasis">
                                                            <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                                </i> <i class="fa fa-pencil-square-o"></i> </button>
                                                            <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                                </i> Ver </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <%}%>



                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- footer content -->
                    <footer>
                        <div class="copyright-info">
                            <p class="pull-right">Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
                            </p>
                        </div>
                        <div class="clearfix"></div>
                    </footer>
                    <!-- /footer content -->

                </div>
                <!-- /page content -->
            </div>

        </div>

        <div id="custom_notifications" class="custom-notifications dsp_none">
            <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
            </ul>
            <div class="clearfix"></div>
            <div id="notif-group" class="tabbed_notifications"></div>
        </div>

        <script src="js/bootstrap.min.js"></script>

        <!-- bootstrap progress js -->
        <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- icheck -->
        <script src="js/icheck/icheck.min.js"></script>

        <script src="js/custom.js"></script>
        <!-- pace -->
        <script src="js/pace/pace.min.js"></script>
    </body>

</html>