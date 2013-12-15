<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Servicio </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="/public/menuAdmSocio.jsp" %>
                <div class="span9">
                    <div class="row">
                        <h1> Nuevo Alquiler </h1>
                    </div>
                    <c:url var="addUrl" value="/adm/solicitaAlquiler/listCamposDisponible" />
                    <form id="formulario" action="${addUrl}" method="POST" class="form-horizontal">

                        <input type="hidden" id="id"  name="id"  value=""> 
                        <div class="control-group">
                            <label class="control-label">Fecha</label>
                            <div class="controls">                                
                                <div id="datetimepicker1" class="input-append">
                                    <input data-format="dd/MM/yyyy" type="text" id="dia" name="dia" value="${dia}"></input>
                                    <span class="add-on">
                                        <i data-time-icon="icon-time" data-date-icon="icon-calendar">
                                        </i>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Hora Inicio</label>
                            <div class="controls">                                
                                <div id="datetimepicker2" class="input-append">
                                    <input data-format="hh:mm:ss" type="text" id="horaInicio" name="horaInicio" value="${horaInicio}"></input>
                                    <span class="add-on">
                                        <i data-time-icon="icon-time" data-date-icon="icon-calendar">
                                        </i>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Hora Fin</label>
                            <div class="controls">                                
                                <div id="datetimepicker3" class="input-append">
                                    <input data-format="hh:mm:ss" type="text" name="horaFin" value="${horaFin}"></input>
                                    <span class="add-on">
                                        <i data-time-icon="icon-time" data-date-icon="icon-calendar">
                                        </i>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Tipo Campo</label>
                            <div class="controls">  
                                <select type="text" id="tipoLocal" name="tipoLocal">
                                    <option  value="1" > FUTBOL</option>
                                    <option  value="2" > VOLEIBOL</option>
                                    <option  value="3" > TENIS</option>
                                    <option  value="4" > BASQUETBOL</option>
                                </select>
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="controls">
                                <%-- <button type="submit" class="btn btn-primary">Alquilar</button>
<a class="btn" href="<%=contextPath%>/adm/solicitaAlquiler">Cancelar</a> --%>
                                <button type="submit" value="listCamposDisponible"  class="btn btn-primary">Consultar</button>
                                <a class="btn" href="<%=contextPath%>/adm/solicitaAlquiler/save">Alquilar</a>
                            </div>
                        </div>


                        <table class="table table-hover">
                            <tr>
                                <th class="span3">CAMPO DEPORTIVO</th>
                                <th>DIA</th>
                                <th>DISPONIBILIDAD</th>

                                <th> </th>
                            </tr>

                            <c:forEach var="campo" items="${campos}">
                                <tr>
                                    <td><c:out value="${campo.descripcion}"/></td>
                                    <td><c:out value="${dia}"/></td>
                                    <%--        <td><c:out value=""/></td>
                                          <td><c:out value=""/></td>
                              
                                    --%>      </tr>

                            </c:forEach>
                        </table>

                    </form>
                </div>
            </div>
            <hr>
        </div>

     
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="<%=request.getContextPath()%>/public/jvalidation/jquery.validate.min.js"></script>
        <script src="<%=request.getContextPath()%>/public/jvalidation/messages_es.js"></script>
        <script src="<%=request.getContextPath()%>/page/js/bootstrap-datetimepicker.min.js"></script>
        <script src="<%=request.getContextPath()%>/page/js/bootstrap-datetimepicker.min.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#datetimepicker1').datetimepicker({
                    pickTime: false
                });
            });
        </script>
        <script type="text/javascript">
            $(function() {
                $('#datetimepicker2').datetimepicker({
                    pickDate: false
                });
            });
        </script>
        <script type="text/javascript">
            $(function() {
                $('#datetimepicker3').datetimepicker({
                    pickDate: false
                });
            });
        </script> 

        <script type="text/javascript">
            $(function() {
                $('#datetimepicker1').datetimepicker({
                    pickTime: false
                });
            });
        </script>

  
   <%@include file="/public/footer.jsp" %>



    </body>
</html>








