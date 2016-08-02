<%-- 
    Document   : login
    Created on : 16/05/2016, 09:13:57 AM
    Author     : Mi Laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>REPOSITORIO VPI LOGIN </title>

        <!-- Bootstrap core CSS -->

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">

        <!-- Custom styling plus plugins -->
        <link href="css/custom_1.css" rel="stylesheet">
        <link href="css/icheck/flat/green.css" rel="stylesheet">


        <script src="js/jquery.min.js"></script>

        <!--[if lt IE 9]>
              <script src="../assets/js/ie8-responsive-file-warning.js"></script>
              <![endif]-->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
              <![endif]-->

    </head>

    <body  background="images/logos unia/fondo 2.jpg">

        <div class="">
            <a class="hiddenanchor" id="toregister"></a>
            <a class="hiddenanchor" id="tologin"></a>

            <div id="wrapper">
                <div id="login" class="animate form">

                    <section class="login_content">
                        <div class="" style="border: 0;">
                            <a href="" class=""> <img src="images/LOGO UNIA.png" alt="" height="50px" width="40px"/> <span></span></a>
                        </div>
                        <form action="UsuarioController?accion=validar" name="f" method="post">
                            <h1>Repositorio VPI</h1>
                            <div>
                                <input type="text" class="form-control" placeholder="Usuario" required="" name="usuario" />
                            </div>
                            <div>
                                <input type="password" class="form-control" placeholder="Contraseña" required=""  name="clave"/>
                            </div>
                            <div>
                                <input class="btn btn-default submit" type="submit" value="Ingresar" />
                                
                                <!--  <a class="reset_pass" href="#">Olvidaste tu Contraseña?</a>-->
                            </div>
                            <div class="clearfix"></div>
                            <div class="separator">

                                <!--   <p class="change_link">New to site?
                                     <a href="#toregister" class="to_register"> Create Account </a>
                                   </p>-->
                                <div class="clearfix"></div>
                                <br />
                                <div>
                                    <h1><i class="fa fa-lock" style="font-size: 26px;"></i> Bienvenido!</h1>

                                    <p>©2016 Todos Los derechos Reservados. Vicepresidencia de Investigacion UNIA</p>
                                </div>
                            </div>
                        </form>
                        <!-- form -->
                    </section>
                    <!-- content -->
                </div>
                <div id="register" class="animate form">
                    <section class="login_content">
                        <form>
                            <h1>Create Account</h1>
                            <div>
                                <input type="text" class="form-control" placeholder="Username" required="" />
                            </div>
                            <div>
                                <input type="email" class="form-control" placeholder="Email" required="" />
                            </div>
                            <div>
                                <input type="password" class="form-control" placeholder="Password" required="" />
                            </div>
                            <div>
                                <a class="btn btn-default submit" href="index.html">Submit</a>
                            </div>
                            <div class="clearfix"></div>
                            <div class="separator">

                                <p class="change_link">Already a member ?
                                    <a href="#tologin" class="to_register"> Log in </a>
                                </p>
                                <div class="clearfix"></div>
                                <br />
                                <div>
                                    <h1><i class="fa fa-paw" style="font-size: 26px;"></i> Gentelella Alela!</h1>

                                    <p>©2015 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                                </div>
                            </div>
                        </form>
                        <!-- form -->
                    </section>
                    <!-- content -->
                </div>
            </div>
        </div>
       
    </body>

</html>
