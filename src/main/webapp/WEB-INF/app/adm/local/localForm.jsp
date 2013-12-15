<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Local </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="/public/header.jsp" %>
        <link href="<%=request.getContextPath()%>/public/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">
                    <div class="row">
                        <h1> Nuevo Local </h1>
                    </div>

                    <form id="formulario" action="<%=contextPath%>/adm/local/save" method="POST" class="form-horizontal" >

                        <input type="hidden" value="${local.id}" name="id">

                        <div class="control-group">
                            <label class="control-label">Descripción</label>
                            <div class="controls">
                                <input type="text" name="descripcion" value="${local.descripcion}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Dirección</label>
                            <div class="controls">
                                <input type="text" name="direccion" value="${local.direccion}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Teléfono</label>
                            <div class="controls">
                                <input type="text" name="telefono" value="${local.telefono}">
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="controls">
                                <a class="btn" href="<%=contextPath%>/adm/local">Cancelar</a>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </div>
                    </form>


                </div>
            </div>
            <hr>
        </div>
        <%@include file="/public/footer.jsp" %>
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="<%=request.getContextPath()%>/public/jvalidation/jquery.validate.min.js"></script>
        <script src="<%=request.getContextPath()%>/public/jvalidation/messages_es.js"></script>

        <script>
            $(function() {
                $('#formulario').validate({
                    rules: {
                        descripcion: {required: true},
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