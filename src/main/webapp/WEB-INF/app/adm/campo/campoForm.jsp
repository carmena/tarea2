<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Campos Deportivos </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">
                    <div class="row">
                        <h1> Nuevo Campo </h1>
                    </div>

                    <form id="formulario" action="<%=contextPath%>/adm/campo/save" method="POST" class="form-horizontal">

                        <input type="hidden" value="${campo.id}" name="id">

                        <div class="control-group">
                            <label class="control-label">Descripción</label>
                            <div class="controls">
                                <input type="text" name="descripcion" value="${campo.descripcion}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Tipo</label>
                            <div class="controls">
                                <input type="text" name="tipo" value="${campo.tipo}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Costo Hora</label>
                            <div class="controls">
                                <input type="text" name="costoHora" value="${campo.costoHora}">
                            </div>
                        </div>
                        <%--   <div class="control-group">
                               <label class="control-label">local</label>
                               <div class="controls">
                                   <input type="text" name="local.id" value="${campo.local.id}">
                               </div>
                           </div>
                        --%>
                        <div class="control-group">
                            <label class="control-label">local</label>
                            <div class="controls">
                                <select type="text" name="local.id">

                                    <c:forEach var="serv" items="${locales}">

                                        <%-- <option  value="${serv.id}" >  ${serv.descripcion}</option>
                                        --%> 
                                        <c:choose>
                                            <c:when test="${serv.id ==campo.local.id && campo.local.id !=null }">
                                                <option  value="${serv.id}"  selected>${serv.descripcion}</option>

                                            </c:when>

                                            <c:otherwise>
                                                <option  value="${serv.id}" >  ${serv.descripcion}</option>

                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>

                                </select>


                            </div>
                        </div> 
                        <div class="control-group">
                            <div class="controls">
                                <a class="btn" href="<%=contextPath%>/adm/campo">Cancelar</a>
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
                        tipo: {required: true},
                       
                        costoHora: {required: true, number: true},
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