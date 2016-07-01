<%-- 
    Document   : Autores
    Created on : 25/05/2016, 03:03:51 PM
    Author     : Mi Laptop
--%>
<LINK REL="SHORTCUT ICON" HREF="images/favicon_1.ico" />
<%@page import="com.repositoriounia.modelo.TipoAutor"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAO"%>
<%@page import="com.repositoriounia.modelo.AutorPublicacion"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAOFactory"%>
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
        AutorPublicacionDAOFactory fabricate = new AutorPublicacionDAOFactory();
        AutorPublicacionDAO daote = fabricate.metodoDAO();
        AutorPublicacion objAuP=new AutorPublicacion();
        objAuP.setTipoautor(TipoAutor.TESISTA );
       AutorPublicacion[] autor = daote.leertodoportipo(objAuP);


    %>

    <body class="nav-md">

        <div class="container body">


            <div class="main_container">

                <%@include file="menu.jspf" %>

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
                     

                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">
                                    <div class="x_content">

                                        <div class="row">

                                            <div class="col-md-12 col-sm-12 col-xs-12" style="text-align:center;">
                                                <ul class="pagination pagination-split">
                                                     <li><a href="Jefes.jsp">JEFES DE PROYECTO</a>
                                                    </li>
                                                    <li><a href="Especialistas.jsp">ESPECIALISTAS</a>
                                                    </li>
                                                    <li><a href="Tesistas.jsp">TESISTAS</a>
                                                    </li>
                                                    
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>

                                            <% for (AutorPublicacion autor1 : autor) {

                                            %>


                                            <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                                <div class="well profile_view">
                                                    <div class="col-sm-12">
                                                        <h4 class="brief"><i>Investigador UNIA</i></h4>
                                                        <div class="left col-xs-7">
                                                            <h2><%=autor1.getAutor().getNombres() %> </h2>
                                                            <p> <%=autor1.getAutor().getApellidos() %></p>
                                                            <p> <i class="fa fa-graduation-cap"></i>:<%=autor1.getAutor().getProfesion() %> </p>
                                                             <p><i class="fa fa-wrench"></i>: <%=autor1.getAutor().getEspecialidad() %> </p>
                                                            <ul class="list-unstyled">
                                                                <li><i class="fa fa-phone"></i>: <%=autor1.getAutor().getTelefono() %> </li>
                                                                <li><i class="fa fa-envelope"></i>: <%=autor1.getAutor().getCorrero() %> </li>
                                                                <li><i class="fa fa-drupal "></i>: <%=autor1.getTipoautor().getNom() %> </li>
                                                            </ul>
                                                        </div>
                                                        <div class="right col-xs-5 text-center">
                                                            <img src="images/LOGO UNIA.png" alt="" class="img-circle img-responsive">
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