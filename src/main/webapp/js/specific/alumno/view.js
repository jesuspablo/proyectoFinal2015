/* 
 * Copyright (C) 2014 raznara
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */


var alumnoView = function (strClase) {
    this.clase = strClase;
};
alumnoView.prototype = new view('alumno');
alumnoView.prototype.getClassNameAlumno = function () {
    return this.getClassName() + "Vista";
};
var oAlumnoView = new alumnoView('alumno');


alumnoView.prototype.loadButtons = function (id) {

    var botonera = "";
    
    botonera += '<div class="btn-toolbar" role="toolbar"><div class="btn-group btn-group-xs">';

    botonera += '<a class="btn btn-default view" id="' + id + '"  href="jsp#/' + this.clase + '/view/' + id + '"><i class="glyphicon glyphicon-eye-open"></i></a>';
    botonera += '<a class="btn btn-default edit" id="' + id + '"  href="jsp#/' + this.clase + '/edit/' + id + '"><i class="glyphicon glyphicon-pencil"></i></a>';

    botonera += '<a class="btn btn-default upload" id="' + id + '"  href="jsp#/' + this.clase + '/upload/' + id + '"><i class="glyphicon glyphicon-picture"></i></a>';

    botonera += '</div></div>';
    return botonera;

}
alumnoView.prototype.loadFormValues = function (valores, campos) {
this.doFillForm(valores, campos);
};

alumnoView.prototype.getFormValues = function () {
    var valores = [];                
    var disabled = $('#alumnoForm').find(':input:disabled').removeAttr('disabled');
    valores = $('#alumnoForm').serializeObject();
    disabled.attr('disabled', 'disabled');
    return valores;
};

alumnoView.prototype.doEventsLoading = function () {
    var thisObject = this;
    $('#alumnoForm #obj_usuario_button').unbind('click');
    $("#alumnoForm #obj_usuario_button").click(function () {
        var oControl = oUsuarioControl;  //para probar dejar alumno
        //vista('usuario').cargaModalBuscarClaveAjena('#modal01', "alumno");

        $("#alumnoForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección el tipo de Usuario'), "", thisObject.getFormFooter(), true);

        $('#alumnoForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oUsuarioModel, oUsuarioView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_usuario_id').val(id).change();
            $('#obj_usuario_desc').text(decodeURIComponent(oUsuarioModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oUsuarioModel, oUsuarioView);
        return false;
    });
    
   
    
    $('#alumnoForm #obj_nivel_button').unbind('click');
    $("#alumnoForm #obj_nivel_button").click(function () {
        var oControl = oNivelControl;  //para probar dejar alumno
        //vista('usuario').cargaModalBuscarClaveAjena('#modal01', "alumno");

        $("#alumnoForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elige el nivel del Alumno'), "", thisObject.getFormFooter(), true);

        $('#alumnoForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oNivelModel, oNivelView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_nivel_id').val(id).change();
            $('#obj_nivel_desc').text(decodeURIComponent(oNivelModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oNivelModel, oNivelView);
        return false;
    });
    
    $('#contenido_button').unbind('click');
    $('#contenido_button').click(function () {
        //cabecera = '<button id="full-width" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>' + '<h3 id="myModalLabel">Edición de contenidos</h3>';
        cabecera = thisObject.getFormHeader('Edición de contenidos');
        //pie = '<button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cerrar</button>';                        
        pie = '<a class="btn btn-primary" href="http://creoleparser.googlecode.com/svn/trunk/creoleparser/test_pages/CheatSheetPlus.html">Sintaxis</a>';
        pie += thisObject.getFormFooter();
        contenido = '<div class="row"><div class="col-md-6">';
        contenido += '<textarea type="text" id="contenidomodal" name="contenido" rows="20" cols="70" placeholder="contenido"></textarea>';
        contenido += '</div><div class="col-md-6"><div id="textoparseado"></div></div>';
        contenido += '</div>';

        $('#alumnoForm').append(thisObject.getEmptyModal());

        util().loadForm('#modal01', cabecera, contenido, pie, true);
        var texto = $('#contenido').val();
        $('#contenidomodal').val(texto);
        util().creoleParse(texto, $('#textoparseado'));
        $('#contenido').val($('#contenidomodal').val());
        $('#contenidomodal').keyup(function () {
            util().creoleParse($('#contenidomodal').val(), $('#textoparseado'));
            $('#contenido').val($('#contenidomodal').val());
        });
        return false;
    });
};

 
    

alumnoView.prototype.okValidation = function (f) {
    $('#alumnoForm').on('success.form.bv', f);
};
