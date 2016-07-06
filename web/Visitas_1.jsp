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
									<h3>VISITAS <small></small></h3>
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
        
        <script type="text/javascript">
        $(document).ready(function() 
        {            
             var table =$('#datatable-responsive').DataTable({
                "language": {
                    "url": "css/datatables/Spanish.json"
                },
                "columns": [{ "title": "Cod" },
                            { "title": "Publicacion" },
                             { "title": "Archivo" },
                             { "title": "Fecha de Visita" },
                             
                             { "title": "<a href='#'id='btnNuevo'><i class='fa fa-plus' data-toggle='tooltip' data-placement='top' title='NUEVO'></i></a>" }],
                "columnDefs": [                         
                   {"targets": [ 4 ],
                    "orderable": false,
                    "className": 'text-center'},
                   {"targets": -1,
                    "data": null,
                    "defaultContent": '<button name="btnEditar" data-toggle="tooltip" data-placement="left" title="EDITAR"><a><i class="fa fa-pencil"></i></a></button>&nbsp&nbsp <button name="btnRechazar" data-toggle="tooltip" data-placement="right" title="ELIMINAR"><a><i class="fa fa-remove"></i></a></button>'}
                ],
                "ajax": "VisitaController?accion=ObtenerTodos",
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
            $('#datatable-responsive tbody').on( 'click', 'button', function (){
                var nombre = $(this).attr('name');
                var data = table.row( $(this).parents('tr') ).data();
                if(nombre=='btnEditar'){
                    $('#miModal .modal-content').load('ModificarPublicacion.jsp?codigo='+data[0], function(){
                        
                        $('#miModal').modal('show');s
                    });
                }
                                    
                if(nombre=='btnRechazar')
                    alert( "modal RECHAZAR con codigo: "+ data[ 0 ] );                
                if(nombre=='btnAsignar')
                    alert( "modal ASIGNAR con codigo: "+ data[ 0 ] );                
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
          function actualizar(){     
            table.ajax.reload(function(){
                table.columns.adjust().draw();                  
            },false);              
          }
          /*-------------------------------------------------------------*/
          
          
          /*funcion independiete que OCULTA EL MODAL*/
          function ocultarmodal(){
              $('#miModal').modal('hide');
          }
          
          /*-------------------------------------------------------------*/
          
          /*funcion independiete que ENVIA EL MENSAJE DE CONFIRMACION*/
          function alerta(msj,band){
              $("#div-alerta").fadeOut(0,function() {
                    band===true ? 
                        $("#div-alerta").removeClass("alert-danger").addClass("alert-success") : 
                        $("#div-alerta").removeClass("alert-success").addClass("alert-danger");                
                    $("#div-alerta").html("<h5 style='margin: 6px;'>"+
                        "<strong>"+msj+"</strong>"+
                        "</h5>");                
                    $("#div-alerta").fadeIn();                    
                }); 
          }
          /*-------------------------------------------------------------*/
          
        </script>
</body>

</html>
