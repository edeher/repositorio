<%-- 
    Document   : crearAutor
    Created on : 22/04/2016, 09:35:18 AM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.Autor"%>
<%@page import="com.repositoriounia.modelo.TipoAutor"%>
<%@page import="com.repositoriounia.modelo.Escuela"%>
<%@page import="com.repositoriounia.dao.EscuelaDAO"%>
<%@page import="com.repositoriounia.dao.EscuelaDAOFactory"%>
<%@page import="com.repositoriounia.modelo.Facultad"%>
<%@page import="com.repositoriounia.dao.FacultadDAO"%>
<%@page import="com.repositoriounia.dao.FacultadDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javaScript">
            function buscardni(f)
            {
                var falta="";
                if(f.dni.value=="")
                {
                    
                    falta += "\t ingrese numero de dni \n ";
                }
                else
                    if(f.dni.value.length != 8)
                {
                    falta += "\t  8 digitos \n ";
                }
                if (falta != "")
                {
                    alert("Ingrese :\n " + falta + " : para poder buscar");
                    return false;
                }
                else
                {
                f.action="../AutorController?accion=buscarpordni"
                f.target=""
                f.submit();
                f.reset();
            }
            }
            
            
        </script>
       
    </head>
    <%
        FacultadDAOFactory fabricate=new FacultadDAOFactory();
        FacultadDAO daote=fabricate.metodoDAO();
        Facultad [] fac=daote.leertodo();
        EscuelaDAOFactory fabricate1=new EscuelaDAOFactory();
        EscuelaDAO daote1=fabricate1.metodoDAO();
        
        Autor Au=new Autor();
        int idPublicacion=0;
        
        String val=request.getParameter("val");
        System.out.println("entro con val="+val);
        
        if(val.equals("bus")){
         idPublicacion=Integer.parseInt(request.getParameter("codigo"));
         System.out.println("idPublicacion="+idPublicacion);
        }
        else if(val.equals("nue1"))
        {
            Au = (Autor) request.getAttribute("Au");
            idPublicacion=Integer.parseInt(request.getParameter("idPublicacion"));
            System.out.println("idPublicacion encontrado autor="+idPublicacion);        
        }
        else if(val.equals("nue"))
        {
             idPublicacion=Integer.parseInt(request.getParameter("idPublicacion"));
            System.out.println("idPublicacion en nuevo="+idPublicacion);        
        }
        
    %>
    <body>
        <form name="f" method="POST">
            <table border="1">
                <%if (val.equals("bus")) {%>
                <tr>
                    <td>Buscar Autor</td>
                    <td><input type="text" name="dni" value="" /></td>
                <input type="hidden" name="idPublicacion" value="<%=idPublicacion%>">
                <td><input type="button" value="buscar" onclick="buscardni(this.form)"/></td>
                </tr>

               <!--otro if-->
                <%} else if (val.equals("nue1")) {%>
                <tr>
                    <td>nombres </td>
                    <td><%=Au.getNombres()%>
                        <input type="hidden" name="idPublicacion" value="<%=idPublicacion%>">
                        <input type="hidden" name="idAutor" value="<%=Au.getIdAutor()%>">
                    </td>

                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><%=Au.getApellidos()%></td>
                </tr>
                <tr>
                    <td>DNI</td>
                    <td><%=Au.getDni()%></td>
                </tr>
                <tr>
                    <td>Sexo</td>
                    <td ><%=Au.getDni()%></td>

                </tr>
                <tr>
                    <td>Direccion</td>
                    <td><%=Au.getDireccion()%></td>
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><%=Au.getTelefono()%></td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><%=Au.getCorrero()%></td>
                </tr>
                <tr>
                    <td>Facultad</td>
                    <td><%=Au.getEscuela().getFacultad().getDescripcion()%></td>
                </tr>

                <tr>
                    <td>Escuela</td>

                    <td><%=Au.getEscuela().getDescripcion()%></td>
                </tr>


                <tr>
                    <td>Profesion</td>
                    <td><%=Au.getProfesion()%></td>
                </tr>
                <tr>
                    <td>Especialidad</td>
                    <td><%=Au.getEspecialidad()%></td>
                </tr>
                <tr>
                    <td>Grado</td>
                    <td><%=Au.getGrado()%></td>
                </tr>
                <tr>
                    <td>Tipo de Autor</td>
                    <td>
                        <select name="tipoautor" >
                            <option value="--">--</option>
                            <%for (TipoAutor es : TipoAutor.values()) {

                            %>
                            <option value="<%=es.name()%>"  >
                                <%=es.getNom()%></option>
                                <%}%>
                        </select>
                    </td>
                </tr>
                
                <!--otro if-->
                <%} else if (val.equals("nue")) {%>
                <tr>
                    <td>nombres </td>
                    <td>
                        <input type="text" name="nombres" value="" />
                        <input type="hidden" name="idPublicacion" value="<%=idPublicacion%>">

                    </td>

                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="" /></td>
                </tr>
                <tr>
                    <td>DNI</td>
                    <td><input type="text" name="dni" value="" /></td>
                </tr>
                <tr>
                    <td>Sexo</td>
                    <td ><input type="radio" name="sexo" value="M" />Masculino</td>
                    <td><input type="radio" name="sexo" value="F"  />Femenino</td>
                </tr>
                <tr>
                    <td>Direccion</td>
                    <td><input type="text" name="direccion" value="" /></td>
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><input type="text" name="telefono" value="" /></td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input type="text" name="correo" value="" /></td>
                </tr>
                <tr>
                    <td>Facultad</td>
                    <td><select name="facultad"  id="Selectfacultad">
                            <option value="--">--</option>
                            <%for (Facultad fac1 : fac) {%>
                            <option value="<%=fac1.getIdFacultad()%>"><%=fac1.getDescripcion()%></option>
                            <%}%>
                        </select></td>
                </tr>

                <tr>
                    <td>Escuela</td>

                    <td><select name="escuela" id="Selectescuelas">


                        </select></td>
                </tr>


                <tr>
                    <td>Profesion</td>
                    <td><input type="text" name="profesion" value="" /></td>
                </tr>
                <tr>
                    <td>Especialidad</td>
                    <td><input type="text" name="especialidad" value="" /></td>
                </tr>
                <tr>
                    <td>Grado</td>
                    <td><input type="text" name="grado" value="" /></td>
                </tr>
                <tr>
                    <td>Tipo de Autor</td>
                    <td>
                        <select name="tipoautor" >
                            <option value="--">--</option>
                            <%for (TipoAutor es : TipoAutor.values()) {

                            %>
                            <option value="<%=es.name()%>"  >
                                <%=es.getNom()%></option>
                                <%}%>
                        </select>
                    </td>
                </tr>
                <%}%>
            
            </table>

        </form>

    </body>

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">        
        $(document).ready(function() {   
            $('#Selectfacultad').on('change',function(){
                var codigo=this.value;
               $.ajax({
                   type: 'POST',
                   url:'EscuelaController?accion=buscarporFacultad&codigo='+codigo,
                   data:$(this).serialize(),
                   success:function(data){
                       $('#Selectescuelas').html(data);
                   }
               });
            });
        });
    </script>
</html>
