<%-- 
    Document   : VerPublicacion
    Created on : 23/05/2016, 09:05:18 AM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.DescripcionArchivo"%>
<%@page import="com.repositoriounia.modelo.ArchivoPublicacion"%>
<%@page import="com.repositoriounia.dao.ArchivoPublicacionDAO"%>
<%@page import="com.repositoriounia.dao.ArchivoPublicacionDAOFactory"%>
<%@page import="com.repositoriounia.modelo.Publicacion"%>
<%@page import="com.repositoriounia.modelo.AutorPublicacion"%>
<%@page import="com.repositoriounia.dao.PublicacionDAO"%>
<%@page import="com.repositoriounia.dao.PublicacionDAO"%>
<%@page import="com.repositoriounia.dao.PublicacionDAOFactory"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAO"%>
<%@page import="com.repositoriounia.dao.AutorPublicacionDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
        <link href="css/fileinput.css" rel="stylesheet" type="text/css"/>   
    </head>
    <%
        int idArchivoPublicacion = Integer.parseInt(request.getParameter("idArchivoPublicacion"));
       
    %>
    <body>
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Denunciar del archivo <%=idArchivoPublicacion %> </h4>

        </div>
        
        <div class="modal-body">  
            <div class="row">


                

              <div class="panel-body">
                                                        <table class="table table-bordered" id="tableDenuncias">

                                                        </table>
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




<!--LIBRERIAS NECESARIAS PARA EL SCRIPT*-->
<script src="js/parsley/parsley.min.js" type="text/javascript"></script>
<script src="js/select/select2.full.js" type="text/javascript"></script>

<!-------------------------------------------------------------------->

<script type="text/javascript">
      var  band, msj;
    $(document).ready(function () {
 var table =$('#tableDenuncias').DataTable({
                "language": {
                    "url": "css/datatables/Spanish.json"
                },
                "columns": [{ "title": "Cod" },
                            { "title": "Denunciante" },
                             { "title": "Fecha de Denuncia" },
                             { "title": "Motivo" },
                             { "title": "Publicacion" },
                             { "title": "Archivo Denunciado" },
                             { "title": "" }],
                "columnDefs": [                         
                   {"targets": [ 6 ],
                    "orderable": false,
                    "className": 'text-center'},
                   {"targets": -1,
                    "data": null,
                    "defaultContent": ''}
                ],
            "ajax": "DenunciaController?accion=BuscarxidArchivo&idArchivoPublicacion="+<%=idArchivoPublicacion%>,
            "initComplete": function () {
                $('[data-toggle="tooltip"]').tooltip({
                    trigger: 'hover',
                    html: true
                });

            }
        });

        /*----------------------------------*/
        table.on('order.dt search.dt', function () {
            table.column(0, {search: 'applied', order: 'applied'}).nodes().each(function (cell, i) {
                cell.innerHTML = i + 1;
            });

        }).draw();
    });
 

    
    
    
</script>

</html>
