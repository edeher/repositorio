<%-- 
    Document   : Estadistica
    Created on : 27/05/2016, 02:32:29 PM
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
          <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
              <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
              <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
              <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout">
              <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
          </div>
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
              <span class="count_top"><i class="fa fa-user"></i> Total Users</span>
              <div class="count">2500</div>
              <span class="count_bottom"><i class="green">4% </i> From last Week</span>
            </div>
          </div>
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-clock-o"></i> Average Time</span>
              <div class="count">123.50</div>
              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> From last Week</span>
            </div>
          </div>
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> Total Males</span>
              <div class="count green">2,500</div>
              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
            </div>
          </div>
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> Total Females</span>
              <div class="count">4,567</div>
              <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> From last Week</span>
            </div>
          </div>
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> Total Collections</span>
              <div class="count">2,315</div>
              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
            </div>
          </div>
          <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> Total Connections</span>
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
                    Echarts
                    <small>
                        Some examples to get you started
                    </small>
                </h3>
            </div>

          
          </div>
          <div class="clearfix"></div>

          <div class="row">
            <div class="col-md-8 col-sm-8 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Bar Graph</h2>
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
                  <h2>Mini Pie</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_mini_pie" style="height:350px;"></div>

                </div>
              </div>
            </div>


            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Pie Graph</h2>
                 <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_pie" style="height:350px;"></div>

                </div>
              </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Pie Area</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_pie2" style="height:350px;"></div>

                </div>
              </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Donut Graph</h2>
                 <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_donut" style="height:350px;"></div>

                </div>
              </div>
            </div>


            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Scatter Graph</h2>
                 <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_scatter" style="height:350px;"></div>

                </div>
              </div>
            </div>

            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Line Graph</h2>
                 <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_line" style="height:350px;"></div>

                </div>
              </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Horizontal Bar</h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_bar_horizontal" style="height:370px;"></div>

                </div>
              </div>
            </div>
<!-------aca estaba el map-------->
           

