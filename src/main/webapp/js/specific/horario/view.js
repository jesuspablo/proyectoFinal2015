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


var horarioView = function (strClase) {
    this.clase = strClase;
};
horarioView.prototype = new view('horario');
horarioView.prototype.getClassNameHorario = function () {
    return this.getClassName() + "Vista";
};
var oHorarioView = new horarioView('horario');


horarioView.prototype.loadButtons = function (id) {

    var botonera = "";
    botonera += '<div class="btn-toolbar" role="toolbar"><div class="btn-group btn-group-xs">';
    botonera += '<a class="btn btn-default view" id="' + id + '"  href="jsp#/' + this.clase + '/view/' + id + '"><i class="glyphicon glyphicon-eye-open"></i></a>';
     botonera += '</div></div>';
    return botonera;

}
horarioView.prototype.loadFormValues = function (valores, campos) {
//                    $('#horario_form #titulo').val(valores['titulo']);
//                    $('#horario_form #contenido').val(valores['contenido']);
//                    $('#horario_form #alta').val(valores['alta']);
//                    $('#horario_form #cambio').val(valores['cambio']);
//                    $('#horario_form #hits').val(valores['hits']);
//                    $('#horario_form #id_asignatura').val(valores['id_asignatura']);
//                    $('#horario_form #etiquetas').val(valores['etiquetas']);
//                    $('#horario_form #publicado').val(valores['publicado']);
//                    $('#horario_form #portada').val(valores['portada']);
    this.doFillForm(valores, campos);
};

horarioView.prototype.getFormValues = function () {
    var valores = [];
//                    valores['titulo'] = $('#horario_form #titulo');
//                    valores['contenido'] = $('#horario_form #contenido');
//                    valores['alta'] = $('#horario_form #alta');
//                    valores['cambio'] = $('#horario_form #cambio');
//                    valores['hits'] = $('#horario_form #hits');
//                    valores['id_asignatura'] = $('#horario_form #id_asignatura');
//                    valores['etiquetas'] = $('#horario_form #etiquetas');
//                    valores['publicado'] = $('#horario_form #publicado');
//                    valores['portada'] = $('#horario_form #portada');

    var disabled = $('#horarioForm').find(':input:disabled').removeAttr('disabled');
    valores = $('#horarioForm').serializeObject();
    disabled.attr('disabled', 'disabled');
    return valores;
};

horarioView.prototype.doEventsLoading = function () {
    var thisObject = this;
    $('#horarioForm #obj_asignatura_button').unbind('click');
    $("#horarioForm #obj_asignatura_button").click(function () {
        var oControl = oAsignaturaControl;  //para probar dejar horario
        //vista('asignatura').cargaModalBuscarClaveAjena('#modal01', "horario");

        $("#horarioForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elige una asignatura'), "", thisObject.getFormFooter(), true);

        $('#horarioForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oAsignaturaModel, oAsignaturaView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_asignatura_id').val(id).change();
            $('#obj_asignatura_desc').text(decodeURIComponent(oAsignaturaModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oAsignaturaModel, oAsignaturaView);
        return false;
    });
    $('#horarioForm #obj_tipohorario_button').unbind('click');
    $("#horarioForm #obj_tipohorario_button").click(function () {
        var oControl = oTipohorarioControl;

        $("#horarioForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección de tipo de horario'), "", thisObject.getFormFooter(), true);

        $('#horarioForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oTipohorarioModel, oTipohorarioView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_tipohorario_id').val(id).change();
            $('#obj_tipohorario_desc').text(decodeURIComponent(oTipohorarioModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oTipohorarioModel, oTipohorarioView);
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

        $('#horarioForm').append(thisObject.getEmptyModal());

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

horarioView.prototype.okValidation = function (f) {
    $('#horarioForm').on('success.form.bv', f);
};