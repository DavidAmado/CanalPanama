<%-- 
    Document   : ComponenteRegistroBuque
    Created on : 26/09/2018, 07:52:14 PM
    Author     : kusan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="BOOTSTRAP/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/principal.css">
        <script src="BOOTSTRAP/dist/js/jquery-3.1.1.min.js"></script>
        <script src="BOOTSTRAP/dist/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="JS/buque.js"></script>
        <title>Registro Buque</title>
    </head>
    <nav class="navbar navbar-default ">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">Registro Buque</a>
                </div>
                <div class="collapse navbar-collapse">
                    <button class="btn btn-primary navbar-btn" onclick="window.location.reload()">Nuevo Registro</button>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="ComponentePrincipal.jsp"><span class="glyphicon glyphicon-arrow-left"></span> Regresar</a></li>
                    </ul>
                </div>
            </div>
    </nav>
    <body>
        <div class="panel panel-primary col-xs-12">
                <div class="panel-heading">
                    <h6 class="panel-title">Registro Buque</h6>
                </div>
                <div class="panel-body">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-3"> <input type="text" class="form-control" id="txt_cedulaBuque" placeholder="Cedula Buque"> </div>
                            <div class="form-group col-md-3"> <input type="text" class="form-control" id="txt_nombreBuque" placeholder="Nombre Buque"> </div>
                            <div class="form-group col-md-3">
                                <select class="form-control" id="select_paisBuque" name="select_paisBuque" >
                                    <option value="0" selected disabled>seleccione el pais</option>
                                    <option value="1">Colombia</option>
                                    <option value="2">USA</option>
                                    <option value="3">Japon</option>
                                    <option value="5">Rusia</option>
                                    <option value="6">Panama</option>
                                    <option value="7">Mexico</option>
                                    <option value="8">India</option>
                                    <option value="9">Inglaterra</option>
                                    <option value="10">España</option>
                                    <option value="11">Dinamarca</option>
                                </select> 
                            </div>
                            <div class="form-group col-md-3">
                                <select class="form-control" id="select_operadorBuque" name="select_operadorBuque" >
                                    <option value="0" selected disabled>seleccione el operador</option>
                                    <option value="1">Juan Ruiz</option>
                                    <option value="2">Pepe Sierra</option>
                                </select> 
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <select class="form-control" id="select_clasificacionBuque" name="select_clasificacionBuque" >
                                    <option value="0" selected disabled>seleccione la clasificacion</option>
                                    <option value="1">Neopanamax</option>
                                    <option value="2">Super</option>
                                </select> 
                            </div>
                            <div class="form-group col-md-3">
                                <select class="form-control" id="select_tipoBuque" name="select_tipoBuque" >
                                    <option value="0" selected disabled>seleccione el tipo</option>
                                    <option value="1">Portacontenedor</option>
                                    <option value="2">GNP</option>
                                    <option value="3">GNL</option>
                                    <option value="4">Granelero</option>
                                    <option value="5">Portavehiculo</option>
                                    <option value="6">Petrolero</option>
                                    <option value="7">Pasajeros</option>
                                    <option value="8">Militar</option>
                                    <option value="9">Carguero</option>
                                </select> 
                            </div>
                            <div class="form-group col-md-3"> <input type="text" class="form-control" id="txt_esloraBuque" placeholder="Eslora"> </div>
                            <div class="form-group col-md-3"> <input type="text" class="form-control" id="txt_mangaBuque" placeholder="Manga"> </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-3"> <input type="text" class="form-control" id="txt_caladoBuque" placeholder="calado"> </div>
                            <div class="form-group col-md-3"> <input type="text" class="form-control" id="txt_capacidadBuque" placeholder="capacidad"> </div>
                        </div>
                    </form>
                </div>
        </div>
        <center>
            <div class="">
                <button type="button" id="btn_guardaregistro" class="btn btn-success" onclick="enviar_solicitud()">
                    <span class="glyphicon glyphicon-floppy-disk"></span>
                </button>
            </div>
        </center>
    </body>
</html>
