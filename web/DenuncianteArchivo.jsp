<%-- 
    Document   : nuevaPublicacion
    Created on : 16/05/2016, 09:51:20 AM
    Author     : Mi Laptop
--%>


<%@page import="com.repositoriounia.modelo.DescripDenun"%>
<%@page import="com.repositoriounia.modelo.Respuesta"%>
<%@page import="com.repositoriounia.modelo.TipoEntidad"%>
<%@page import="com.repositoriounia.modelo.TipoAutor"%>
<%@page import="com.repositoriounia.modelo.DescripcionArchivo"%>
<%@page import="com.repositoriounia.dao.FacultadDAO"%>
<%@page import="com.repositoriounia.modelo.Facultad"%>
<%@page import="com.repositoriounia.dao.FacultadDAOFactory"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
        <link href="css/fileinput.css" rel="stylesheet" type="text/css"/>   
    </head>
    <%
        int idArchivoPublicacion = Integer.parseInt(request.getParameter("idArchivoPublicacion"));
        FacultadDAOFactory fabricate1 = new FacultadDAOFactory();
        FacultadDAO daote1 = fabricate1.metodoDAO();
        Facultad[] facul = daote1.leertodo();
    %>
    <body>
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Datos de Denuncia </h4>

        </div>
        
        <div class="modal-body">  
            <div class="row">


                <div class="col-md-6 col-sm-6 col-xs-12">
                    <form class="form-horizontal form-label-left " id="crearform" enctype="multipart/form-data">
                        <div class="x_panel">

                            <div class="x_content">
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">CODIGO</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control has-feedback-left" readonly="readonly" value="AUTOGENARADO">
                                        <input type="hidden" name="idArchivoPublicacion"id="idAutor1" value="<%=idArchivoPublicacion%>" />       
                                        <span class="fa fa-cc form-control-feedback left" aria-hidden="true"></span>
                                    </div>
                                </div>   
                                <div class="form-group">      
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">NOMBRES</label>
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            <input name="nombres" type="text" class="form-control" value="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">      
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">apellido</label>
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            <input name="apellidos" type="text" class="form-control" value="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">      
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">DNI</label>
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            <input name="dni" type="text" class="form-control" value="">
                                        </div>
                                    </div>
                                </div>         
                                <div class="form-group">      
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">telefono</label>
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            <input name="telefono" type="text" class="form-control" value="">
                                        </div>

                                    </div>

                                </div>
                                <div class="form-group">
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexo</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <div id="gender" class="btn-group" data-toggle="buttons">
                                            <label class="btn btn-default  active" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                <input type="radio" name="sexo" value="M" checked=""> &nbsp; Masculino &nbsp;
                                            </label>


                                            <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                <input type="radio" name="sexo" value="F" checked=""> Femenino
                                            </label>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                                <div class="form-group">      
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">direccion</label>
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            <input name="direccion" type="text" class="form-control" value="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">      
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">correo</label>
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            <input name="correo" type="text" class="form-control" value="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12 ">TIPO DE PLAGIO</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <select name="descripcion"id="" class="form-control">
                                            <option value="--">--</option>
                                            <%for (DescripDenun es : DescripDenun.values()) {

                                            %>
                                            <option value="<%=es.name()%>"  >
                                                <%=es.getNom()%></option>
                                                <%}%>
                                        </select>
                                    </div>

                                            </div>

                                </div>


                            </div>
                        </div>
                    </form>
                    <div class="modal-footer">

                        <button type="button" class="btn btn-primary" id="btnDenunciar" >Denunciar</button>
                    </div>       
                </div>




                <div class="col-md-6 col-sm-6 col-xs-12">
                     
                        <div class="x_panel">

                            <div class="x_content">
                                <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <form id="cargaform1" enctype="multipart/form-data" >
                                        <input type="text" name="idDenuncia"id="idDenuncia" value="" />
                                        <div class="form-group">

                                            Adjuntar Archivo que compuebe su Denuncia


                                        </div>
                                        <div class="form-group">      

                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">ARCHIVO</label>

                                            <input name="archivos" id="file-2" accept=".pdf"  type="file" class="file"  data-preview-file-type="any" value="" data-show-preview="false">


                                        </div>  
                                        <!-------------------------botones de carga         ------------------------>


                                    </form>
                                    
                                    <div class="form-group">
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            <button class="btn btn-primary" id="btnCargar1" >Cargar</button>
                                            <button class="btn btn-default" id="cancelar" type="reset">Cancelar</button>
                                        </div>
                                    </div>
                                    
                                    <div class="panel-body">
                                        <table class="table table-bordered" id="tableArchivos">

                                        </table>
                                    </div>
                                </div>
                            </div>





                        </div>
                   DEBE CREAR SU DENUNCIA PARA PODER CARGAR UN ARCHIVO
                   <div id="div-alerta1" style="padding: 1px;display:none " class=" alert alert-success pull-left"  >

                   </div>
                </div>

            </div>



        </div>
    </div>

    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
       
    </div>
