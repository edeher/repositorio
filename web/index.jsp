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

    <title>REVPI </title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <!-- Custom styling plus plugins -->
    <link href="css/custom_1.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">
   

</head>


<body class="nav-md" background="images/logos unia/fondo1.jpg"  >
    
    <div class="container body">
        <div class="nav navbar-nav navbar-right"> 
            <p  ></p>
             <a href="login.jsp" id="btnLogin"><span class="badge btn-default">LOGIN</span></a>

        </div>
        <!-- page content -->
        <div class="col-md-12">
            <div class="col-middle">

                <div class="text-center">
                    <h1 ><img src="images/logo.png" alt="" height="35%" width="80%"/></h1>

                    <h2 class="error-number"><font color="#00753b">REPOSITORIO VPI</font></h2>
                    <p  ><font color="#00753b"><strong>ESPACIO VIRTUAL DE CONCENTRACION Y PRODUCCION EN CIENCIA DE LA UNIA </strong></font></p>
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <a href="Publicaciones.jsp"><span class="badge bg-blue">INGRESAR</span></a>
                        </div>
                    </div>
                    
                </div>
            </div >
            <br>
          
           <br>
            <div class="text-center">
                 <a href="https://portal.concytec.gob.pe/"><img src="images/logos unia/logo-concytec-ok.jpg" width="180" height="54" alt="logo-concytec-ok"/>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://reformauniversitaria.pe/"><img src="images/logos unia/logo-ley-universitaria.jpg" width="180" height="54" alt="logo-ley-universitaria"/>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://www.sunedu.gob.pe/"><img src="images/logos unia/logo-sunedu-ok.jpg" width="180" height="54" alt="logo-sunedu-ok"/>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
            <a href=""> <img src="images/logos unia/transparencia-servir.jpg" width="180" height="54" alt="transparencia-servir"/>
            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href=""> <img src="images/logos unia/Logo-sinfondo.png" width="180" height="54" alt="transparencia-servir"/>
            </a>
            </div>
        </div>
        <br>
        </div>
        <br>
    </div>

    <script src="js/jquery.min.js"></script>	
    <script src="js/bootstrap.min.js"></script>
    <!-- bootstrap progress js -->
    <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- icheck -->
    <script src="js/icheck/icheck.min.js"></script>
    <!-- custom-->
    <script src="js/custom.js"></script>

    <!--- librerias paramensaje emergentes--->
    <script type="text/javascript" src="js/notify/pnotify.core.js"></script>
    <script type="text/javascript" src="js/notify/pnotify.buttons.js"></script>
    <script type="text/javascript" src="js/notify/pnotify.nonblock.js"></script>

    
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
                type: 'info',
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



