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
						<a href="" class="site_title"><i class="fa fa-laptop"></i> <span>REPOSITORIO VIP</span></a>
					</div>
					<div class="clearfix"></div>
                                        <!-- /nombre y logo -->
                                        
					<!-- foto y msj de bienvenida -->
					<div class="profile">
						<div class="profile_pic">
							<img src="images/img.jpg" alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Bienvenido,</span>
							<h2>Edeher Ponce</h2>
						</div>
					</div>
					<!-- /foto y msj de bienvenida -->
                                        
					<br />
                                        
					<!-- sidebar menu -->
					<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>ADMIN</h3>
							<ul class="nav side-menu">
                                                                
								<li><a href="Publicaciones.jsp"><i class="fa fa-table"></i> Publicaciones </a></li>
                                                                <li><a href="AreasInvestigacion.jsp"><i class="fa fa-table"></i> Areas de Investigacion </a></li>
                                                                <li><a href="LineaInvestigacion.jsp"><i class="fa fa-table"></i> Lineas de Investigacion </a></li>
                                                                
                                                                <li><a href="Denuncia.jsp"><i class="fa fa-table"></i> Denuncias </a></li>
                                                                <li><a href="TemasSugeridos.jsp"><i class="fa fa-table"></i>Temas Sugeridos </a></li>
                                                                <li><a href="ArchivosSolicitados.jsp"><i class="fa fa-table"></i> Archivos Solicitados </a></li>
                                                                
								<li><a href="Investigadores.jsp"><i class="fa fa-group"></i> Investigadores </a></li>
                                                                <li><a href="Solicitantes.jsp"><i class="fa fa-group"></i> Solicitantes </a></li>
                                                                <li><a href="Denunciantes.jsp"><i class="fa fa-group"></i> Denunciantes </a></li>
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
						<div class="nav toggle">                                                        
							<a id="menu_toggle">
                                                            <!--
                                                            <i class="fa fa-bars"></i>
                                                            -->
                                                        </a>
						</div>
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
									<h3>PUBLICACIONES <small></small></h3>
								</div>
								<div class="col-md-6">
                                                                    
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
                        
                        <div id="miModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
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
            var table,band,msj;
        $(document).ready(function() {            
            table =$('#datatable-responsive').DataTable({
                "language": {
                    "url": "css/datatables/Spanish.json"
                },
                "columns": [{ "title": "Cod" },
                            { "title": "Area Investigacion" },
                            { "title": "Linea Investigacion" },
                            { "title": "Titulo" },
                            { "title": "Fecha Publicacion" },   
                            { "title": "Fecha de Carga" }, 
                            { "title": "<a href='#'><i class='fa fa-plus'></i></a>" }],
                "columnDefs": [                         
                   {"targets": [ 6 ],
                    "orderable": false,
                    "className": 'text-center'},
                   {"targets": -1,
                    "data": null,
                    "defaultContent": '<button name="btnEditar"><a><i class="fa fa-pencil"></i></a></button>&nbsp&nbsp <button name="btnRechazar"><a><i class="fa fa-remove"></i></a></button>&nbsp&nbsp <button name="btnVerAutores"><a><i class="fa fa-search-plus"></i></a></button>&nbsp&nbsp <button name="btnVerArchivos"><a><i class="fa fa-file-pdf-o"></i></a></button>'}
                ],
                "ajax": "PublicacionController?accion=ObtenerTodos",
                "initComplete": function() {
                    
                }
            });  
            
            $('#datatable-responsive tbody').on( 'click', 'button', function () {
                var nombre = $(this).attr('name');
                var data = table.row( $(this).parents('tr') ).data();
                if(nombre=='btnEditar'){
                    mostrarModal('ModificarPublicacion.jsp?codigo='+data[0]);
                }
                  if(nombre=='btnVerAutores'){
                    mostrarModal('verAutores.jsp?codigo='+data[0])
                   ;
                }                  
                if(nombre=='btnRechazar')
                    alert( "modal RECHAZAR con codigo: "+ data[ 0 ] );                
                if(nombre=='btnVerArchivos'){
                     mostrarModal('verycargarArchivos.jsp?codigo='+data[0])
                   ;  }            
            } );
            
        });        
            /*-------------------------------------------------------------*/
         
         
         /*funcion independiete que MUESTRA EL MODAL*/
         function mostrarModal(url)
         {     
                $('#miModal .modal-content').load(url, function(){                        
                   $('#miModal').modal('show');
                });
         }
         /*-------------------------------------------------------------*/
         
         
         /*funcion independiete que ACTUALIZA LA TABLA*/
          function actualizar()
          {     
            table.ajax.reload(function(){
                table.columns.adjust().draw();                  
            },false);              
          }
          /*-------------------------------------------------------------*/
          
          
          /*funcion independiete que OCULTA EL MODAL*/
          function ocultarmodal()
          {
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
