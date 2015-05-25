
<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<% UsuarioBeanGenSpImpl oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean"); %>
<% if (oUsuario == null) { %>
<h1 class="margen-superior">Vd. no ha entrado en el sistema</h1>
<h4>Ha habido un problema con su autenticación. Revise su login o su password.</h4>
<% } else {%>

<div class="margen-ultrasuperior">

    <div class="col-xs-12 col-sm-10 col-sm-offset-1">
        <div class="tile-group-title fg-white">Trabajo</div>

        <a class="tile double double-vertical Pgreen" data-click="transform">
            <div class="tile-content icon">
                <i class="icon-calendar"></i>
            </div>

            <div class="tile-status">
                <div class="label">Calendario</div>
            </div>
        </a> <!-- end tile --> 

        <a class="tile  bg-brown" href="jsp#/tratamiento">
            <div class="tile-content icon">
                <i class="icon-power"></i>
            </div>
            <div class="brand">
                <div class="label">Tratamientos</div>
            </div>
        </a> <!-- end tile -->

        <div class="tile  bg-darkBlue" onclick="util().toggleFullScreen()">
            <div class="tile-content icon">
                <i class="icon-fullscreen-alt"></i>
            </div>
            <div class="brand">
                <div class="label">Expandir</div>
            </div>
        </div> <!-- end tile -->

        <a href="#" class="tile bg-darkOrange" data-click="transform">
            <div class="tile-content icon">
                <span class="icon-stats"></span>
            </div>
            <div class="brand">
                <div class="label">Estadísticas</div>
            </div>
        </a>

        <a class="tile double bg-cyan" href="jsp#/cliente" data-click="transform">
            <div class="tile-content icon">
                <i class="icon-user-3"></i>
            </div>
            <div class="tile-status">
                <span class="name">Clientes</span>
            </div>
        </a> <!-- end tile -->

        <a href="#" class="tile bg-darkIndigo" data-click="transform">
            <div class="tile-content icon">
                <span class="icon-help"></span>
            </div>
            <div class="brand">
                <div class="label">Ayuda</div>
            </div>
        </a>

        <a class="tile double bg-violet" href="jsp#/centro">
            <div class="tile-content icon">
                <i class="icon-briefcase"></i>
            </div>
            <div class="brand">
                <div class="label">Centros</div>
            </div>
        </a> <!-- end tile -->

        <a class="tile bg-darkPink" data-click="transform"  href="jsp#/centro/mapa">
            <div class="tile-content icon">
                <i class="icon-compass-2"></i>
            </div>
            <div class="brand">
                <div class="label">Mapa</div>
            </div>
        </a> <!-- end tile -->

        <a class="tile double bg-darkCyan" data-click="transform"  href="jsp#/seguimiento/rutina">
            <div class="tile-content icon">
                <i class="icon-play"></i>
            </div>
            <div class="brand">
                <div class="label">Rutina</div>
            </div>
        </a>

        <a class="tile double bg-darkGreen" data-click="transform" href="jsp#/seguimiento/factura">
            <div class="tile-content icon">
                <span class="icon-cart-2"></span>
            </div>
            <div class="brand">
                <div class="label">Facturacion</div>
            </div>
        </a>
    </div> <!-- End group -->
    <% if (oUsuario.getId_tipousuario() == 1) { %>
    <div class="col-xs-12 col-sm-10 col-sm-offset-1">
        <div class="tile-group-title fg-white">Administracion</div>

        <a class="tile bg-darkGreen" href="jsp#/usuario">
            <div class="tile-content icon">
                <i class="icon-cc-by"></i>
            </div>
            <div class="tile-status">
                <span class="name">Usuarios</span>
            </div>
        </a>

        <a class="tile bg-darkBlue" href="jsp#/cliente">
            <div class="tile-content icon">
                <i class="icon-address-book"></i>
            </div>
            <div class="tile-status">
                <span class="name">Clientes</span>
            </div>
        </a>
        <a class="tile bg-darkPink" href="jsp#/tipousuario">
            <div class="tile-content icon">
                <i class="icon-cube"></i>
            </div>
            <div class="tile-status">
                <span class="name">Tipo Usuario</span>
            </div>
        </a>
        <a class="tile bg-orange"  href="jsp#/centro">
            <div class="tile-content icon">
                <i class="icon-glasses"></i>
            </div>
            <div class="tile-status">
                <span class="name">Centros</span>
            </div>
        </a>
        <a class="tile bg-lightBlue" href="jsp#/seguimiento">
            <div class="tile-content icon">
                <i class="icon-stats-2"></i>
            </div>
            <div class="tile-status">
                <span class="name">Seguimientos</span>
            </div>
        </a>
        <a class="tile bg-darkRed" href="jsp#/tratamiento">
            <div class="tile-content icon">
                <i class="icon-cone"></i>
            </div>
            <div class="tile-status">
                <span class="name">Tratamientos</span>
            </div>
        </a>
    </div> <!-- End tile group -->
    <% }%>
</div>

<% }%>
