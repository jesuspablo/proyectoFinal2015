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

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<% UsuarioBeanGenSpImpl oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean"); %>

     <head>      
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width">
        <script type="text/javascript"  src="./js/vendor/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/skin/login02.css"> 
    </head>   
   <body id="login02">
        <% if (oUsuario == null) { %>
        <h1 class="margen-superior">Vd. no ha entrado en el sistema</h1>
        <h4>Ha habido un problema con su autenticación. Revise su login o su password.</h4>
        <% } else {%>
        <h1 class="margen-superior">Bienvenido</h1>
        <h4><%=oUsuario.getLogin()%></h4>
        <% }%>
    </body>

    <script>
        $(document).ready(function () {

            $("h1").fadeIn(4000, function () {
                $("h1").fadeOut(4000);
            });
            $("h4").fadeIn(4000, function () {
                $("h4").fadeOut(4000);
            });
        });

    </script>
</html>