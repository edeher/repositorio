<%-- 
    Document   : Estadistica
    Created on : 27/05/2016, 02:32:29 PM
    Author     : Mi Laptop
--%>

<%@page import="com.repositoriounia.modelo.NombreMes"%>
<%@page import="java.util.Date"%>
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
         Date fecha=new Date();
              int mes=(fecha.getMonth());
            NombreMes nombre=new NombreMes();
        
        Visita objvi1 = new Visita();
        Visita objvi2 = new Visita();
        Visita objvi3 = new Visita();
        Visita objvi4 = new Visita();
        Visita objvi5 = new Visita();

        objvi1 = daote.top5xitemxmes(1, mes);
        objvi2 = daote.top5xitemxmes(2, mes);
        objvi3 = daote.top5xitemxmes(3, mes);
        objvi4 = daote.top5xitemxmes(4, mes);
        objvi5 = daote.top5xitemxmes(5, mes);
        
         if(objvi1==null){
             objvi1 = new Visita();
        objvi1.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
        objvi1.getArchivoPublicacion().getPublicacion().setTitulo("") ; 
        }
          if(objvi2==null){
              objvi2 = new Visita();
        objvi2.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
        objvi2.getArchivoPublicacion().getPublicacion().setTitulo("") ; 
        }
           if(objvi3==null){
               objvi3 = new Visita();
        objvi3.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
        objvi3.getArchivoPublicacion().getPublicacion().setTitulo("") ; 
        }
            if(objvi4==null){
                objvi4 = new Visita();
        objvi4.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
        objvi4.getArchivoPublicacion().getPublicacion().setTitulo("") ; 
        }
             if(objvi5==null){
              objvi5 = new Visita();
        objvi5.getArchivoPublicacion().getPublicacion().setIdPublicacion(0);
         objvi5.getArchivoPublicacion().getPublicacion().setTitulo("") ;     
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
                                    Visita objcantidad4= daote.cantidadarchivosSolictados();
                                %>
                                <div class="count"><%=objcantidad4.getCantidad()%></div>
                                 </div>
                        </div>

                    </div>
                    <!-- /top tiles -->

<div class="col-md-12 col-sm-12 col-xs-12" style="text-align:center;">
                                                <ul class="pagination pagination-split">
                                                    <li><a href="Estadistica2.jsp"><%=nombre.nombremes(fecha.getMonth()) %></a>
                                                    </li>
                                                    <li><a href="Estadistica3.jsp"><%=nombre.nombremes(fecha.getMonth()-1) %></a>
                                                    </li>
                                                    <li><a href="Estadistica4.jsp"><%=nombre.nombremes(fecha.getMonth()-2) %></a>
                                                    </li>
                                                    
                                                </ul>
                                            </div>

                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>
                                    REPOSITORIO VIP : Concentración  de datos Estadísticos 
                                    <small>
                                        
                                    </small>
                                </h3>
                            </div>


                        </div>
                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>las 5 Publicaciones más VIsitadas en el mes de <%=nombre.nombremes(fecha.getMonth()-1) %></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="mainb" style="height:400px;"></div>

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


                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="block_content">
                                        <h2> <p class="excerpt">
                                            <%=objvi4.getArchivoPublicacion().getPublicacion().getTitulo()%>
                                            </p></h2>
                                        
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_pyramid" style="height:400px;"></div>

                                    </div>
                                </div>
                            </div>




                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="x_panel">
                                    <div class="block_content">
                                        <h2> <p class="excerpt">
                                            <%=objvi5.getArchivoPublicacion().getPublicacion().getTitulo()%>
                                            </p></h2>
                                        
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div id="echart_bar_horizontal" style="height:400px;"></div>

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
                $.getJSON('VisitaController?accion=top5_ultimoxmes&mes='+<%=mes%>, function (json) {
                    var categorias = [];
                    var valores = [];
                    var items = [];
                    var obje = [];
                    $.each(json.top5, function (item, obj) {
                        obje.push(obj);
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
                        grid: {
                            x: 80,
                            y: 130,
                            x2: 20,
                            y2: 25
                        },
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
                                        label : {show: true, position: 'inside'}
                                    }
                                },
                                xAxisIndex: 1,
                                data: valores,
                                markPoint: {
                                    data: [
                                        {type: 'max', name: 'Mas visitado con'}, 
                                        {type: 'min', name: 'Menos visitado con'}]
                                },
                                markLine: {
                                    data: [{type: 'average', name: 'Promedio de Visitas'}]
                                }

                            },
                            {
                                name: 'visitas',
                                type: 'pie',
                                tooltip: {
                                    trigger: 'axis',
                                    formatter: '{a} <br/>{b} : {c} ({d}%)'

                                },
                                center: [600, 60],
                                radius: [0, 60],
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
                                data: obje
                            }

                        ]

                    });






                });

/// fin de segundo grafico
//segundo grafico
                $.getJSON('VisitaController?accion=topxidxmes&idPublicacion=' +<%=objvi1.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>+'&mes='+<%=mes%>, function (json) {

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

                $.getJSON('VisitaController?accion=topxidxmes&idPublicacion=' +<%=objvi2.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>+'&mes='+<%=mes%>, function (json) {
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


                $.getJSON('VisitaController?accion=topxidxmes&idPublicacion=' +<%=objvi3.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>+'&mes='+<%=mes%>, function (json) {
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

                $.getJSON('VisitaController?accion=topxidxmes&idPublicacion=' +<%=objvi4.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>+'&mes='+<%=mes%>, function (json) {
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
                            trigger: 'params',
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
                $.getJSON('VisitaController?accion=topxidxmes&idPublicacion=' +<%=objvi5.getArchivoPublicacion().getPublicacion().getIdPublicacion()%>+'&mes='+<%=mes%>, function (json) {
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
