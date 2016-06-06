<%-- 
    Document   : animateModal
    Created on : 19/05/2016, 12:36:12 AM
    Author     : Mi Laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>DEMOS</title>
        
        <link href="css/animateModalcss/normalize.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/animateModalcss/animate.min.css" rel="stylesheet" type="text/css"/>
        <style>
            #btn-close-modal {
                width:100%;
                text-align: center;
                cursor:pointer;
                color:#fff;
            }

        </style>
    </head>
    <%
    int codigo=33;   
    
    %>
    <body>

        <!--Call your modal-->
        <ul>
            <li><a id="demo01" href="#animatedModal">DEMO01</a></li>
           
        </ul>
              <!--DEMO01-->
        <div id="animatedModal">
            <!--THIS IS IMPORTANT! to close the modal, the class name has to match the name given on the ID -->
            <div  id="btn-close-modal" class="close-animatedModal"> 
                X
            </div>
                
            <div >
                <iframe id="iframepdf" src="ArchivoPublicacionController?accion=verArchivo&idArchivo=<%=codigo%>" width="100%" height="630" name='' scrolling="no" frameborder="0">
                            </iframe>
            </div>
        </div>

        <script src="js/jquery.min.js"></script>
        
        <script src="js/animateModaljs/animatedModal.min.js" type="text/javascript"></script>
        <script>

            //demo 01
            $("#demo01").animatedModal(
                    {
                        color:'#404040'
                    }
            );
           
        </script>

    </body>
</html>
