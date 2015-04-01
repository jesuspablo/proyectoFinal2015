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


var asignaturaView = function (strClase) {
    this.clase = strClase;
};
asignaturaView.prototype = new view('asignatura');
asignaturaView.prototype.getClassNameAsignatura = function () {
    return this.getClassName() + "Vista";
};
var oAsignaturaView = new asignaturaView('asignatura');


asignaturaView.prototype.loadButtons = function (id) {

    var botonera = "";
    botonera += '<div class="btn-toolbar" role="toolbar"><div class="btn-group btn-group-xs">';
    botonera += '<a class="btn btn-default view" id="' + id + '"  href="jsp#/' + this.clase + '/view/' + id + '"><i class="glyphicon glyphicon-eye-open"></i></a>';
    botonera += '<a class="btn btn-default edit" id="' + id + '"  href="jsp#/' + this.clase + '/edit/' + id + '"><i class="glyphicon glyphicon-pencil"></i></a>';
    botonera += '<a class="btn btn-default remove" id="' + id + '"  href="jsp#/' + this.clase + '/remove/' + id + '"><i class="glyphicon glyphicon-remove"></i></a>';
    botonera += '</div></div>';
    return botonera;

}
asignaturaView.prototype.loadFormValues = function (valores, campos) {
//                    $('#asignatura_form #titulo').val(valores['titulo']);
//                    $('#asignatura_form #contenido').val(valores['contenido']);
//                    $('#asignatura_form #alta').val(valores['alta']);
//                    $('#asignatura_form #cambio').val(valores['cambio']);
//                    $('#asignatura_form #hits').val(valores['hits']);
//                    $('#asignatura_form #id_usuario').val(valores['id_usuario']);
//                    $('#asignatura_form #etiquetas').val(valores['etiquetas']);
//                    $('#asignatura_form #publicado').val(valores['publicado']);
//                    $('#asignatura_form #portada').val(valores['portada']);
    this.doFillForm(valores, campos);
};

asignaturaView.prototype.getFormValues = function () {
    var valores = [];
//                    valores['titulo'] = $('#asignatura_form #titulo');
//                    valores['contenido'] = $('#asignatura_form #contenido');
//                    valores['alta'] = $('#asignatura_form #alta');
//                    valores['cambio'] = $('#asignatura_form #cambio');
//                    valores['hits'] = $('#asignatura_form #hits');
//                    valores['id_usuario'] = $('#asignatura_form #id_usuario');
//                    valores['etiquetas'] = $('#asignatura_form #etiquetas');
//                    valores['publicado'] = $('#asignatura_form #publicado');
//                    valores['portada'] = $('#asignatura_form #portada');

    var disabled = $('#asignaturaForm').find(':input:disabled').removeAttr('disabled');
    valores = $('#asignaturaForm').serializeObject();
    disabled.attr('disabled', 'disabled');
    return valores;
};

asignaturaView.prototype.doEventsLoading = function () {
    var thisObject = this;
    $('#asignaturaForm #obj_usuario_button').unbind('click');
    $("#asignaturaForm #obj_usuario_button").click(function () {
        var oControl = oUsuarioControl;  //para probar dejar asignatura
        //vista('usuario').cargaModalBuscarClaveAjena('#modal01', "asignatura");

        $("#asignaturaForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección de usuario'), "", thisObject.getFormFooter(), true);

        $('#asignaturaForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oUsuarioModel, oUsuarioView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_usuario_id').val(id).change();
            $('#obj_usuario_desc').text(decodeURIComponent(oUsuarioModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oUsuarioModel, oUsuarioView);
        return false;
    });
    $('#asignaturaForm #obj_tipoasignatura_button').unbind('click');
    $("#asignaturaForm #obj_tipoasignatura_button").click(function () {
        var oControl = oTipoasignaturaControl;

        $("#asignaturaForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección de tipo de asignatura'), "", thisObject.getFormFooter(), true);

        $('#asignaturaForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oTipoasignaturaModel, oTipoasignaturaView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_tipoasignatura_id').val(id).change();
            $('#obj_tipoasignatura_desc').text(decodeURIComponent(oTipoasignaturaModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oTipoasignaturaModel, oTipoasignaturaView);
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

        $('#asignaturaForm').append(thisObject.getEmptyModal());

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

asignaturaView.prototype.okValidation = function (f) {
    $('#asignaturaForm').on('success.form.bv', f);
};