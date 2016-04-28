<%-- 
    Document   : buscarPublicaciones
    Created on : 25/04/2016, 08:42:19 AM
    Author     : Mi Laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javaScript">
            function todos()
            {
                f.action="../PublicacionController?accion=ObtenerTodos"
                f.target="cuerpito"
                f.submit();
                f.reset();
            }
            
        </script>
    </head>
    <body>
        <form name="f" method="POST">
            <table border="1">
                
                <tr>
                    <td>Buscar Todos</td>
                    <td colspan="2"> <input type="button" value="Todos" onclick="todos(this.form)" /></td>
                </tr>

            </table>

        </form>
    </body>
</html>
