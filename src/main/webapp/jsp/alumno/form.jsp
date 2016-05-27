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

<form class="form-horizontal" role="form" action="#" id="alumnoForm" name="formulario">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="id">Id:</label>
        <div class="col-sm-2">
            <input type="text" id="id" class="form-control"  name="id" placeholder="id" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label"  for="nombre">Nombre:</label>
        <div class="col-sm-6">
            <input type="text" id="nombre" class="form-control"  name="nombre" size="15" placeholder="Título del alumno" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label"  for="apellido">Primer apellido:</label>
        <div class="col-sm-6">
            <input type="text" id="apellido" class="form-control"  name="apellido" size="15" placeholder="Título del alumno" />
        </div>
    </div>



    <div class="form-group">
        <label class="col-sm-2 control-label"  for="Email">Email:</label>
        <div class="col-sm-6">
            <input type="text" id="Email" class="form-control"  name="Email" size="15" placeholder="Título del alumno" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="obj_nivel_id">nivel: </label> 
        <div class="col-sm-2">              
            <input readonly="true"  class="form-control"  id="obj_nivel_id" class="input-mini" name="id_nivel" type="text" size="5" maxlength="5" />  
        </div>

        <div class="col-sm-1">              
            <a class="btn btn-primary btn-sm" id="obj_nivel_button" href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>        
        <label class="col-sm-7" for="obj_nivel_desc" id="obj_nivel_desc"></label>                     
    </div>    


    <div class="form-group">
        <label class="col-sm-2 control-label" for="obj_usuario_id">Usuario: </label> 
        <div class="col-sm-2">              
            <input readonly="true"  class="form-control"  id="obj_usuario_id" class="input-mini" name="id_usuario" type="text" size="5" maxlength="5" />  
        </div>
        <div class="col-sm-1">              
            <a class="btn btn-primary btn-sm" id="obj_usuario_button" href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>        
        <label class="col-sm-7" for="obj_usuario_desc" id="obj_usuario_desc"></label>                     
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
        $('#alumnoForm')
                .bootstrapValidator({
                    container: '#messages',
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        nombre: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir un nombre del alumno'
                                },
                                stringLength: {
                                    max: 255,
                                    message: 'El título del alumno debe tener como máximo 255 caracteres'
                                }
                            }
                        },
                        fields: {
                            apellido: {
                                validators: {
                                    notEmpty: {
                                        message: 'Debe introducir el apellido del alumno'
                                    },
                                    stringLength: {
                                        max: 255,
                                        message: 'El título del alumno debe tener como máximo 255 caracteres'
                                    }
                                }
                            },
                            fields: {
                                email: {
                                    validators: {
                                        notEmpty: {
                                            message: 'Debe introducir un email.'
                                        },
                                        stringLength: {
                                            max: 50,
                                            message: 'La longitud del email no puede ser mayor de 50'
                                        },
                                        emailAddress: {
                                            message: 'Debe introducir un email valido.'
                                        }
                                    }
                                },
                                fields: {
                                    Foto: {
                                        validators: {
                                            notEmpty: {
                                                message: 'Debe introducir el apellido del alumno'
                                            },
                                            stringLength: {
                                                max: 255,
                                                message: 'El título del alumno debe tener como máximo 255 caracteres'
                                            }
                                        }
                                    },
                                    id_usuario: {
                                        validators: {
                                            notEmpty: {
                                                message: 'Debe elegir un usuario'
                                            },
                                            integer: {
                                                message: 'El identificador de usuario debe ser un entero'
                                            }
                                        }
                                    },
                                    id_nivel: {
                                        validators: {
                                            notEmpty: {
                                                message: 'Debe elegir un usuario'
                                            },
                                            integer: {
                                                message: 'El identificador de usuario debe ser un entero'
                                            }
                                        }
                                    },
                                }
                            }
                        }
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
