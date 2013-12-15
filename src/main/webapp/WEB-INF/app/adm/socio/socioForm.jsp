<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/public/app/bootstrap-select.js"></script>  
        <script src="<%=request.getContextPath()%>/public/bootstrap/js/bootstrap.min.js"></script>


        <script type="text/javascript">
            $(window).on('load', function() {

                $('.selectpicker').selectpicker({
                    'selectedText': 'cat'
                });

                // $('.selectpicker').selectpicker('hide');
            });
        </script>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="/public/menuAdm.jsp" %>

                <div class="span9">
                    <div class="row">
                        <h1> Nuevo Socio </h1>
                    </div>


                    <form id="formulario" action="<%=contextPath%>/adm/socio/save" method="POST" class="form-horizontal">

                        <input type="hidden" value="${socio.id}" name="id"> 

                        <div class="control-group">
                            <label class="control-label">Nombres</label>
                            <div class="controls">
                                <input type="text" name="nombres" value="${socio.nombres}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Apellido Paterno</label>
                            <div class="controls">
                                <input type="text" name="paterno" value="${socio.paterno}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Apellido Materno</label>
                            <div class="controls">
                                <input type="text" name="materno" value="${socio.materno}">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Email</label>
                            <div class="controls">
                                <input type="text" name="email" value="${socio.email}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Celular</label>
                            <div class="controls">
                                <input type="text" name="celular" value="${socio.celular}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Dirección</label>
                            <div class="controls">
                                <input type="text" name="direccion" value="${socio.direccion}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Sexo</label>
                            <div class="controls">
                                <select class="selectpicker" name="sexo" >
                                    <option  data-content="<span class='label label-success'>MASCULINO</span>" value="M">M</option>
                                    <option data-content="<span class='label label-success'>FEMENINO</span>" value="F">F</option>

                                </select>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label"> </label>
                            <div class="control-group">
                                <div class="btn-group" data-toggle="buttons">

                                    <label class="btn btn-primary">
                                        <input name="estado" type="checkbox" checked="1"> Activo
                                    </label>


                                </div>
                            </div>



                        </div> 
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-primary">Guardar</button>
                                <a class="btn" href="<%=contextPath%>/adm/socio">Cancelar</a>

                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
        <%@include file="/public/footer.jsp" %>
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="<%=request.getContextPath()%>/public/jvalidation/jquery.validate.min.js"></script>
        <script src="<%=request.getContextPath()%>/public/jvalidation/messages_es.js"></script>
        <script>
            $(function() {
                $('#formulario').validate({
                    rules: {
                        nombres: {required: true},
                        paterno: {required: true},
                        materno: {required: true},
                        email: {required: true},
                        sexo: {required: true},
                        celular: {required: true, number: true},
                        direccion: {required: true},
                        
                    },
                    highlight: function(element) {
                        $(element).closest('.control-group').removeClass('success').addClass('error');
                    },
                    success: function(element) {
                        element
                                .text('').addClass('valid')
                                .closest('.control-group').removeClass('error').addClass('success');
                    }
                });
            });
        </script>

    </body>

</html>
