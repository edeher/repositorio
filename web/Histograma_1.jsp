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

    <body class="nav-md">

        
        
        
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
          

        </div>
        
        <div class="modal-body">     
            <div class="">




            <div class="x_panel">
                <div class="x_title">
                    <h2>visitas</h2>
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
                $.getJSON('VisitaController?accion=visitastotaxpoanio', function (json) {
                    var mess = [];
                    var valores = [];

                    var obje = [];
                    $.each(json.totalxanio, function (item, obj) {
                        obje.push(obj);
                        mess.push(obj.mes);
                        valores.push(obj.value);

                    });

                    var myChart9 = echarts.init(document.getElementById('mainb'), theme);
                    myChart9.setOption({
                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data: [ 'Visitas']
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
                                data: mess
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value'
                            }
                        ],
                        series: [
                           
                            {
                                name: 'Visitas',
                                type: 'line',
                                stack: '总量',
                                data: valores
                            }
                        ]

                    });

                });

            })
        </script>
    </body>

</html>
