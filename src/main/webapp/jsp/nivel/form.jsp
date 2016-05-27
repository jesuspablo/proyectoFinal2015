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
<%UsuarioBeanGenSpImpl user = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");%>
<%
        int id = user.getId();
%>

<form class="form-horizontal" role="form" action="#" id="nivelForm" name="formulario">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="id">Id:</label>
        <div class="col-sm-2">
            <input type="text" id="id" class="form-control"  name="id" placeholder="id" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label"  for="nivel">Nivel:</label>
        <div class="col-sm-6">
            <input type="text" id="nivel" class="form-control"  name="nivel" size="15" placeholder="Título del nivel" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label"  for="curso">Curso:</label>
        <div class="col-sm-6">
            <input type="text" id="curso" class="form-control"  name="curso" size="15" placeholder="Título del nivel" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label"  for="aula">Aula:</label>
        <div class="col-sm-6">
            <input type="text" id="aula" class="form-control"  name="aula" size="15" placeholder="Título del nivel" />
        </div>
    </div>         

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div id="messages"></div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button class="btn btn-primary" id="submitForm">Guardar</button>
        </div>
    </div>

</form>


<script type="text/javascript">

    $(document).ready(function () {
        //http://jqueryvalidation.org/documentation/
        $('#nivelForm')
                .bootstrapValidator({
                    container: '#messages',
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        nivel: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir el nivel del alumno'
                                },
                                stringLength: {
                                    max: 255,
                                    message: 'El nivel debe tener como máximo 255 caracteres'
                                }
                            }
                        },
                        fields: {
                        curso: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir el curso del alumno'
                                },
                                stringLength: {
                                    max: 255,
                                    message: 'El curso debe tener como máximo 255 caracteres'
                                }
                            }
                        },
                        fields: {
                        aula: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir el aula del alumno'
                                },
                                stringLength: {
                                    max: 255,
                                    message: 'El aula debe tener como máximo 255 caracteres'
                                }
                            }
                        },
                    }
                })
                .on('change', '[name="id_usuario"]', function () {
                    $('#nivelForm').bootstrapValidator('revalidateField', 'id_usuario');
                })

                .on('change', '[name="id_nivel"]', function () {
                    $('#nivelForm').bootstrapValidator('revalidateField', 'id_nivel');
                })
                ;
    });



</script>
