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
<!DOCTYPE html>
<html>	
<head>
<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
        <meta charset="UTF-8">
	<title>portfolio</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,700italic' rel='stylesheet' type='text/css'>
	<meta name="viewport" content="width=device-width,height=device-height initial-scale=1 maximum-scale=1.0, user-scalable=0" />
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	
	
<%
    int id_tipousuario = 0, id_usuario = 0;
    UsuarioBeanGenSpImpl user = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");
    if (user != null) {
        id_tipousuario = user.getId_tipousuario();
        id_usuario = user.getId();
    }
%>
</head>
<body>
<div class="panel panel-primary">
    
    <div class="panel panel-primary">
    <div class="panel-heading">
        
        <h3 class="panel-title">Aula Virtual</h3>
    </div>
    <div class="list-group">
        <a  class="list-group-item" id="lnkPublicacion" href="jsp#/inicioRedSocial/list/page=1&id=1&rpp=10&vf=4&order=fechacreacion&ordervalue=desc">Inicio</a> 
        <a  class="list-group-item" id="lnkPublicacion" href="jsp#/redsocialperfil/list/systemfilter=id_usuario&systemfilteroperator=equals&systemfiltervalue=<%=id_usuario%>&page=1&id=1&rpp=10&vf=4&order=fechacreacion&ordervalue=desc">Ir a Mi perfil</a> 
    </div>
</div>    
</div>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Gestión de Usuarios</h3>
    </div>
    <div class="list-group">
        <a  class="list-group-item" id="lnkUsuario" href="jsp#/usuario">Usuario</a>
        
    </div>
</div>


<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Sistema Virtual</h3>
    </div>
    <div class="list-group">
        <a  class="list-group-item" id="lnkAlumno" href="jsp#/alumno">Alumno</a> 
        <a  class="list-group-item" id="lnkProfesor" href="jsp#/profesor">Profesores</a> 
        <a  class="list-group-item" id="lnkAsignatura" href="jsp#/asignatura">Asignaturas</a> 
        <a  class="list-group-item" id="lnkNivel" href="jsp#/nivel">Nivel del Alumno</a> 
        <a  class="list-group-item" id="lnkMensajeprivado" href="jsp#/mensajeprivado">Mensaje privado</a> 


        </div>
</div>
</body>
</html>

