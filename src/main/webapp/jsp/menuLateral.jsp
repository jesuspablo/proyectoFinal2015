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

<%
    int id_tipousuario = 0, id_usuario = 0;
    UsuarioBeanGenSpImpl user = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");
    if (user != null) {
        id_tipousuario = user.getId_tipousuario();
        id_usuario = user.getId();
    }
%>

<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Sesión</h3>
    </div>
    <div class="list-group">
        <a class="list-group-item" id="lnkHome"  href="jsp">Home</a>
        <a class="list-group-item"  id="lnkLogout" href="jsp?ob=usuario&op=logout">Logout</a>
    </div>
</div>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Gestión d0e Usuarios</h3>
    </div>
    <div class="list-group">
        <a  class="list-group-item" id="lnkUsuario" href="jsp#/usuario">Usuario</a>
    </div>
</div>



<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Mantenimientos</h3>
    </div>
    <div class="list-group">
        <a  class="list-group-item" id="lnkOrdenador" href="jsp#/usuario">Usuario</a> 
    </div>
</div>

<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Global</h3>
    </div>
    <div class="list-group">
        <a  class="list-group-item" id="lnkOrdenador" href="jsp?op=cambia">Cambia el campo</a>
    </div>
</div>



