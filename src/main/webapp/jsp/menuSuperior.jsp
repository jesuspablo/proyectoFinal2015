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



		  <div class="cssmenu">
                      
				<ul id="nav">
                                    
					 <li class="text-primary"><a href="jsp">Inicio</a></li>
					 <li class="text-primary"><a href="jsp#/usuario">Usuarios</a></li>
                                          <li class="dropdown">
                                            <a href="jsp#/alumno" class="dropdown-toggle" data-toggle="dropdown">Profesor <b class="caret"></b></a>
                                                <ul class="dropdown-menu">  
                                                        <li class="text-primary"><a href="jsp#/profesor">Prefesores</a></li>
                                                        <li class="text-primary"><a href="jsp#/asignatura">Asignatura</a></li>
                                                        <li class="text-primary"><a href="jsp#/nivel">Nivel</a></li>
                                                        <li class="text-primary"><a href="jsp#/horario">Horario</a></li>                                                       				  
                                                </ul>
                                         </li>
                                         
                                         <li class="dropdown">
                                            <a href="jsp#/alumno" class="dropdown-toggle" data-toggle="dropdown">Alumno <b class="caret"></b></a>
                                                <ul class="dropdown-menu">
                                                     <li class="text-primary"><a href="jsp#/alumno">Alumnos</a></li>
                                                        <li class="text-primary"><a href="jsp#/asignatura">Asignatura</a></li>
                                                        <li class="text-primary"><a href="jsp#/nivel">Nivel</a></li>
                                                        <li class="text-primary"><a href="jsp#/horario">Horario</a></li>
                                                        <li class="text-primary"><a href="jsp#/nota">Nota</a></li>				  
                                   
                                                </ul>
                                         </li>
                                         <li class="text-primary"><a href="jsp?ob=usuario&op=logout">
                                                
                                                    <span class="glyphicon glyphicon-log-out"></span> </a></li>
                                    </ul>		    

 


