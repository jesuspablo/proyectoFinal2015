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

<form class="form-horizontal" role="form" action="#" id="asignaturaForm" name="formulario">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="id">Id:</label>
        <div class="col-sm-2">
            <input type="text" id="id" class="form-control"  name="id" placeholder="id" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label"  for="nombre">Nobre:</label>
        <div class="col-sm-6">
            <input type="text" id="nombre" class="form-control"  name="nombre" size="15" placeholder="T�tulo del asignatura" />
        </div>
    </div> 
     <div class="form-group">
        <label class="col-sm-2 control-label" for="obj_profesor_id">Profesor: </label> 
        <div class="col-sm-2">              
            <input readonly="true"  class="form-control"  id="obj_profesor_id" class="input-mini" name="id_profesor" type="text" size="5" maxlength="5" />  
        </div>
        <div class="col-sm-1">              
            <a class="btn btn-primary btn-sm" id="obj_profesor_button" href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>        
        <label class="col-sm-7" for="obj_profesor_desc" id="obj_profesor_desc"></label>                     
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

    $(document).ready(function() {
        //http://jqueryvalidation.org/documentation/
        $('#asignaturaForm')
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
                                    message: 'Debe introducir un nombre de la asignatura'
                                },
                                stringLength: {
                                    max: 255,
                                    message: 'El nombre de la asignatura debe tener como m�ximo 255 caracteres'
                                }
                            }
                        },
                        id_profesor: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe elegir un profesor'
                                },
                                integer: {
                                    message: 'El identificador de profesor debe ser un entero'
                                }
                            }
                        },
                        id_nivel: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe elegir un nivel'
                                },
                                integer: {
                                    message: 'El identificador de tipo de documento debe ser un entero'
                                }
                            }
                        }
                    }
                })
                .on('change', '[name="id_profesor"]', function() {
                    $('#asignaturaForm').bootstrapValidator('revalidateField', 'id_profesor');
                })

                .on('change', '[name="id_nivel"]', function() {
                    $('#asignaturaForm').bootstrapValidator('revalidateField', 'id_nivel');
                })
                ;
    });       

    
    
</script>
     