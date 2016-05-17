<%-- 
    Document   : verAutores
    Created on : 09/05/2016, 04:41:06 PM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.DescripcionArchivo"%>
<%@page import="com.repositoriounia.modelo.Publicacion"%>
<%@page import="com.repositoriounia.dao.PublicacionDAO"%>
<%@page import="com.repositoriounia.dao.PublicacionDAOFactory"%>
<%@page import="com.repositoriounia.modelo.AutorPublicacion"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAO"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <link href="css/fileinput.css" rel="stylesheet" type="text/css"/>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        int idPublicacion = Integer.parseInt(request.getParameter("codigo"));
    %>

    <body>
<!--cabecera--->
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Archivos de la  Publicacion N°<%=idPublicacion%>  </h4>
        </div>
<!---cuerpo--->
        <div class="modal-body"> 

            <ul id="myTabs" class="nav nav-tabs bar_tabs" role="tablist">
                <li role="presentation" class="active">
                    <a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">
                        Publicacion N°<%=idPublicacion%>
                    </a>
                </li>               
                <li role="presentation" class="">
                    <a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">
                        Visor PDF
                    </a>
                </li>                
            </ul>

            <div class="container">
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
  <!-------------seccion de carga ----------------------------------------- --->                 
                        <form enctype="multipart/form-data" id="cargaform">
                            <div class="form-group">
                               
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">TIPO DE ARCHIVO</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <select name="descripcion"id="" class="form-control">
                                            <option value="--">--</option>
                                            <%for (DescripcionArchivo es : DescripcionArchivo.values()) {

                                            %>
                                            <option value="<%=es.name()%>"  >
                                                <%=es.getNom()%></option>
                                                <%}%>
                                        </select>
                                    </div>
                                    <input type="hidden" name="idpublicacion" id="idpublicacion" value="<%=idPublicacion%>" />
                                    &nbsp;
                               
                            </div>
                            <div class="form-group">      
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">ARCHIVO</label>
                                    <input type="hidden" name="urllocal" value="xxx" />
                                    <input type="hidden" name="urlweb" value="xxx" />
                                    <input id="file-1" accept=".pdf" name="archivo" type="file" class="file"  data-preview-file-type="any" value="" data-show-preview="false">

                                </div>
                            </div>  
                  <!-------------------------botones de carga         ------------------------>
                            <div class="form-group">
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <button class="btn btn-primary" id="btnCargar" >Cargar</button>
                                    <button class="btn btn-default" type="reset">Cancelar</button>
                                </div>
                            </div>

                        </form>
     <!--------------------fin de carga de documento--->
     
     <!-------------------------tabla de archivos----------------------------->
                        <div class="x_content">                    
                            <table id="mio" class="table table-bordered" >                    
                            </table>
                        </div>
     
                    </div> 
       <!-------------------------fin tabla .----------------------------->                              
  <!---fin tabpanel----> <div role="tabpanel" class="tab-pane fade " id="tab_content2" aria-labelledby="profile-tab">
                        
                        
                        <div class="iframe-container">
                            <iframe id="iframepdf" src="" width="99.6%" height="460" frameborder="0">
                            </iframe>
                        </div>
                    </div>
                </div>
            </div>                    
        </div>
 <!-------------------------pie de docuemnto----------------------------->
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

        </div>
        <!-- /footer content -->        
        <script src="js/jquery.min.js"></script>	
        <script src="js/bootstrap.min.js"></script>
        <!-- bootstrap progress js -->
        <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- icheck -->
        <script src="js/icheck/icheck.min.js"></script>
        <!-- custom-->
        <script src="js/custom.js"></script>
        <!-- Datatables-->
        <script src="js/datatables/jquery.dataTables.min.js"></script>
        <script src="js/datatables/dataTables.bootstrap.js"></script>
        <script src="js/datatables/dataTables.buttons.min.js"></script>
        <script src="js/datatables/buttons.bootstrap.min.js"></script>
        <script src="js/datatables/jszip.min.js"></script>
        <script src="js/datatables/pdfmake.min.js"></script>
        <script src="js/datatables/vfs_fonts.js"></script>
        <script src="js/datatables/buttons.html5.min.js"></script>
        <script src="js/datatables/buttons.print.min.js"></script>
        <script src="js/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="js/datatables/dataTables.keyTable.min.js"></script>
        <script src="js/datatables/dataTables.responsive.min.js"></script>
        <script src="js/datatables/responsive.bootstrap.min.js"></script>
        <script src="js/datatables/dataTables.scroller.min.js"></script>
        <!-- fileinput-->
        <script src="js/fileinput.min.js" type="text/javascript"></script>
        <!--   ----------------------------------------------------------------------- -->
        <script type="text/javascript">
            var table1, band, msj;
            $(document).ready(function () {

                table1 = $('#mio').DataTable({
                    "paging": false,
                    "filter": false,
                    "bInfo": false,
                    "language": {
                        "url": "css/datatables/Spanish.json"
                    },
                    "columns": [{"title": "Cod"},
                        {"title": "Tipo de Documento"},
                        {"title": "Archivo"}],
                    "columnDefs": [
                        {"targets": [2],
                            "orderable": false,
                            "className": 'text-center'},
                        {"targets": -1,
                            "data": null,
                            "defaultContent": '<button name="btnVerArchivo"><a><i class="fa fa-search"></i></a></button>&nbsp&nbsp <button name="btnEliminar"><a><i class="fa fa-trash"></i></a></button>'}
                    ],
                    "ajax": "ArchivoPublicacionController?accion=ObtenerArchivos&codigo=" +<%=idPublicacion%>,
                    "initComplete": function () {

                    }
                });

                $('#mio tbody').on('click', 'button', function () {
                    var data = table1.row($(this).parents('tr')).data();
                    //alert("cargar pdf codigo "+ data[0]); 
                    var nombre = $(this).attr('name')
                     if(nombre=='btnVerArchivo'){
                    $('#iframepdf').attr('src', 'ArchivoPublicacionController?accion=verArchivo&idArchivo=' + data[0]);
                    $('#myTabs a:last').tab('show');
                    $('#iframepdf').contentWindow.location.reload(true);
                     }
                     if(nombre=='btnEliminar'){
                        if(confirm("seguro que desea eliminar el Archivo")==true)
                        {
                            $.ajax({
                                     url:"ArchivoPublicacionController?accion=eliminarArchivo&idArchivo="+data[0],
                                    })
                             .always(function()
                                {
                                    actualizar1();

                                });  
                        }
                     }
                });
            });
            /*-------------------------------------------------------------------------------*/
            $('#file-1').fileinput({
                browseLabel: 'Buscar',
                showUpload: false,
                showRemove: false
            });

            $('#btnCargar').click(function () {
                var formdata = new FormData($("#cargaform")[0]);
                $.ajax({
                    url: "ArchivoPublicacionController?accion=cargarArchivo",
                    type: "post",
                    contentType: false,
                    data: formdata,
                    processData: false,
                    cache: false})
                        .done(function (resp) {
                            alert("done: " + resp);
                        })
                        .fail(function (jqXHR, textStatus, errorThrown) {
                            alert("fail: " + jqXHR.status + " -- " + textStatus + " -- " + errorThrown);
                        })
                        .always(function () {
                            //actualizar1();                        
                        });
            });
            /*-------------------------------------------------------------------------------*/


            /*-------------------------------------------------------------------------------*/
            /*funcion independiete que ACTUALIZA LA TABLA*/
            function actualizar1()
            {
                table1.ajax.reload(function () {
                    table1.columns.adjust().draw();
                }, false);
            }
            /*-------------------------------------------------------------*/





        </script>
    </body>

</html>
