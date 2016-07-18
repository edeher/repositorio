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
    <%
        VisitaDAOFactory fabricate = new VisitaDAOFactory();
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

        if (objvi1 == null) {
            objvi1 = new Visita();
            objvi1.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
            objvi1.getArchivoPublicacion().getPublicacion().setTitulo("");
        }
        if (objvi2 == null) {
            objvi2 = new Visita();
            objvi2.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
            objvi2.getArchivoPublicacion().getPublicacion().setTitulo("");
        }
        if (objvi3 == null) {
            objvi3 = new Visita();
            objvi3.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
            objvi3.getArchivoPublicacion().getPublicacion().setTitulo("");
        }
        if (objvi4 == null) {
            objvi4 = new Visita();
            objvi4.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
            objvi4.getArchivoPublicacion().getPublicacion().setTitulo("");
        }
        if (objvi5 == null) {
            objvi5 = new Visita();
            objvi5.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
            objvi5.getArchivoPublicacion().getPublicacion().setTitulo("");
        }


    %>

    <body class="nav-md">

        <div class="container body">


            <div class="main_container">

                <%@include file="menu.jspf" %>

                <!-- top navigation -->
                <div class="top_nav">

                    <%@include file="cabecera.jspf" %>

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
                                <%                                    Visita objcantidad = daote.cantidad("PRINCIPAL");
                                %>
                                <div class="count"><%=objcantidad.getCantidad()%></div>
                            </div>
                        </div>

                        <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                            <div class="left"></div>
                            <div class="right">
                                <span class="count_top"><i class="fa fa-paypal"></i> Total Publicaciones</span>
                                <%
                                    Visita objcantidad1 = daote.cantidadPubli();
                                %>
                                <div class="count green"><%=objcantidad1.getCantidad()%></div>
                            </div>
                        </div>
                        <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                            <div class="left"></div>
                            <div class="right">
                                <span class="count_top"><i class="fa fa-send"></i> Total Visitas</span>
                                <%
                                    Visita objcantidad2 = daote.cantidadVisitas();
                                %>
                                <div class="count"><%=objcantidad2.getCantidad()%></div>
                            </div>
                        </div>
                        <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                            <div class="left"></div>
                            <div class="right">
                                <span class="count_top"><i class="fa fa-book"></i> Temas Sugeridos</span>
                                <%
                                    Visita objcantidad3 = daote.cantidadtemasSolicitados();
                                %>
                                <div class="count green"><%=objcantidad3.getCantidad()%></div>
                            </div>
                        </div>
                        <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                            <div class="left"></div>
                            <div class="right">
                                <span class="count_top"><i class="fa fa-cloud-download"></i> Archivos Solicitados</span>
                                <%
                                    Visita objcantidad4 = daote.cantidadarchivosSolictados();
                                %>
                                <div class="count"><%=objcantidad4.getCantidad()%></div>
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

                                    </small>
                                </h3>
                            </div>


                        </div>
                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="dashboard_graph x_panel">
                                    <div class="row x_title">
                                        <div class="col-md-6">
                                            <h3><small>Publicaciones por Año</small></h3>
                                        </div>

                                    </div>
                                    <div class="x_content">
                                        <div class="demo-container" style="height:450px">
                                            <div id="mainb" class="demo-placeholder" style="width: 100%; height:100%;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>




                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="block_content">
                                        <h2> <p class="excerpt">
                                                <%=objvi1.getArchivoPublicacion().getPublicacion().getTitulo()%>
                                            </p></h2>

                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_pie" style="height:400px;"></div>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="block_content">
                                        <h2> <p class="excerpt">
                                                <%=objvi2.getArchivoPublicacion().getPublicacion().getTitulo()%>
                                            </p></h2>

                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_pie2" style="height:400px;"></div>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="block_content">
                                        <h2> <p class="excerpt">
                                                <%=objvi3.getArchivoPublicacion().getPublicacion().getTitulo()%>
                                            </p></h2>

                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_donut" style="height:400px;"></div>

                                    </div>
                                </div>
                            </div>








                            <!-------aca estaba el map-------->


                            <!-------aca estaba el map-------->

                        </div>
                    </div>

                    <!-- footer content -->
                    <%@include file="footer.jspf" %>
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
                $.getJSON('VisitaController?accion=publicacionestotaxpoanio', function (json) {
                    var categorias = [];
                    var valores = [];

                    var obje = [];
                    $.each(json.totalxanio, function (item, obj) {
                        obje.push(obj);
                        categorias.push(obj.mes);
                        valores.push(obj.value);

                    });

                    var myChart9 = echarts.init(document.getElementById('mainb'), theme);
                    myChart9.setOption({
                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data: ['Publicaciones']
                        },
                        toolbox: {
                            show: true,
                            feature: {
                                dataView: {show: true, readOnly: false},
                                magicType: {show: true, type: ['line', 'bar']},
                                restore: {show: true},
                                saveAsImage: {show: true}
                            }
                        },
                        calculable: true,
                        xAxis: [
                            {
                                type: 'category',
                                boundaryGap: false,
                                data: categorias
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value'
                            }
                        ],
                        series: [
                            {
                                name: 'Publicaciones',
                                type: 'line',
                                stack: '总量',
                                data: valores
                            }
                        ]

                    });






                });

/// fin de segundo grafico
//segundo grafico
                $.getJSON('VisitaController?accion=topxid&idPublicacion=' +<%=objvi1.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>, function (json) {

                    var data = [];
                    var titulos = [];
                    $.each(json.top, function (item, obj) {

                        data.push(obj);
                        titulos.push(obj.name);


                    });



                    var myChart = echarts.init(document.getElementById('echart_pie'), theme);
                    myChart.setOption({
                        tooltip: {
                            trigger: 'params',
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
                                itemStyle: {
                                    normal: {
                                        label: {
                                            position: 'inner',
                                            formatter: function (params) {
                                                return (params.percent - 0).toFixed(0) + '%'
                                            }
                                        },
                                        labelLine: {
                                            show: false
                                        }
                                    },
                                    emphasis: {
                                        label: {
                                            show: true,
                                            formatter: "{b}\n{d}%"
                                        }
                                    }

                                },
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
                            trigger: 'params',
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
                                radius: [45, 100],
                                center: ['50%', 170],
                                roseType: 'area',
                                x: '50%',
                                max: 40,
                                sort: 'ascending',
                                itemStyle: {
                                    normal: {
                                        label: {
                                            position: 'inner',
                                            formatter: function (params) {
                                                return (params.percent - 0).toFixed(0) + '%'
                                            }
                                        },
                                        labelLine: {
                                            show: false
                                        }
                                    },
                                    emphasis: {
                                        label: {
                                            show: true,
                                            formatter: "{b}\n{d}%"
                                        }
                                    }

                                },
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
                            trigger: 'params',
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
                                center: ['60%', '40%'],
                                itemStyle: {
                                    normal: {
                                        label: {
                                            position: 'inner',
                                            formatter: function (params) {
                                                return (params.percent - 0).toFixed(0) + '%'
                                            }
                                        },
                                        labelLine: {
                                            show: false
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


                //fin del ready
            })
        </script>
    </body>

</html>
