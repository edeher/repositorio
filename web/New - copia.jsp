<%-- 
    Document   : NewPublicacion
    Created on : 01/06/2016, 09:26:30 AM
    Author     : Mi Laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">

        <!-- Custom styling plus plugins -->
        <link href="css/custom.css" rel="stylesheet">
        <link href="css/icheck/flat/green.css" rel="stylesheet">


        <script src="js/jquery.min.js"></script>
    </head>
    <body>
        <style>
            .daterangepicker{z-index:1151 !important;}
        </style>
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Nueva Area de Investigación  </h4>

        </div>

        <div class="modal-body">     
            <form class="form-horizontal form-label-left" novalidate>



                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="both name(s) e.g Jon Doe" required="required" type="text">
                    </div>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Confirm Email <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="email" id="email2" name="confirm_email" data-validate-linked="email" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Number <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="number" id="number" name="number" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">Website URL <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="url" id="website" name="website" required="required" placeholder="www.website.com" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">Occupation <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="occupation"  name="occupation" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="item form-group">
                    <label for="password" class="control-label col-md-3">Password</label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="password" type="password" name="password" data-validate-length="6,8" class="form-control col-md-7 col-xs-12" required="required">
                    </div>
                </div>
                <div class="item form-group">
                    <label for="password2" class="control-label col-md-3 col-sm-3 col-xs-12">Repeat Password</label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="password2" type="password" name="password2" data-validate-linked="password" class="form-control col-md-7 col-xs-12" required="required">
                    </div>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telephone">Telephone <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="tel" id="telephone" name="phone" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Textarea <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <textarea id="textarea"  name="textarea" required="required" class="form-control col-md-7 col-xs-12"></textarea>
                    </div>
                </div>
                
                <!--es para crear lineas de separacion-->
                <div class="ln_solid"></div>
                <!--finlineas de separacion-->
                
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-3">
                        <button           type="reset" class="btn btn-primary">Cancel</button>
                        <button id="send" type="submit" class="btn btn-success">Submit</button>
                    </div>
                </div>
            </form>

        </div>




        <script src="js/bootstrap.min.js"></script>

        <!-- bootstrap progress js -->
        <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- icheck -->
        <script src="js/icheck/icheck.min.js"></script>
        <!-- pace -->
        <script src="js/pace/pace.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- form validation -->
        <script src="js/validator/validator.js"></script>

        <script>
            // initialize the validator function
            validator.message['date'] = 'not a real date';

            // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
            $('form')
                    .on('blur', 'input[required], input.optional, select.required', validator.checkField)
                    .on('change', 'select.required', validator.checkField)
                    .on('keypress', 'input[required][pattern]', validator.keypress);

            $('.multi.required')
                    .on('keyup blur', 'input', function () {
                        validator.checkField.apply($(this).siblings().last()[0]);
                    });

            // bind the validation to the form submit event
            //$('#send').click('submit');//.prop('disabled', true);

            $('form').submit(function (e) {
                e.preventDefault();
                var submit = true;
                // evaluate the form using generic validaing
                if (!validator.checkAll($(this))) {
                    submit = false;
                }

                if (submit)
                    this.submit();
                return false;
            });

            /* FOR DEMO ONLY */
            $('#vfields').change(function () {
                $('form').toggleClass('mode2');
            }).prop('checked', false);

            $('#alerts').change(function () {
                validator.defaults.alerts = (this.checked) ? false : true;
                if (this.checked)
                    $('form .alert').remove();
            }).prop('checked', false);
        </script>
        <script type="text/javascript">
        $(document).ready(function () {
            
     
        });

        $('#send').click(function () {
            var formdata = new FormData($("#crearform")[0]);
            $.ajax({
                url: "FacultadController?accion=crearFacultad",
                type: "post",
                contentType: false,
                data: formdata,
                processData: false,
                cache: false})
                    .always(function () {
                        actualizar();
                        ocultarmodal();
                        alerta("Facultad creada", true);
                    });
        });
    </script>
    </body>
</html>
