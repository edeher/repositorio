<%-- 
    Document   : Publicacion
    Created on : 15/04/2016, 09:47:22 AM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.dao.AreaInvestigacionDAO"%>
<%@page import="com.repositoriounia.modelo.AreaInvestigacion"%>
<%@page import="com.repositoriounia.dao.AreaInvestigacionDAOFactory"%>
<%@page import="com.repositoriounia.modelo.LineaInvestigacion"%>
<%@page import="com.repositoriounia.dao.LineaInvestigacionDAO"%>
<%@page import="com.repositoriounia.dao.LineaInvestigacionDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="CalendarPage/calendar.js" type="text/javascript"></script>
        <script language="javaScript">
            function grabar(f)
            {
                var falta="";
                 if(f.area.value=="--")
                {
                    falta+="\tArea de Investigacion\n";
                }
                if(f.linea.value=="--")
                {
                    falta+="\tlinea de Investigacion\n";
                }
                if(f.titulo.value=="")
                {
                   falta+="\ttitulo\n"; 
                }
                if(f.fechapublica.value=="")
                {
                    falta+="\tfecha de publicacion\n";
                }
                if(falta!="")
                {
                    alert("falta ingresar :\n"+falta+" :de la Publicacion")
                    return false;
                }
                else
                {
                    f.action="../PublicacionController?accion=crearPublicacion";
                    f.target="cuerpito";
                    f.submit();
                    f.reset();
                    return true;
                }
            }
            
        </script>
    </head>
    <%
          AreaInvestigacionDAOFactory fabricate= new   AreaInvestigacionDAOFactory();
          AreaInvestigacionDAO daote= fabricate.metodoDAO();
          AreaInvestigacion[] area=daote.leertodo();
    %>
    <body>
        <form name="f" method="POST" >
            <table border="1">
               <tr>
                   <td>Area de Investigacion</td>
                  <td><select name="area"id="SelectArea">
                            <option value="--">--</option>
                             <%for (AreaInvestigacion area1: area) {
                                
                        %>
                            <option value="<%=area1.getIdAreaInvestigacion() %>"><%=area1.getDescripcion() %></option>
                             <%}%>
                        </select></td>
               </tr>
               <tr>
                    <td>Linea Investigacion </td>
                    <td><select name="linea" id="SelectLinea" >
                           
                    </select></td>
                </tr>
                    <tr>
                        <td>Titulo</td>
                        <td><input type="text" name="titulo" value="" /></td>
                    </tr>
                    <tr>
                        <td>Fecha Publicacion</td>
                        <td><input type="text" name="fechapublica" value="" />
                            <a href="javascript:doNothing()" 
                           onClick="setDateField(document.f.fechapublica);
                                   top.newWin = window.open('calendario.jsp', 'cal', 'dependent=yes,width=240,height=290,screenX=220,screenY=170,titlebar=yes')"> 
                                <img src="CalendarPage/calendar.gif" border=0>
                                </a></td>
                    
                    </tr>
                    <tr>
                        <td><input type="reset" value="limpiar" /></td>
                        <td><input type="button" value="Grabar" onclick="grabar(this.form)" /></td>
                    </tr>
             
            </table>

        </form>
    </body>
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
         $(document).ready(function() {   
            $('#SelectArea').on('change',function(){
                var codigo=this.value;
               $.ajax({
                   type: 'POST',
                   url:'../LineaInvestigacionController?accion=BuscarPorArea&codigo='+codigo,
                   data:$(this).serialize(),
                   success:function(data){
                       $('#SelectLinea').html(data);
                   }
               });
            });
        });
    </script>
</html>