</body>
<!--LIBRERIAS NECESARIAS PARA EL SCRIPT*-->



<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>

<script src="js/moment/moment.min.js"></script>
<script src="js/datepicker/daterangepicker.js"></script>  

<!--LIBRERIAS NECESARIAS PARA EL SCRIPT*-->
<script src="js/parsley/parsley.min.js" type="text/javascript"></script>
<script src="js/select/select2.full.js" type="text/javascript"></script>
<script src="js/fileinput.min.js" type="text/javascript"></script>
<!-------------------------------------------------------------------->

<script type="text/javascript">
      var  band, msj;
    $(document).ready(function () {

$( "#file-2" ).prop( "disabled", true );
$( "#btnCargar1" ).prop( "disabled", true );
$( "#cancelar" ).prop( "disabled", true );
        /*----------------------------------*/
    });
 $('#file-2').fileinput({
        browseLabel: 'Buscar',
        showUpload: false,
        showRemove: true
    });


    $('#btnDenunciar').click(function () {
        var formdata = new FormData($("#crearform")[0]);
        $.ajax({
            url: "DenunciaController?accion=CrearDenuncia",
            type: "post",
            contentType: false,
            data: formdata,
            processData: false,
            cache: false})
                .done(function (id) {

                    if (id == 0) {
                        
                        ocultarmodal();
                        alerta1("Denuncia no creada, llene todos los Campos", false);
                    }
                    else
                    {
                       $('#cargaform').find('input, textarea, button, select').attr('disabled','disabled'); 
                       $('#btnDenunciar').attr("disabled", true);
                       $('#idDenuncia').val(id);
                       $( "#file-2" ).prop( "disabled", false );
                       $( "#btnCargar1" ).prop( "disabled", false );
                        $( "#cancelar" ).prop( "disabled", false);
                        alerta1("Denuncia Recibida, pude cargar sus archivos ", true);
                    }
                })
               
    });
    
     $('#btnCargar1').click(function () {
      
       
        var formdata = new FormData($("#cargaform1")[0]);
        //formdata.append('idDenuncia',$('#idDenuncia').val());
        // alert('codigo :'+$('#idDenuncia').val());
        formdata.append('urllocal', 'xxx');
        formdata.append('urlweb', 'xx');
        var inputfile = document.getElementById('file-2');
        var file = inputfile.files[0];
        formdata.append('archivo', file);
        
        $.ajax({
            url: "ArchivoDenunciaController?accion=cargarArchivo",
            type: "post",
            contentType: false,
            data: formdata,
            processData: false,
            cache: false})
 
                .done(function (msj) {

                    if (msj == 0) {
                        alert('no se pudo crear');
                        alerta1("archivo no cargado", false);
                    }
                    else
                    {
                        actualizar2();
                        $( "#btnCargar1" ).prop( "disabled", true );
                        $( "#cancelar" ).prop( "disabled", true );
                        alerta1("archivo cargado", true);
                    }
                })
    });
    function alerta1(msj, band) {
        $("#div-alerta1").fadeOut(0, function () {
            band === true ?
                    $("#div-alerta1").removeClass("alert-danger").addClass("alert-success") :
                    $("#div-alerta1").removeClass("alert-success").addClass("alert-danger");
            $("#div-alerta1").html("<h5 style='margin: 6px;'>" +
                    "<strong>" + msj + "</strong>" +
                    "</h5>");
            $("#div-alerta1").fadeIn();
        });
    }
</script>

</html>