<!-------aca estaba el map-------->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Pyramid</h2>
                 <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_pyramid" style="height:370px;"></div>

                </div>
              </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Sonar</h2>
                 <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_sonar" style="height:370px;"></div>

                </div>
              </div>
            </div>


            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Guage</h2>
                 <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">

                  <div id="echart_guage" style="height:370px;"></div>

                </div>
              </div>
            </div>


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
    var myChart9 = echarts.init(document.getElementById('mainb'), theme);
    myChart9.setOption({
        
      title: {
        text: 'Graph title',
        subtext: 'Graph Sub-text'
      },
      //theme : theme,
      tooltip: {
        trigger: 'axis'
      },
      legend: {
        data: ['sales', 'purchases']
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
      calculable: false,
      xAxis: [{
        type: 'category',
        data: ['1?', '2?', '3?', '4?', '5?', '6?', '7?', '8?', '9?', '10?', '11?', '12?']
      }],
      yAxis: [{
        type: 'value'
      }],
      series: [{
        name: 'sales',
        type: 'bar',
        data: [2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
        markPoint: {
          data: [{
            type: 'max',
            name: '???'
          }, {
            type: 'min',
            name: '???'
          }]
        },
        markLine: {
          data: [{
            type: 'average',
            name: '???'
          }]
        }
      }, {
        name: 'purchases',
        type: 'bar',
        data: [2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
        markPoint: {
          data: [{
            name: 'sales',
            value: 182.2,
            xAxis: 7,
            yAxis: 183,
            symbolSize: 18
          }, {
            name: 'purchases',
            value: 2.3,
            xAxis: 11,
            yAxis: 3
          }]
        },
        markLine: {
          data: [{
            type: 'average',
            name: '???'
          }]
        }
      }]
    });


    var myChart = echarts.init(document.getElementById('echart_sonar'), theme);
    myChart.setOption({
      title: {
        text: 'Budget vs spending',
        subtext: 'subtext'
      },
      tooltip: {
        trigger: 'axis'
      },
      legend: {
        orient: 'vertical',
        x: 'right',
        y: 'bottom',
        data: ['（Allocated Budget）', 'Actual Spending）']
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
      polar: [{
        indicator: [{
          text: 'sales',
          max: 6000
        }, {
          text: 'Administration',
          max: 16000
        }, {
          text: 'Information Techology',
          max: 30000
        }, {
          text: 'Customer Support',
          max: 38000
        }, {
          text: 'Development',
          max: 52000
        }, {
          text: 'Marketing',
          max: 25000
        }]
      }],
      calculable: true,
      series: [{
        name: 'Budget vs spending',
        type: 'radar',
        data: [{
          value: [4300, 10000, 28000, 35000, 50000, 19000],
          name: 'Allocated Budget'
        }, {
          value: [5000, 14000, 28000, 31000, 42000, 21000],
          name: 'Actual Spending'
        }]
      }]
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
        data: ['Something #1', 'Something #2', 'Something #3', 'Something #4', 'Something #5'],
        orient: 'vertical',
        x: 'left',
        y: 'bottom'
      },
      calculable: true,
      series: [{
        name: 'alguna cosa',
        type: 'funnel',
        width: '40%',
        data: [{
          value: 60,
          name: 'Something #1'
        }, {
          value: 40,
          name: 'Something #2'
        }, {
          value: 20,
          name: 'Something #3'
        }, {
          value: 80,
          name: 'Something #4'
        }, {
          value: 100,
          name: 'Something #5'
        }]
      }]
    });


    var myChart = echarts.init(document.getElementById('echart_guage'), theme);
    myChart.setOption({
      tooltip: {
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
      series: [{
        name: 'Performance',
        type: 'gauge',
        center: ['50%', '50%'],
        radius: [0, '75%'],
        startAngle: 140,
        endAngle: -140,
        min: 0,
        max: 100,
        precision: 0,
        splitNumber: 10,
        axisLine: {
          show: true,
          lineStyle: {
            color: [
              [0.2, 'lightgreen'],
              [0.4, 'orange'],
              [0.8, 'skyblue'],
              [1, '#ff4500']
            ],
            width: 30
          }
        },
        axisTick: {
          show: true,
          splitNumber: 5,
          length: 8,
          lineStyle: {
            color: '#eee',
            width: 1,
            type: 'solid'
          }
        },
        axisLabel: {
          show: true,
          formatter: function(v) {
            switch (v + '') {
              case '10':
                return 'a';
              case '30':
                return 'b';
              case '60':
                return 'c';
              case '90':
                return 'd';
              default:
                return '';
            }
          },
          textStyle: {
            color: '#333'
          }
        },
        splitLine: {
          show: true,
          length: 30,
          lineStyle: {
            color: '#eee',
            width: 2,
            type: 'solid'
          }
        },
        pointer: {
          length: '80%',
          width: 8,
          color: 'auto'
        },
        title: {
          show: true,
          offsetCenter: ['-65%', -10],
          textStyle: {
            color: '#333',
            fontSize: 15
          }
        },
        detail: {
          show: true,
          backgroundColor: 'rgba(0,0,0,0)',
          borderWidth: 0,
          borderColor: '#ccc',
          width: 100,
          height: 40,
          offsetCenter: ['-60%', 10],
          formatter: '{value}%',
          textStyle: {
            color: 'auto',
            fontSize: 30
          }
        },
        data: [{
          value: 50,
          name: 'Performance'
        }]
      }]
    });


    var myChart = echarts.init(document.getElementById('echart_line'), theme);
    myChart.setOption({
      title: {
        text: 'Line Graph',
        subtext: 'Subtitle'
      },
      tooltip: {
        trigger: 'axis'
      },
      legend: {
        data: ['Intent', 'Pre-order', 'Deal']
      },
      /* barras de herramientas*/
      toolbox: {
        show: true,
        feature: {
          magicType: {
            show: true,
            type: ['line', 'bar', 'stack', 'tiled']
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
      xAxis: [{
        type: 'category',
        boundaryGap: false,
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
      }],
      yAxis: [{
        type: 'value'
      }],
      series: [{
        name: 'Deal',
        type: 'line',
        smooth: true,
        itemStyle: {
          normal: {
            areaStyle: {
              type: 'default'
            }
          }
        },
        data: [10, 12, 21, 54, 260, 830, 710]
      }, {
        name: 'Pre-order',
        type: 'line',
        smooth: true,
        itemStyle: {
          normal: {
            areaStyle: {
              type: 'default'
            }
          }
        },
        data: [30, 182, 434, 791, 390, 30, 10]
      }, {
        name: 'Intent',
        type: 'line',
        smooth: true,
        itemStyle: {
          normal: {
            areaStyle: {
              type: 'default'
            }
          }
        },
        data: [1320, 1132, 601, 234, 120, 90, 20]
      }]
    });


    var myChart = echarts.init(document.getElementById('echart_scatter'), theme);
    myChart.setOption({
      title: {
        text: 'Scatter Graph',
        subtext: 'Heinz  2003'
      },
      tooltip: {
        trigger: 'axis',
        showDelay: 0,
        axisPointer: {
          type: 'cross',
          lineStyle: {
            type: 'dashed',
            width: 1
          }
        }
      },
      legend: {
        data: ['Data2', 'Data1']
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
      xAxis: [{
        type: 'value',
        scale: true,
        axisLabel: {
          formatter: '{value} cm'
        }
      }],
      yAxis: [{
        type: 'value',
        scale: true,
        axisLabel: {
          formatter: '{value} kg'
        }
      }],
      series: [{
        name: 'Data1',
        type: 'scatter',
        tooltip: {
          trigger: 'item',
          formatter: function(params) {
            if (params.value.length > 1) {
              return params.seriesName + ' :<br/>' + params.value[0] + 'cm ' + params.value[1] + 'kg ';
            } else {
              return params.seriesName + ' :<br/>' + params.name + ' : ' + params.value + 'kg ';
            }
          }
        },
        data: [
          [161.2, 51.6],
          [167.5, 59.0],
          [159.5, 49.2],
          [157.0, 63.0],
          [155.8, 53.6],
          [170.0, 59.0],
          [159.1, 47.6],
          [166.0, 69.8],
          [176.2, 66.8],
          [160.2, 75.2],
          [172.5, 55.2],
          [170.9, 54.2],
          [172.9, 62.5],
          [153.4, 42.0],
          [160.0, 50.0],
          [147.2, 49.8],
          [168.2, 49.2],
          [175.0, 73.2],
          [157.0, 47.8],
          [167.6, 68.8],
          [159.5, 50.6],
          [175.0, 82.5],
          [166.8, 57.2],
          [176.5, 87.8],
          [170.2, 72.8],
          [174.0, 54.5],
          [173.0, 59.8],
          [179.9, 67.3],
          [170.5, 67.8],
          [160.0, 47.0],
          [154.4, 46.2],
          [162.0, 55.0],
          [176.5, 83.0],
          [160.0, 54.4],
          [152.0, 45.8],
          [162.1, 53.6],
          [170.0, 73.2],
          [160.2, 52.1],
          [161.3, 67.9],
          [166.4, 56.6],
          [168.9, 62.3],
          [163.8, 58.5],
          [167.6, 54.5],
          [160.0, 50.2],
          [161.3, 60.3],
          [167.6, 58.3],
          [165.1, 56.2],
          [160.0, 50.2],
          [170.0, 72.9],
          [157.5, 59.8],
          [167.6, 61.0],
          [160.7, 69.1],
          [163.2, 55.9],
          [152.4, 46.5],
          [157.5, 54.3],
          [168.3, 54.8],
          [180.3, 60.7],
          [165.5, 60.0],
          [165.0, 62.0],
          [164.5, 60.3],
          [156.0, 52.7],
          [160.0, 74.3],
          [163.0, 62.0],
          [165.7, 73.1],
          [161.0, 80.0],
          [162.0, 54.7],
          [166.0, 53.2],
          [174.0, 75.7],
          [172.7, 61.1],
          [167.6, 55.7],
          [151.1, 48.7],
          [164.5, 52.3],
          [163.5, 50.0],
          [152.0, 59.3],
          [169.0, 62.5],
          [164.0, 55.7],
          [161.2, 54.8],
          [155.0, 45.9],
          [170.0, 70.6],
          [176.2, 67.2],
          [170.0, 69.4],
          [162.5, 58.2],
          [170.3, 64.8],
          [164.1, 71.6],
          [169.5, 52.8],
          [163.2, 59.8],
          [154.5, 49.0],
          [159.8, 50.0],
          [173.2, 69.2],
          [170.0, 55.9],
          [161.4, 63.4],
          [169.0, 58.2],
          [166.2, 58.6],
          [159.4, 45.7],
          [162.5, 52.2],
          [159.0, 48.6],
          [162.8, 57.8],
          [159.0, 55.6],
          [179.8, 66.8],
          [162.9, 59.4],
          [161.0, 53.6],
          [151.1, 73.2],
          [168.2, 53.4],
          [168.9, 69.0],
          [173.2, 58.4],
          [171.8, 56.2],
          [178.0, 70.6],
          [164.3, 59.8],
          [163.0, 72.0],
          [168.5, 65.2],
          [166.8, 56.6],
          [172.7, 105.2],
          [163.5, 51.8],
          [169.4, 63.4],
          [167.8, 59.0],
          [159.5, 47.6],
          [167.6, 63.0],
          [161.2, 55.2],
          [160.0, 45.0],
          [163.2, 54.0],
          [162.2, 50.2],
          [161.3, 60.2],
          [149.5, 44.8],
          [157.5, 58.8],
          [163.2, 56.4],
          [172.7, 62.0],
          [155.0, 49.2],
          [156.5, 67.2],
          [164.0, 53.8],
          [160.9, 54.4],
          [162.8, 58.0],
          [167.0, 59.8],
          [160.0, 54.8],
          [160.0, 43.2],
          [168.9, 60.5],
          [158.2, 46.4],
          [156.0, 64.4],
          [160.0, 48.8],
          [167.1, 62.2],
          [158.0, 55.5],
          [167.6, 57.8],
          [156.0, 54.6],
          [162.1, 59.2],
          [173.4, 52.7],
          [159.8, 53.2],
          [170.5, 64.5],
          [159.2, 51.8],
          [157.5, 56.0],
          [161.3, 63.6],
          [162.6, 63.2],
          [160.0, 59.5],
          [168.9, 56.8],
          [165.1, 64.1],
          [162.6, 50.0],
          [165.1, 72.3],
          [166.4, 55.0],
          [160.0, 55.9],
          [152.4, 60.4],
          [170.2, 69.1],
          [162.6, 84.5],
          [170.2, 55.9],
          [158.8, 55.5],
          [172.7, 69.5],
          [167.6, 76.4],
          [162.6, 61.4],
          [167.6, 65.9],
          [156.2, 58.6],
          [175.2, 66.8],
          [172.1, 56.6],
          [162.6, 58.6],
          [160.0, 55.9],
          [165.1, 59.1],
          [182.9, 81.8],
          [166.4, 70.7],
          [165.1, 56.8],
          [177.8, 60.0],
          [165.1, 58.2],
          [175.3, 72.7],
          [154.9, 54.1],
          [158.8, 49.1],
          [172.7, 75.9],
          [168.9, 55.0],
          [161.3, 57.3],
          [167.6, 55.0],
          [165.1, 65.5],
          [175.3, 65.5],
          [157.5, 48.6],
          [163.8, 58.6],
          [167.6, 63.6],
          [165.1, 55.2],
          [165.1, 62.7],
          [168.9, 56.6],
          [162.6, 53.9],
          [164.5, 63.2],
          [176.5, 73.6],
          [168.9, 62.0],
          [175.3, 63.6],
          [159.4, 53.2],
          [160.0, 53.4],
          [170.2, 55.0],
          [162.6, 70.5],
          [167.6, 54.5],
          [162.6, 54.5],
          [160.7, 55.9],
          [160.0, 59.0],
          [157.5, 63.6],
          [162.6, 54.5],
          [152.4, 47.3],
          [170.2, 67.7],
          [165.1, 80.9],
          [172.7, 70.5],
          [165.1, 60.9],
          [170.2, 63.6],
          [170.2, 54.5],
          [170.2, 59.1],
          [161.3, 70.5],
          [167.6, 52.7],
          [167.6, 62.7],
          [165.1, 86.3],
          [162.6, 66.4],
          [152.4, 67.3],
          [168.9, 63.0],
          [170.2, 73.6],
          [175.2, 62.3],
          [175.2, 57.7],
          [160.0, 55.4],
          [165.1, 104.1],
          [174.0, 55.5],
          [170.2, 77.3],
          [160.0, 80.5],
          [167.6, 64.5],
          [167.6, 72.3],
          [167.6, 61.4],
          [154.9, 58.2],
          [162.6, 81.8],
          [175.3, 63.6],
          [171.4, 53.4],
          [157.5, 54.5],
          [165.1, 53.6],
          [160.0, 60.0],
          [174.0, 73.6],
          [162.6, 61.4],
          [174.0, 55.5],
          [162.6, 63.6],
          [161.3, 60.9],
          [156.2, 60.0],
          [149.9, 46.8],
          [169.5, 57.3],
          [160.0, 64.1],
          [175.3, 63.6],
          [169.5, 67.3],
          [160.0, 75.5],
          [172.7, 68.2],
          [162.6, 61.4],
          [157.5, 76.8],
          [176.5, 71.8],
          [164.4, 55.5],
          [160.7, 48.6],
          [174.0, 66.4],
          [163.8, 67.3]
        ],
        markPoint: {
          data: [{
            type: 'max',
            name: 'Max'
          }, {
            type: 'min',
            name: 'Min'
          }]
        },
        markLine: {
          data: [{
            type: 'average',
            name: 'Mean'
          }]
        }
      }, {
        name: 'Data2',
        type: 'scatter',
        tooltip: {
          trigger: 'item',
          formatter: function(params) {
            if (params.value.length > 1) {
              return params.seriesName + ' :<br/>' + params.value[0] + 'cm ' + params.value[1] + 'kg ';
            } else {
              return params.seriesName + ' :<br/>' + params.name + ' : ' + params.value + 'kg ';
            }
          }
        },
        data: [
          [174.0, 65.6],
          [175.3, 71.8],
          [193.5, 80.7],
          [186.5, 72.6],
          [187.2, 78.8],
          [181.5, 74.8],
          [184.0, 86.4],
          [184.5, 78.4],
          [175.0, 62.0],
          [184.0, 81.6],
          [180.0, 76.6],
          [177.8, 83.6],
          [192.0, 90.0],
          [176.0, 74.6],
          [174.0, 71.0],
          [184.0, 79.6],
          [192.7, 93.8],
          [171.5, 70.0],
          [173.0, 72.4],
          [176.0, 85.9],
          [176.0, 78.8],
          [180.5, 77.8],
          [172.7, 66.2],
          [176.0, 86.4],
          [173.5, 81.8],
          [178.0, 89.6],
          [180.3, 82.8],
          [180.3, 76.4],
          [164.5, 63.2],
          [173.0, 60.9],
          [183.5, 74.8],
          [175.5, 70.0],
          [188.0, 72.4],
          [189.2, 84.1],
          [172.8, 69.1],
          [170.0, 59.5],
          [182.0, 67.2],
          [170.0, 61.3],
          [177.8, 68.6],
          [184.2, 80.1],
          [186.7, 87.8],
          [171.4, 84.7],
          [172.7, 73.4],
          [175.3, 72.1],
          [180.3, 82.6],
          [182.9, 88.7],
          [188.0, 84.1],
          [177.2, 94.1],
          [172.1, 74.9],
          [167.0, 59.1],
          [169.5, 75.6],
          [174.0, 86.2],
          [172.7, 75.3],
          [182.2, 87.1],
          [164.1, 55.2],
          [163.0, 57.0],
          [171.5, 61.4],
          [184.2, 76.8],
          [174.0, 86.8],
          [174.0, 72.2],
          [177.0, 71.6],
          [186.0, 84.8],
          [167.0, 68.2],
          [171.8, 66.1],
          [182.0, 72.0],
          [167.0, 64.6],
          [177.8, 74.8],
          [164.5, 70.0],
          [192.0, 101.6],
          [175.5, 63.2],
          [171.2, 79.1],
          [181.6, 78.9],
          [167.4, 67.7],
          [181.1, 66.0],
          [177.0, 68.2],
          [174.5, 63.9],
          [177.5, 72.0],
          [170.5, 56.8],
          [182.4, 74.5],
          [197.1, 90.9],
          [180.1, 93.0],
          [175.5, 80.9],
          [180.6, 72.7],
          [184.4, 68.0],
          [175.5, 70.9],
          [180.6, 72.5],
          [177.0, 72.5],
          [177.1, 83.4],
          [181.6, 75.5],
          [176.5, 73.0],
          [175.0, 70.2],
          [174.0, 73.4],
          [165.1, 70.5],
          [177.0, 68.9],
          [192.0, 102.3],
          [176.5, 68.4],
          [169.4, 65.9],
          [182.1, 75.7],
          [179.8, 84.5],
          [175.3, 87.7],
          [184.9, 86.4],
          [177.3, 73.2],
          [167.4, 53.9],
          [178.1, 72.0],
          [168.9, 55.5],
          [157.2, 58.4],
          [180.3, 83.2],
          [170.2, 72.7],
          [177.8, 64.1],
          [172.7, 72.3],
          [165.1, 65.0],
          [186.7, 86.4],
          [165.1, 65.0],
          [174.0, 88.6],
          [175.3, 84.1],
          [185.4, 66.8],
          [177.8, 75.5],
          [180.3, 93.2],
          [180.3, 82.7],
          [177.8, 58.0],
          [177.8, 79.5],
          [177.8, 78.6],
          [177.8, 71.8],
          [177.8, 116.4],
          [163.8, 72.2],
          [188.0, 83.6],
          [198.1, 85.5],
          [175.3, 90.9],
          [166.4, 85.9],
          [190.5, 89.1],
          [166.4, 75.0],
          [177.8, 77.7],
          [179.7, 86.4],
          [172.7, 90.9],
          [190.5, 73.6],
          [185.4, 76.4],
          [168.9, 69.1],
          [167.6, 84.5],
          [175.3, 64.5],
          [170.2, 69.1],
          [190.5, 108.6],
          [177.8, 86.4],
          [190.5, 80.9],
          [177.8, 87.7],
          [184.2, 94.5],
          [176.5, 80.2],
          [177.8, 72.0],
          [180.3, 71.4],
          [171.4, 72.7],
          [172.7, 84.1],
          [172.7, 76.8],
          [177.8, 63.6],
          [177.8, 80.9],
          [182.9, 80.9],
          [170.2, 85.5],
          [167.6, 68.6],
          [175.3, 67.7],
          [165.1, 66.4],
          [185.4, 102.3],
          [181.6, 70.5],
          [172.7, 95.9],
          [190.5, 84.1],
          [179.1, 87.3],
          [175.3, 71.8],
          [170.2, 65.9],
          [193.0, 95.9],
          [171.4, 91.4],
          [177.8, 81.8],
          [177.8, 96.8],
          [167.6, 69.1],
          [167.6, 82.7],
          [180.3, 75.5],
          [182.9, 79.5],
          [176.5, 73.6],
          [186.7, 91.8],
          [188.0, 84.1],
          [188.0, 85.9],
          [177.8, 81.8],
          [174.0, 82.5],
          [177.8, 80.5],
          [171.4, 70.0],
          [185.4, 81.8],
          [185.4, 84.1],
          [188.0, 90.5],
          [188.0, 91.4],
          [182.9, 89.1],
          [176.5, 85.0],
          [175.3, 69.1],
          [175.3, 73.6],
          [188.0, 80.5],
          [188.0, 82.7],
          [175.3, 86.4],
          [170.5, 67.7],
          [179.1, 92.7],
          [177.8, 93.6],
          [175.3, 70.9],
          [182.9, 75.0],
          [170.8, 93.2],
          [188.0, 93.2],
          [180.3, 77.7],
          [177.8, 61.4],
          [185.4, 94.1],
          [168.9, 75.0],
          [185.4, 83.6],
          [180.3, 85.5],
          [174.0, 73.9],
          [167.6, 66.8],
          [182.9, 87.3],
          [160.0, 72.3],
          [180.3, 88.6],
          [167.6, 75.5],
          [186.7, 101.4],
          [175.3, 91.1],
          [175.3, 67.3],
          [175.9, 77.7],
          [175.3, 81.8],
          [179.1, 75.5],
          [181.6, 84.5],
          [177.8, 76.6],
          [182.9, 85.0],
          [177.8, 102.5],
          [184.2, 77.3],
          [179.1, 71.8],
          [176.5, 87.9],
          [188.0, 94.3],
          [174.0, 70.9],
          [167.6, 64.5],
          [170.2, 77.3],
          [167.6, 72.3],
          [188.0, 87.3],
          [174.0, 80.0],
          [176.5, 82.3],
          [180.3, 73.6],
          [167.6, 74.1],
          [188.0, 85.9],
          [180.3, 73.2],
          [167.6, 76.3],
          [183.0, 65.9],
          [183.0, 90.9],
          [179.1, 89.1],
          [170.2, 62.3],
          [177.8, 82.7],
          [179.1, 79.1],
          [190.5, 98.2],
          [177.8, 84.1],
          [180.3, 83.2],
          [180.3, 83.2]
        ],
        markPoint: {
          data: [{
            type: 'max',
            name: 'Max'
          }, {
            type: 'min',
            name: 'Min'
          }]
        },
        markLine: {
          data: [{
            type: 'average',
            name: 'Mean'
          }]
        }
      }]
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
        data: ['2015', '2016']
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
        data: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun']
      }],
      series: [{
        name: '2015',
        type: 'bar',
        data: [18203, 23489, 29034, 104970, 131744, 630230]
      }, {
        name: '2016',
        type: 'bar',
        data: [19325, 23438, 31000, 121594, 134141, 681807]
      }]
    });

    var myChart = echarts.init(document.getElementById('echart_pie2'), theme);
    myChart.setOption({
      tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
      },
      legend: {
        x: 'center',
        y: 'bottom',
        data: ['rose1', 'rose2', 'rose3', 'rose4', 'rose5', 'rose6']
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
        name: 'Area Mode',
        type: 'pie',
        radius: [25, 90],
        center: ['50%', 170],
        roseType: 'area',
        x: '50%',
        max: 40,
        sort: 'ascending',
        data: [{
          value: 10,
          name: 'rose1'
        }, {
          value: 5,
          name: 'rose2'
        }, {
          value: 15,
          name: 'rose3'
        }, {
          value: 25,
          name: 'rose4'
        }, {
          value: 20,
          name: 'rose5'
        }, {
          value: 35,
          name: 'rose6'
        }]
      }]
    });

    var myChart = echarts.init(document.getElementById('echart_donut'), theme);
    myChart.setOption({
      tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
      },
      calculable: true,
      legend: {
        //orient: 'vertical',
        //x: 'left',
        x: 'center',
        y: 'bottom',
        data: ['Direct Accesss', 'E-mail Marketing', 'Union Ad', 'Video Ads', 'Search Engine']
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
        name: 'Access to the resource',
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
        data: [{
          value: 335,
          name: 'Direct Access'
        }, {
          value: 310,
          name: 'E-mail Marketing'
        }, {
          value: 234,
          name: 'Union Ad'
        }, {
          value: 135,
          name: 'Video Ads'
        }, {
          value: 1548,
          name: 'Search Engine'
        }]
      }]
    });


    var myChart = echarts.init(document.getElementById('echart_pie'), theme);
    myChart.setOption({
      tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
      },
      legend: {
        //orient: 'vertical',
        //x: 'left',
        x: 'center',
        y: 'bottom',
        data: ['Direct Access', 'E-mail Marketing', 'Union Ad', 'Video Ads', 'Search Engine']
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
        name: 'alguna cosa',
        type: 'pie',
        radius: '55%',
        center: ['50%', '48%'], //left,top
        data: [{
          value: 335,
          name: 'Direct Access'
        }, {
          value: 310,
          name: 'E-mail Marketing'
        }, {
          value: 234,
          name: 'Union Ad'
        }, {
          value: 135,
          name: 'Video Ads'
        }, {
          value: 1548,
          name: 'Search Engine'
        }]
      }]
    });


    var dataStyle = {
      normal: {
        label: {
          show: false
        },
        labelLine: {
          show: false
        }
      }
    };
    var placeHolderStyle = {
      normal: {
        color: 'rgba(0,0,0,0)',
        label: {
          show: false
        },
        labelLine: {
          show: false
        }
      },
      emphasis: {
        color: 'rgba(0,0,0,0)'
      }
    };


    var myChartx = echarts.init(document.getElementById('echart_mini_pie'), theme);
    myChartx.setOption({
      title: {
        text: 'Chart #2',
        subtext: 'From ExcelHome',
        sublink: 'http://e.weibo.com/1341556070/AhQXtjbqh',
        x: 'center',
        y: 'center',
        itemGap: 20,
        textStyle: {
          color: 'rgba(30,144,255,0.8)',
          fontFamily: 'familia1',
          fontSize: 35,
          fontWeight: 'bolder'
        }
      },
      tooltip: {
        show: true,
        formatter: "{a} <br/>{b} : {c} ({d}%)"
      },
      legend: {
        orient: 'vertical',
        x: 170, //document.getElementById('main').offsetWidth / 2,
        y: 45,
        itemGap: 12,
        data: ['68%Something #1', '29%Something #2', '3%Something #3']
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
        name: '1',
        type: 'pie',
        clockWise: false,
        radius: [105, 130],
        itemStyle: dataStyle,
        data: [{
          value: 68,
          name: '68%Something #1'
        }, {
          value: 32,
          name: 'invisible',
          itemStyle: placeHolderStyle
        }]
      }, {
        name: '2',
        type: 'pie',
        clockWise: false,
        radius: [80, 105],
        itemStyle: dataStyle,
        data: [{
          value: 29,
          name: '29%Something #2'
        }, {
          value: 71,
          name: 'invisible',
          itemStyle: placeHolderStyle
        }]
      }, {
        name: '3',
        type: 'pie',
        clockWise: false,
        radius: [25, 80],
        itemStyle: dataStyle,
        data: [{
          value: 3,
          name: '3%Something #3'
        }, {
          value: 97,
          name: 'invisible',
          itemStyle: placeHolderStyle
        }]
      }]
    });


  </script>
</body>

</html>
