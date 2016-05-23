<%-- 
    Document   : pdfff
    Created on : 18/05/2016, 09:49:40 AM
    Author     : Mi Laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
  <meta charset="UTF-8">
  <title>TouchPDF</title>
  
  <link href="css/pdf/jquery.touchPDF.css" rel="stylesheet" type="text/css"/>
 
</head>
<%
int codigo =Integer.parseInt(request.getParameter("codigo"));
//System.out.println("codigo "+codigo);
//int codigo=9;
System.out.println("codigo "+codigo);
%>
<body >

    <div class="touchPDF" id="myPDF" >
        
                        
    </div>
    <script src="js/jquery.min.js" type="text/javascript"></script>
  
    <script src="js/pdf/pdf.compatibility.js" type="text/javascript"></script>
    <script src="js/pdf/pdf.js" type="text/javascript"></script>
    <script src="js/pdf/jquery.touchSwipe.js" type="text/javascript"></script>
    <script src="js/pdf/jquery.touchPDF.js" type="text/javascript"></script>
    <script src="js/pdf/jquery.panzoom.js" type="text/javascript"></script>
    <script src="js/pdf/jquery.mousewheel.js" type="text/javascript"></script>
    <script src="js/pdf/pdf.worker.js" type="text/javascript"></script>


<script type="text/javascript">
	 $(document).ready(function () {
	
		$("#myPDF").pdf( {
			source: "ArchivoPublicacionController?accion=verArchivo&idArchivo="+<%=codigo%>
                        /*,
                        tabs: [
				{title: "Section 1", page: 1, color: "orange"},
				{title: "Section 2", page: 2, color: "green"},
                                {title: "Section 3", page: 3, color: "blue"},
				{title: "Section 4", page: 4, color: "red"},
			]*/
		} );
	
    });
</script>


</body></html>