<%-- 
    Document   : modalfullscream
    Created on : 19/05/2016, 04:26:25 PM
    Author     : Mi Laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 3 transparent and fullscreen modals</title>
    <meta name="description" content="Bootstrap 3 transparent and fullscreen modals">
    <!-- include bootstrap -->
  
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
  
<!-- Button modal transparent -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modal-transparent">
  Launch modal transparent
</button>

<!-- Modal transparent -->
<div class="modal modal-transparent fade" id="modal-transparent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<br>
  
<!-- Button modal fullscreen -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modal-fullscreen">
  Launch modal fullscreen
</button>

<!-- Modal fullscreen -->
<div class="modal modal-fullscreen fade" id="modal-fullscreen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  
<!-- include jQuery -->

<script src="js/jquery.min.js" type="text/javascript"></script>
<!-- include bootstrap -->

<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>