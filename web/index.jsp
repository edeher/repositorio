<%-- 
    Document   : index
    Created on : 04/05/2016, 03:41:00 PM
    Author     : Mi Laptop
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>REVIP </title>

        <!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
	<link href="css/animate.min.css" rel="stylesheet">        <

        <!-- Custom styling plus plugins -->
        <link href="css/custom.css" rel="stylesheet">
        <link href="css/icheck/flat/green.css" rel="stylesheet">


        <!--[if lt IE 9]>
              <script src="../assets/js/ie8-responsive-file-warning.js"></script>
              <![endif]-->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
              <![endif]-->

    </head>


    <body class="nav-md"  >
        <div class="container body">
            <div class="nav navbar-nav navbar-right">  
                                <button id="btnLogin" class="" name="">Login</button>
                            </div>
            <!-- page content -->
                <div class="col-md-12">
                    <div class="col-middle">
                        
                        <div class="text-center">
                            <h1 ><img src="images/logo.png" alt="" height="35%" width="80%"/></h1>
                            
                            <h2 class="error-number">REPOSITORIO VIP</h2>
                            <p  >ESPACIO VIRTUAL DE CONCENTRACION Y PRODUCCION EN CIENCIA DE LA UNIA </p>
                            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                                <div class="menu_section">
                                <a href="Publicaciones.jsp"><span class="badge bg-green">INGRESAR</span></a>
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
            
            <!-- footer content -->
        </div>

        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- bootstrap progress js -->
        <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- icheck -->
        <script src="js/icheck/icheck.min.js"></script>
        <script src="js/custom.js"></script>
        <script type="text/javascript" src="js/notify/pnotify.core.js"></script>
        <script type="text/javascript" src="js/notify/pnotify.buttons.js"></script>
        <script type="text/javascript" src="js/notify/pnotify.nonblock.js"></script>
       
        
        <script type="text/javascript">
            $(document).ready(function () { 
                
            });  
            
            $('#btnLogin').click(function(){                
               mostrarModal('login.jsp');                
            }); 
            
            function mostrarModal(url){
                $('#miModal .modal-content').load(url, function () {
                    $('#miModal').modal('show');
                });
            }
        </script>
        <!-- /footer content -->
        <script type="text/javascript">
            var permanotice, tooltip, _alert;
            $(function () {
                new PNotify({
                    title: "BIENVENIDOS",
                    text: "Revisa nuestras ultimas Publicaciones ",
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
             $(function () {
                new PNotify({
                    title: "CONOCE!!!!!",
                    text: "Conoce a nuestros Investigadores ",
                    type:'info',
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



