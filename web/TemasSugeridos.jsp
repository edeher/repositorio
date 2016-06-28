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
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
                                    
                                        <!-- nombre y logo -->
					 <div class="navbar nav_title" style="border: 0;">
                            <a href="" class="site_title"> <img src="images/LOGO UNIA.png" alt="" height="50px" width="40px"/> <span>REPOSITORIO VIP</span></a>
                        </div>
					<div class="clearfix"></div>
                                        <!-- /nombre y logo -->
                                        
					<!-- foto y msj de bienvenida -->
					
					<!-- /foto y msj de bienvenida -->
                                        
					<br />
                                        
					<!-- sidebar menu -->
					<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>ADMIN</h3>
							<ul class="nav side-menu">
                                                                
								 <li><a href="Publicaciones.jsp"><i class="fa fa-file-powerpoint-o"></i> Publicaciones </a></li>

                                    <li><a><i class="fa fa-edit"></i> Tablas<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">
                                            <li><a href="AreasInvestigacion.jsp"><i class="fa fa-table"></i> Areas de Investigacion </a></li>
                                            <li><a href="LineaInvestigacion.jsp"><i class="fa fa-table"></i> Lineas de Investigacion </a></li>
                                            <li><a href="Denuncia.jsp"><i class="fa fa-table"></i> Denuncias </a></li>
                                            <li><a href="TemasSugeridos.jsp"><i class="fa fa-table"></i>Temas Sugeridos </a></li>
                                            <li><a href="ArchivosSolicitados.jsp"><i class="fa fa-table"></i> Archivos Solicitados </a></li>
                                            <li><a href="Facultades.jsp"><i class="fa fa-table"></i>Facultades </a></li>
                                            <li><a href="Escuelas.jsp"><i class="fa fa-table"></i>Escuelas </a></li>
                                        </ul>
                                    </li>


                                    <li><a><i class="fa fa-child"></i> Personas<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">
                                            <li><a href="Investigadores.jsp"><i class="fa fa-group"></i> Investigadores </a></li>
                                            <li><a href="Solicitantes.jsp"><i class="fa fa-group"></i> Solicitantes </a></li>
                                            <li><a href="Denunciantes.jsp"><i class="fa fa-group"></i> Denunciantes </a></li>
                                            <li><a href="Autores.jsp"><i class="fa fa-user"></i> Autores </a></li>
                                        </ul>
                                    </li>



                                    <li><a href="Visitas.jsp"><i class="fa fa-suitcase"></i> Visitas </a></li>
                                    <li><a href="Estadistica.jsp"><i class="fa fa-bar-chart-o"></i> Estadisticas </a></li>

                                                                <!--
								<li><a><i class="fa fa-edit"></i>Mantenimientos <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="">Tecnicos</a>
										</li>
										<li><a href="">Clientes</a>
										</li>
										<li><a href="">Tipo de Servicios</a>
										</li>
									</ul>
								</li>
                                                                -->
							</ul>
						</div>
					</div>
					<!-- /sidebar menu -->

					
				</div>
			</div>
                        <!-- /menu lateral -->
                        
			<!-- top navigation -->
			 <div class="top_nav">

                    <div class="nav_menu">
                        <nav class="" role="navigation">
                            <!--<img src="images/LOGO UNIA.png" alt="" height="70px" width="60px"/>-->

                            <ul class="nav navbar-nav navbar-right">
                                <li class="">
                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src="images/img.jpg" alt="">John Doe
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>

                </div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="dashboard_graph">
                                                        
							<div class="row x_title">
								<div class="col-md-6">
									<h3>TEMAS SUJERIDOS <small></small></h3>
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
				<footer>
					<div class="copyright-info">
						<p class="pull-right">REPOSITORIOVIP - Sistema desarrollado por  <a href="https://twitter.com/Dekinha_deka">Edeher Ponce</a>	
                                                   
						</p>
					</div>
					<div class="clearfix "></div>
				</footer>
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
            var table, band, msj;
        $(document).ready(function() {            
           table =$('#datatable-responsive').DataTable({
                "language": {
                    "url": "css/datatables/Spanish.json"
                },
                "columns": [{ "title": "Codigo" },
                            { "title": "Solicitante" },
                             { "title": "Fecha de Solicitud" },
                             { "title": "Tema" },
                             { "title": "Area Tematica" },
                            { "title": "Opciones" }],
                "columnDefs": [                         
                   {"targets": [ 5 ],
                    "orderable": false,
                    "className": 'text-center'},
                   {"targets": -1,
                    "data": null,
                    "defaultContent": '<button name="btnVerSolicitante" data-toggle="tooltip" data-placement="left" title="Ver Solicitante"><a><i class="fa fa-male"></i></a></button>&nbsp&nbsp <button name="btnEliminar" data-toggle="tooltip" data-placement="top" title="ELIMINAR"><a><i class="fa fa-remove"></i></a></button>'}
                ],
                "ajax": "TemasSugeridosController?accion=ObtenerTodos",
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
                if (nombre == 'btnVerSolicitante') {
               $('.modal-lg').css('width', '500px');
                 mostrarModal('VerSolicitanteTema.jsp?idTemasSugeridos='+ data[0]);
                 }            
                                    
                if (nombre == 'btnEliminar') {
                        if (confirm("seguro que desea eliminar el Tema Sugerido") == true)
                        {
                            $.ajax({url: "TemasSugeridosController?accion=EliminarTema&idTemasSugeridos=" + data[0],
                                    })
                            
                                    .always(function ()
                                    {
                                        actualizar();
                                        alerta("Tema Eliminado", true);
                                    });
                                            
                        }
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
