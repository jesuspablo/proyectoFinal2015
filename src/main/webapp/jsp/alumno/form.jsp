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

<form class="form-horizontal" role="form" action="#" id="alumnoForm" name="formulario">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="id">Id:</label>
        <div class="col-sm-2">
            <input type="text" id="id" class="form-control"  name="id" placeholder="id" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label"  for="titulo">Nombre:</label>
        <div class="col-sm-6">
            <input type="text" id="nombre" class="form-control"  name="nombre" size="15" placeholder="nombre del alumno" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="obj_nivel_id">Nivel del alumno: </label> 
        <div class="col-sm-2">              
            <input readonly="true"  class="form-control"  id="obj_nivel_id" class="input-mini" name="id_nivel" type="text" size="5" maxlength="5" />  
        </div>
        <div class="col-sm-1">              
            <a class="btn btn-primary btn-sm" id="obj_nivel_button" href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>        
        <label class="col-sm-7" for="obj_usuario_desc" id="obj_nivel_desc"></label>                     
    </div>
     <div class="form-group">
        <label class="col-sm-2 control-label"  for="titulo">Primer apellido:</label>
        <div class="col-sm-6">
            <input type="text" id="nombre" class="form-control"  name="primerapellido" size="15" placeholder="primer apellido" />
        </div>
    </div> <div class="form-group">
        <label class="col-sm-2 control-label"  for="titulo">Segundo apellido:</label>
        <div class="col-sm-6">
            <input type="text" id="nombre" class="form-control"  name="segundoapellido" size="15" placeholder="segundo apellido" />
        </div>
    </div>  
     </div> <div class="form-group">
        <label class="col-sm-2 control-label"  for="titulo">Email:</label>
        <div class="col-sm-6">
            <input type="text" id="email" class="form-control"  name="email" size="15" placeholder="Email" />
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
        

<!-- Modals -->
<div id="modal01" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header" id="modal-header"></div>
            <div class="modal-body" id="modal-body"></div>
            <div class="modal-footer" id="modal-footer"></div>
        </div>
    </div>
</div>



<script type="text/javascript">

    $(document).ready(function() {
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
                        valor: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir un valor'
                                },
                                stringLength: {
                                    max: 255,
                                    message: 'El título debe tener como máximo 255 caracteres'
                                }
                            }
                        },
                        id_pregunta: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe elegir una pregunta'
                                },
                                integer: {
                                    message: 'El identificador de pregunta debe ser un entero'
                                }
                            }
                        }
                    }
                })
    });       

    
    
</script>
     