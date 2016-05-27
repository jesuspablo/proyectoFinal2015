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


<form class="form-horizontal" role="form" action="#" id="horarioForm" name="formulario">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="id">Id:</label>
        <div class="col-sm-2">
            <input type="text" id="id" class="form-control"  name="id" placeholder="id" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label"  for="dia">Dia:</label>
        <div class="col-sm-6">
            <input type="text" id="dia" class="form-control"  name="dia" size="15" placeholder="T�tulo del dia" />
        </div>
    </div>

     <div class="form-group">
        <label class="col-sm-2 control-label" for="horainicio">Hora Inicio:</label> 
        <div class="col-sm-3">      
            <div class='input-group date' id='horainicio'>
                <input type='text' class="form-control" id='fecna' name="horainicio" placeholder="Hora Inicio" />
                <span class="input-group-addon">
                    <span class="icon-calendar"></span>
                </span>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="horafin">Hora fin:</label> 
        <div class="col-sm-3">      
            <div class='input-group date' id='horafin'>
                <input type='text' class="form-control" id='fecna' name="horafin" placeholder="Hora Fin" />
                <span class="input-group-addon">
                    <span class="icon-calendar"></span>
                </span>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="obj_asignatura_id">Asignatura: </label> 
        <div class="col-sm-2">              
            <input readonly="true"  class="form-control"  id="obj_asignatura_id" class="input-mini" name="id_asignatura" type="text" size="5" maxlength="5" />  
        </div>
        <div class="col-sm-1">              
            <a class="btn btn-primary btn-sm" id="obj_asignatura_button" href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>        
        <label class="col-sm-7" for="obj_asignatura_desc" id="obj_asignatura_desc"></label>                     
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
                            $('#horarioForm')
                        .bootstrapValidator({
                            container: '#messages',
                                feedbackIcons: {
                                    valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                                validating: 'glyphicon glyphicon-refresh'
                                    },
                    fields: {
                        dia: {
                               validators: {
                            notEmpty: {
                                message: 'Debe introducir un dia'
                                },
                            stringLength: {
                                    max: 255,
                                message: 'El dia debe tener como m�ximo 255 caracteres'
                        }
                      }
                },
                 horainicio: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir una fecha de nacimiento'
                                },
                                date: {
                                    format: 'DD/MM/YYYY',
                                    message: 'La fecha de nacimiento no tiene formato DD/MM/YYYY'
                                }
                            }
                        },
                
                 horafin: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir una fecha de nacimiento'
                                },
                                date: {
                                    format: 'DD/MM/YYYY',
                                    message: 'La fecha de nacimiento no tiene formato DD/MM/YYYY'
                                }
                            }
                        },
                
                    id_asignatura: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe elegir un asignatura'
                                },
                                integer: {
                                    message: 'El identificador de asignatura debe ser un entero'
                                }
                            }
                        },
                       
                    }
                } 
            } 
          })
             
                .on('change', '[name="id_asignatura"]', function() {
                    $('#diaForm').bootstrapValidator('revalidateField', 'id_asignatura');
                })

                
    });       

    
    
</script>
