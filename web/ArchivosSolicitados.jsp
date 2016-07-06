<%-- 
    Document   : Publicaciones
    Created on : 01/05/2016, 12:36:16 PM
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

	<title>REPOSITORIOVIP</title>

	<!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
	<link href="css/animate.min.css" rel="stylesheet">
	<!-- Custom styling plus plugins -->
	<link href="css/custom.css" rel="stylesheet">
        <link href="css/icheck/flat/green.css" rel="stylesheet">
        <!-- dataTables -->
        <link href="js/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="js/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="js/datatables/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="js/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="js/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body class="nav-md">

	<div class="container body">
		<div class="main_container">
                    
                        <!-- menu lateral -->
			<%@include file="menu.jspf" %>
                        <!-- /menu lateral -->
                        
			<!-- top navigation -->
			 <div class="top_nav">

                    <%@include file="cabecera.jspf" %>

                </div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="dashboard_graph">
                                                        
							<div class="row x_title">
								<div class="col-md-6">
									<h3>Archivos Solicitados <small></small></h3>
								</div>
								  <div id="div-alerta" style="padding: 1px;display:none " class=" alert alert-success pull-right"  >
                                                           
                                                        </div>
							</div>

							<div class="x_content">
                                                            <p class="text-muted font-13 m-b-30">
                                                              
                                                            </p>
                                                            <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                                                            </table>
                                                        </div>

                                                    <div class="clearfix">
                                                        
                                                    </div>
						</div>
					</div>

				</div>
				<br />

				<!-- footer content -->
				<%@include file="footer.jspf" %>
				<!-- /footer content -->
			</div>
			<!-- /page content -->
                        
                        <div id="miModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                          <div class="modal-dialog modal-lg">
                            <div class="modal-content">

                              

                            </div>
                          </div>
                        </div>

		</div>
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
        <!--- librerias paramensaje emergentes--->
        <script type="text/javascript" src="js/notify/pnotify.core.js"></script>
        <script type="text/javascript" src="js/notify/pnotify.buttons.js"></script>
        <script type="text/javascript" src="js/notify/pnotify.nonblock.js"></script>
        <script type="text/javascript">
             var table, band, msj;
        $(document).ready(function() {            
             table =$('#datatable-responsive').DataTable({
                "language": {
                    "url": "css/datatables/Spanish.json"
                },
                "columns": [{ "title": "Cod" },
                            { "title": "Solicitante" },
                              { "title": "Publicacion" },
                              { "title": "Archivo" },
                               { "title": "Fecha de Solicitud" },
                                { "title": "Respuesta" },
                                 { "title": "Fecha de Respuesta" },
                            { "title": "Solicitante" }],
                "columnDefs": [                         
                   {"targets": [ 7 ],
                    "orderable": false,
                    "className": 'text-center'},
                   {"targets": -1,
                    "data": null,
                    "defaultContent": '<button name="btnVerSolicitante" data-toggle="tooltip" data-placement="top" title="VER SOLICITANTE"><a><i class="fa fa-search"></i></a></button>'}
                ],
                "ajax": "ArchivosSolicitadosController?accion=ObtenerTodos",
                "initComplete": function() {
                    $('[data-toggle="tooltip"]').tooltip({
                            trigger: 'hover',
                            html: true
                        });
                    
                }
                
            });  
            table.on('order.dt search.dt', function () {
                    table.column(0, {search: 'applied', order: 'applied'}).nodes().each(function (cell, i) {
                        cell.innerHTML = i + 1;
                    });
                }).draw();
            $('#datatable-responsive tbody').on( 'click', 'button', function () {
                var nombre = $(this).attr('name');
                var data = table.row( $(this).parents('tr') ).data();
                 
                
                if(nombre=='btnVerSolicitante'){
                     $('.modal-lg').css('width', '500px');
                   mostrarModal('VerSolicitanteArchivo.jsp?idArchivoSolicitado='+ data[0]);
                }
                    
                
            } );
            $('#datatable-responsive thead').on( 'click', 'a', function () {
                var nombre = $(this).attr('id');              
                if(nombre=='btnNuevo')
                    
                mostrarModal('nuevaPublicacion.jsp');
            } );
        });        
           /*-------------------------------------------------------------*/
         
         
         /*funcion independiete que MUESTRA EL MODAL*/
         function mostrarModal(url){     
                $('#miModal .modal-content').load(url, function(){                        
                   $('#miModal').modal('show');
                });
         }
         /*-------------------------------------------------------------*/
         
         
         /*funcion independiete que ACTUALIZA LA TABLA*/
          
          /*-------------------------------------------------------------*/
          
          
          /*funcion independiete que OCULTA EL MODAL*/
          function ocultarmodal(){
              $('#miModal').modal('hide');
          }
          
          /*-------------------------------------------------------------*/
          
          /*funcion independiete que ENVIA EL MENSAJE DE CONFIRMACION*/
         
          /*-------------------------------------------------------------*/
        </script>
         <script type="text/javascript">
            var permanotice, tooltip, _alert;
            $(function () {
                new PNotify({
                    title: "IMPORTANTE",
                    text: "RESPONDER SOLICITUDES ",
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

</html>
