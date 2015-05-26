<%-- 
 Copyright (C) July 2014 Rafael Aznar

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
--%>

<%@page import="net.daw.helper.EstadoHelper"%>


<!DOCTYPE html>
<html>	
    <head>
        <title>User Login Flat Responsive widget Template :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <meta name="keywords" content="User Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
        <link rel="stylesheet" href="css/styles2.css">
         <link rel="stylesheet" href="css/styles4.css">
        <!--web-fonts-->
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <!--/web-fonts-->
    </head>
    <body>
        <!--User-Login-->

        <div class="continer">

            <div class="izquierda">

            </div>


            <div class="centro">
                <h1>User Login</h1>
                <div class="avtar">
                    <img src="css/images/avtar.png" />
                </div>

                <div class="login-form">
                    <p>Iniciar Sesion</p>
                    <form class="form-signin" id="loginForm" action="jsp" role="form" method="post"> 
                        <input type="hidden" name="ob" value="usuario" />
                        <input type="hidden" name="op" value="login02" /> 
                        <div class="form-text">
                            <%
                                if (EstadoHelper.getTipo_estado() == EstadoHelper.getTipo_estado().Debug) {
                            %>
                            <input  class="text" value="jesus" class="form-control"  id="inputLogin" type="text" placeholder="nombre de usuario" required="" autofocus="" name="login"  />
                            <%
                            } else {
                            %>
                            <input class="form-control"  id="inputLogin" type="text" placeholder="nombre de usuario" required="" autofocus="" name="login" />
                            <%
                                }
                            %>

                            <%
                                if (EstadoHelper.getTipo_estado() == EstadoHelper.getTipo_estado().Debug) {
                            %>
                            <input type="password" value="jesus" type="password" id="inputPassword" placeholder="contraseña"  required="" name="password" />
                            <%
                            } else {
                            %>
                            <input class="form-control" type="password" id="inputPassword" placeholder="contraseña"  required="" name="password" />                                                               
                            <%
                                }
                            %> 
                         <button class="boton1" type="submit"  style="margin-top: 15px">Acceder</button>   
                        <button class="boton2" type="reset" style="margin-top: 5px">Reset</button>
                   
                        </div>
                        
                    </form>
                        <!--/User-Login-->
                <!--start-copyright-->
                <div class="copy-right">
                    <p>Acceder al <a href="http://w3layouts.com">Sistema</a></p> 
                </div>
                </div>
                




            </div> 

            <div class="derecha">




            </div>	



        </div>
        
    </body>
</html>