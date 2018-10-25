<%-- 
    Document   : ComponentePrincipal
    Created on : 25-sep-2018, 19:25:54
    Author     : kusan
--%>

<%@page import="Negocio.Persona"%>
<%@page import="Negocio.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="BOOTSTRAP/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/principal.css">
        <script src="BOOTSTRAP/dist/js/jquery-3.1.1.min.js"></script>
        <script src="BOOTSTRAP/dist/js/bootstrap.min.js"></script>
        <script src="JS/principal.js"></script>
        <title>Canal de Panama</title>
    </head>
    <body>
        
        <%!
            String var_passwd;
            String var_user;
            String var_tipo;
            Persona pe = new Persona();
            User us = new User();
        %>
        <%
            if (session.getAttribute("var_user") != null) {
                var_user = (String) session.getAttribute("var_user");
                var_tipo = (String) session.getAttribute("var_tipo");
                var_passwd = (String) session.getAttribute("var_passwd");
                us.setUser(var_user);
                us.setPaswd(var_passwd);
                us.setTipo(var_tipo);
                
                session.setAttribute("user", us);
            } else {
                out.print("<script>location.replace('ComponenteLogin.jsp');</script>");
            }
        %>
        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">CANAL</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                        <li class="dropdown" id="menu1">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#menu1">
                                <span class="glyphicon glyphicon-file"></span>
                                Calendario
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Consultar Calendario</a></li>
                            </ul>
                        </li>
                        <li class="dropdown" id="menu2">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#menu2">
                                <span class="glyphicon glyphicon-check"></span>
                                Reservas
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Agendar Reserva</a></li>
                                <li><a href="#">Cancelar Reserva</a></li>
                                <li><a href="#">Consultar Reserva</a></li>
                            </ul>
                        </li> 
                        <li class="dropdown" id="menu3">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#menu3">
                                <span class="glyphicon glyphicon-list-alt"></span>
                                Buques
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="ComponenteRegistroBuque.jsp">Registrar Buque</a></li>
                                <li><a href="#">Listar Buque</a></li>
                            </ul>
                        </li>
                        <li class="dropdown" id="menu4">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#menu4">
                                <span class="glyphicon glyphicon-th-list"></span>
                                N/A
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">N/A</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <%
                            if ("operador".equals(var_tipo)) {
                        %>
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 
                                <%=us.getUser()%>
                            </a>
                        </li>
                        <%
                            }
                            if ("admin".equals(var_tipo) || "agente".equals(var_tipo)) {
                        %>
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 
                                <%=us.getUser()%>
                            </a>
                        </li>
                        <%
                            }
                        %>
                        <li>
                            <form id="form_login" method="post" action="Servlet_Salir">
                                <span class="glyphicon glyphicon-log-out"></span>
                                <input type="submit" class="btn btn-dark btn-lg" value="Salir"/>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="row">
            <div class="panel panel-primary col-md-6">
                <div class="panel-heading">
                    <h3 class="panel-title">DATOS PERSONALES</h3>
                </div>
                <div class="panel-body">
                    <%
                        if ("operador".equals(var_tipo)) {
                    %>
                    <h5 class="panel-info">NOMBRE: <%="por implementar"%></h5>
                    <h5 class="panel-info">DOC: <%="por implementar"%></h5>
                    <h5 class="panel-info">USUARIO: <%=var_user%></h5>
                    <%
                        }
                        if ("admin".equals(var_tipo) || "agente".equals(var_tipo)) {
                    %>
                    <h5 class="panel-info">NOMBRE: <%="por implementar"%></h5>
                    <h5 class="panel-info">DOC: <%="por implementar"%></h5>
                    <h5 class="panel-info" name="userc">USUARIO: <%=var_user%></h5>
                    <%
                        }
                    %>
                </div>
            </div>
            <div class="panel panel-primary col-md-5">
                <div class="panel-heading">
                    <h3 class="panel-title">NOTICIAS</h3>
                </div>
                <div class="panel-body">
                    <p class="panel-info">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
                        sed do eiusmod tempor incididunt ut labore et dolore magna 
                        aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
                        ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </p>
                </div>
            </div>
        </div>
    </body>
</html>
