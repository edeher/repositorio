<%-- 
    Document   : Estadistica
    Created on : 27/05/2016, 02:32:29 PM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.Visita"%>
<%@page import="com.repositoriounia.dao.VisitaDAO"%>
<%@page import="com.repositoriounia.dao.VisitaDAOFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Estadisticas</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
        <link href="css/icheck/flat/green.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->

    </head>
    <%  VisitaDAOFactory fabricate = new VisitaDAOFactory();
        VisitaDAO daote = fabricate.metodoDAO();
        Visita objvi1 = new Visita();
        Visita objvi2 = new Visita();
        Visita objvi3 = new Visita();
        Visita objvi4 = new Visita();
        Visita objvi5 = new Visita();

        objvi1 = daote.top5xitem(1);
        objvi2 = daote.top5xitem(2);
        objvi3 = daote.top5xitem(3);
        objvi4 = daote.top5xitem(4);
        objvi5 = daote.top5xitem(5);
        
       
       


    %>

    <body class="nav-md">

        <div class="container body">


            <div class="main_container">

                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">

                        <div class="navbar nav_title" style="border: 0;">
                            <a href="" class="site_title"> <img src="images/LOGO UNIA.png" alt="" height="50px" width="40px"/> <span>REPOSITORIO VIP</span></a>
                        </div>
                        <div class="clearfix"></div>

                        <!-- menu prile quick info -->

                        <!-- /menu prile quick info -->

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

                        <!-- /menu footer buttons -->

                        <!-- /menu footer buttons -->
                    </div>
                </div>

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

                    <!-- top tiles -->
                    <div class="row tile_count">
                        <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                            <div class="left"></div>
                            <div class="right">
                                <span class="count_top"><i class="fa fa-user"></i> Total Investigadores</span>
                                <%
                                         Visita objcantidad=daote.cantidad("PRINCIPAL");
                                %>
                                <div class="count"><%=objcantidad.getCantidad() %></div>
                                <span class="count_bottom"><i class="green">4% </i> From last Week</span>
                            </div>
                        </div>

                        <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                            <div class="left"></div>
                            <div class="right">
                                <span class="count_top"><i class="fa fa-user"></i> Total Publicaciones</span>
                                <%
                                         Visita objcantidad1=daote.cantidadPubli();
                                %>
                                <div class="count green"><%=objcantidad1.getCantidad() %></div>
                                <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
                            </div>
                        </div>
                        <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                            <div class="left"></div>
                            <div class="right">
                                <span class="count_top"><i class="fa fa-user"></i> Total Visitas</span>
                                 <%
                                         Visita objcantidad2=daote.cantidadVisitas();
                                %>
                                <div class="count"><%=objcantidad2.getCantidad() %></div>
                                <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> From last Week</span>
                            </div>
                        </div>
                        <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                            <div class="left"></div>
                            <div class="right">
                                <span class="count_top"><i class="fa fa-user"></i> Total Solicitudes</span>
                                
                                <div class="count">2,315</div>
                                <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
                            </div>
                        </div>
                        <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                            <div class="left"></div>
                            <div class="right">
                                <span class="count_top"><i class="fa fa-user"></i> Total Sugerencias</span>
                                <div class="count">7,325</div>
                                <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
                            </div>
                        </div>

                    </div>
                    <!-- /top tiles -->



                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>
                                    REPOSITORIO VIP
                                    <small>
                                        Concentración  de datos Estadísticos 
                                    </small>
                                </h3>
                            </div>


                        </div>
                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>las 5 Publicaciones más VIsitadas</h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="mainb" style="height:350px;"></div>

                                    </div>
                                </div>
                            </div>




                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2><%=objvi1.getArchivoPublicacion().getPublicacion().getTitulo()%></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_pie" style="height:400px;"></div>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2><%=objvi2.getArchivoPublicacion().getPublicacion().getTitulo()%></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_pie2" style="height:500px;"></div>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2><%=objvi3.getArchivoPublicacion().getPublicacion().getTitulo()%></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_donut" style="height:500px;"></div>

                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2><%=objvi4.getArchivoPublicacion().getPublicacion().getTitulo()%></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_pyramid" style="height:500px;"></div>

                                    </div>
                                </div>
                            </div>




                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2><%=objvi1.getArchivoPublicacion().getPublicacion().getTitulo()%></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_bar_horizontal" style="height:500px;"></div>

                                    </div>
                                </div>
                            </div>
                            <!-------aca estaba el map-------->


                            <!-------aca estaba el map-------->

                        </div>
                    </div>

                    <!-- footer content -->
                    <footer>
                        <div class="copyright-info">
                            <p class="pull-right">Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a></p>
                        </div>
                        <div class="clearfix"></div>
                    </footer>
                    <!-- /footer content -->

                </div>
                <!-- /page content -->
            </div>

        </div>

        <div id="custom_notifications" class="custom-notifications dsp_none">
            <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
            </ul>
            <div class="clearfix"></div>
            <div id="notif-group" class="tabbed_notifications"></div>
        </div>

        <script src="js/bootstrap.min.js"></script>
        <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
        <script src="js/icheck/icheck.min.js"></script>
        <script src="js/custom.js"></script>

        <!-- echart -->
        <script src="js/echart/echarts-all.js"></script>
        <script src="js/echart/green.js"></script>

        <script>
            $(document).ready(function () {
                //primer grafico
                $.getJSON('VisitaController?accion=top5', function (json) {
                    var categorias = [];
                    var valores = [];
                    var items = [];
                    $.each(json.top5, function (item, obj) {
                        categorias.push(obj.category);
                        valores.push(obj.value);
                        items.push(item + 1);
                    });




                    var myChart9 = echarts.init(document.getElementById('mainb'), theme);
                    myChart9.setOption({
                        title: {text: 'Top 5', subtext: 'Los 5 mas vistos'},
                        tooltip: {trigger: 'axis'},
                        legend: {data: ['visitas']},
                        /* barras de herramientas*/
                        toolbox: {show: true,
                            feature: {
                                restore: {show: true},
                                saveAsImage: {show: true}}
                        },
                        calculable: false,
                        xAxis: [
                            {
                                axisLabel: {
                                    formatter: '{value}',
                                },
                                data: items
                            },
                            {
                                type: 'category',
                                show: false,
                                data: categorias,
                            }
                        ],
                        yAxis: [{
                                type: 'value'
                            }],
                        series: [{
                                name: 'visitas',
                                type: 'bar',
                                itemStyle: {
                                    normal: {
                                        color: function (params) {
                                            // build a color map as your need.
                                            var colorList = [
                                                '#da70d6', '#6495ed', '#333366', '#33CC99', '#CCCCFF', '#3cb371', '#30e0e0', '#40e0d0'
                                            ];
                                            return colorList[params.dataIndex]
                                        },
                                        label: {
                                            position: 'insideTop',
                                            formatter: '{b}\n{c}'
                                        }
                                    }
                                },
                                xAxisIndex: 1,
                                data: valores,
                                markPoint: {
                                    data: [{type: 'max', name: 'Mas visitado con'}, {type: 'min', name: 'Menos visitado con'}]
                                },
                                markLine: {
                                    data: [{type: 'average', name: 'Promedio de Visitas'}]
                                }
                            }]

                    });






                });

/// fin de segundo grafico
//segundo grafico
                $.getJSON('VisitaController?accion=topxid&idPublicacion=' +<%=objvi1.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>, function (json) {

                    var data = [];
                    var titulos=[];
                    $.each(json.top, function (item, obj) {

                        data.push(obj);
                        titulos.push(obj.name);


                    });
                   


                        var myChart = echarts.init(document.getElementById('echart_pie'), theme);
                        myChart.setOption({
                            tooltip: {
                                trigger: 'item',
                                formatter: "{a} <br/>{b} : {c} ({d}%)"
                            },
                            legend: 
                                    {
                                        
                                        
                                orient: 'vertical',
                                x: 'left',
                                //x: 'center',
                                y: 'bottom',
                                data: titulos
                            },
                            /* barras de herramientas*/
                            toolbox: {
                                show: true,
                                feature: {
                                    magicType: {
                                        show: true,
                                        type: ['pie', 'funnel'],
                                        option: {
                                            funnel: {
                                                x: '25%',
                                                width: '50%',
                                                funnelAlign: 'left',
                                                max: 1548
                                            }
                                        }
                                    },
                                    restore: {
                                        show: true
                                    },
                                    saveAsImage: {
                                        show: true
                                    }
                                }
                            },
                            calculable: true,
                            series: [{
                                    name: 'Visitas',
                                    type: 'pie',
                                    radius: '55%',
                                    center: ['50%', '48%'], //left,top
                                    data: data
                                }]
                        
                    });

                });
// fin del segunfo grafico
//tercer grafico


/// fin de segundo grafico

                $.getJSON('VisitaController?accion=topxid&idPublicacion=' +<%=objvi2.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>, function (json) {
                    var valores = [];
                    var titulos = [];
                    var data = [];
                    $.each(json.top, function (item, obj) {

                        data.push(obj);
                        titulos.push(obj.name);
                        valores.push(obj.value);

                    });


                    var myChart = echarts.init(document.getElementById('echart_pie2'), theme);
                    myChart.setOption({
                        tooltip: {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        legend: {
                            orient: 'vertical',
                                x: 'left',
                                //x: 'center',
                                y: 'bottom',
                            data: titulos
                        },
                        /* barras de herramientas*/
                        toolbox: {
                            show: true,
                            feature: {
                                magicType: {
                                    show: true,
                                    type: ['pie', 'funnel']
                                },
                                restore: {
                                    show: true
                                },
                                saveAsImage: {
                                    show: true
                                }
                            }
                        },
                        calculable: true,
                        series: [{
                                name: 'Visitas',
                                type: 'pie',
                                radius: [25, 90],
                                center: ['50%', 170],
                                roseType: 'area',
                                x: '50%',
                                max: 40,
                                sort: 'ascending',
                                data: data
                            }]
                    });
                });


                $.getJSON('VisitaController?accion=topxid&idPublicacion=' +<%=objvi3.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>, function (json) {
                    var valores = [];
                    var titulos = [];
                    var data = [];
                    $.each(json.top, function (item, obj) {

                        data.push(obj);
                        titulos.push(obj.name);
                        valores.push(obj.value);

                    });

                    var myChart = echarts.init(document.getElementById('echart_donut'), theme);
                    myChart.setOption({
                        tooltip: {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        calculable: true,
                        legend: {
                           orient: 'vertical',
                                x: 'left',
                                //x: 'center',
                                y: 'bottom',
                            data: titulos
                        },
                        /* barras de herramientas*/
                        toolbox: {
                            show: true,
                            feature: {
                                magicType: {
                                    show: true,
                                    type: ['pie', 'funnel'],
                                    option: {
                                        funnel: {
                                            x: '25%',
                                            width: '50%',
                                            funnelAlign: 'center',
                                            max: 1548
                                        }
                                    }
                                },
                                restore: {
                                    show: true
                                },
                                saveAsImage: {
                                    show: true
                                }
                            }
                        },
                        series: [{
                                name: 'Visitas',
                                type: 'pie',
                                radius: ['35%', '55%'],
                                itemStyle: {
                                    normal: {
                                        label: {
                                            show: true
                                        },
                                        labelLine: {
                                            show: true
                                        }
                                    },
                                    emphasis: {
                                        label: {
                                            show: true,
                                            position: 'center',
                                            textStyle: {
                                                fontSize: '14',
                                                fontWeight: 'normal'
                                            }
                                        }
                                    }
                                },
                                data: data
                            }]
                    });
                });

                $.getJSON('VisitaController?accion=topxid&idPublicacion=' +<%=objvi4.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>, function (json) {
                    var data = [];
                    var titulos = [];
                    $.each(json.top, function (item, obj) {

                        data.push(obj);
                        titulos.push(obj.name);

                    });



                    var myChart = echarts.init(document.getElementById('echart_pyramid'), theme);
                    myChart.setOption({
                        title: {
                            text: 'Echart Pyramid Graph',
                            subtext: 'Subtitle'
                        },
                        tooltip: {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c}%"
                        },
                        /* barras de herramientas*/
                        toolbox: {
                            show: true,
                            feature: {
                                restore: {
                                    show: true
                                },
                                saveAsImage: {
                                    show: true
                                }
                            }
                        },
                        legend: {
                            data: titulos,
                            orient: 'vertical',
                            x: 'left',
                            y: 'bottom'
                        },
                        calculable: true,
                        series: [{
                                name: 'Visitas',
                                type: 'funnel',
                                width: '40%',
                                data: data
                            }]
                    });

                });
                $.getJSON('VisitaController?accion=topxid&idPublicacion=' +<%=objvi2.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>, function (json) {
                    var valores = [];
                    var titulos = [];
                    var data = [];
                    $.each(json.top, function (item, obj) {

                        data.push(obj);
                        titulos.push(obj.name);
                        valores.push(obj.value);

                    });


                    var myChart = echarts.init(document.getElementById('echart_bar_horizontal'), theme);
                    myChart.setOption({
                        title: {
                            text: 'Bar Graph',
                            subtext: 'Graph subtitle'
                        },
                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            show: false,
                            data: titulos
                        },
                        /* barras de herramientas*/
                        toolbox: {
                            show: true,
                            feature: {
                                restore: {
                                    show: true
                                },
                                saveAsImage: {
                                    show: true
                                }
                            }
                        },
                        calculable: true,
                        xAxis: [{
                                type: 'value',
                                boundaryGap: [0, 0.01]
                            }],
                        yAxis: [{
                                type: 'category',
                                data: titulos
                            }],
                        series: [
                            {
                                name: 'visitas',
                                type: 'bar',
                                data: valores
                            }]
                    });

                });





                //fin del ready
            })
        </script>
    </body>

</html>
