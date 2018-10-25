<%-- 
    Document   : ComponenteLogin
    Created on : 25/09/2018, 01:28:03 PM
    Author     : kusan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<HTML>
    <head>
        <meta charset="utf-8">
        <title>login</title>
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="col-sm-6 mx-auto">
                <div class="card mt-5">
                    <div class="card-body">
                        <h1 class="text-center"><span class="fa fa-sign-in"></span> Login</h1>
                        <form id="form_login" method="post" action="Servlet_InicioSesion">
                            <div class="form-group">
                                <label for="usuario">Usuario</label>
                                <input type="text" name="txt_user" id="txt_user" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="contraseña">Contraseña</label>
                                <input type="password" name="txt_passwd" id="txt_passwd" class="form-control" />
                            </div>
                            <input type="submit" class="btn btn-dark btn-lg" value="Enviar"/>
                        </form>
                        <hr>
                        <div class="text-center">
                            <p>Crear cuenta nueva <a href="ComponenteRegistro.jsp">sign up</a></p>
                        </div>
                    </div>            
                </div>
            </div>
        </div>
    </body>
</HTML>