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

<form class="form-horizontal" role="form" action="#" id="pedidoForm" name="formulario">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="id">Id:</label>
        <div class="col-sm-2">
            <input type="text" id="id" class="form-control"  name="id" placeholder="id" />
        </div>
    </div>
    

    
    <div class="form-group">
        <label class="col-sm-2 control-label" for="fecha">Fecha:</label> 
        <div class="col-sm-3">           
            <div class='input-group date' id='alta_group'>
                <input type='text' class="form-control" id='fecha' name="fecha" placeholder="Fecha" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="observaciones">Observaciones:</label> 
        <div class="col-sm-3">      
            <div class='input-group date' id='cambio_group'>
                <input type='text' class="form-control" id='cambio' name="observaciones" placeholder="Fecha de cambio" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
    </div>

    
    <div class="form-group">
        <label class="col-sm-2 control-label" for="obj_usuario_id">Id_usuario: </label> 
        <div class="col-sm-2">              
            <input readonly="true"  class="form-control"  id="obj_usuario_id" class="input-mini" name="id_usuario" type="text" size="5" maxlength="5" />  
        </div>
        <div class="col-sm-1">              
            <a class="btn btn-primary btn-sm" id="obj_usuario_button" href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>        
        <label class="col-sm-7" for="obj_usuario_desc" id="obj_usuario_desc"></label>                     
    </div>

  </form>
        

<script type="text/javascript">

    $(document).ready(function() {
        $('#alta_group').datetimepicker({
            pickTime: false,
            language: 'es',
            showToday: true
        });
        $('#cambio_group').datetimepicker({
            pickTime: false,
            language: 'es',
            showToday: true
        });
    
        //http://jqueryvalidation.org/documentation/
        $('#pedidoForm')
                .bootstrapValidator({
                    container: '#messages',
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                     fields: {
                        id: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir un id'
                                }                        
                            }
                        },
                        observaciones: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir contenido'
                                }
                            }
                        },
                        fecha: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir una fecha de alta'
                                },
                                date: {
                                    format: 'DD/MM/YYYY',
                                    message: 'La fecha de alta no tiene formato DD/MM/YYYY'
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
                })
                .on('change', '[name="id_usuario"]', function() {
                    $('#documentoForm').bootstrapValidator('revalidateField', 'id_usuario');
                })

                .on('change', '[name="id_tipodocumento"]', function() {
                    $('#documentoForm').bootstrapValidator('revalidateField', 'id_tipodocumento');
                })
                ;
        $('#alta_group').on('dp.change dp.show', function(e) {
// Revalidate the date when user change it
            $('#documentoForm').bootstrapValidator('revalidateField', 'alta_group');
        });
        $('#cambio_group').on('dp.change dp.show', function(e) {
// Revalidate the date when user change it
            $('#documentoForm').bootstrapValidator('revalidateField', 'cambio_group');
        });
    });       
    });
    
    
</script>
     