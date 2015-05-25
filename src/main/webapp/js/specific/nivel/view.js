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


var nivelView = function (strClase) {
    this.clase = strClase;
};
nivelView.prototype = new view('nivel');
nivelView.prototype.getClassNameNivel = function () {
    return this.getClassName() + "Vista";
};
var oNivelView = new nivelView('nivel');


nivelView.prototype.loadButtons = function (id) {

    var botonera = "";
    botonera += '<div class="btn-toolbar" role="toolbar"><div class="btn-group btn-group-xs">';
    botonera += '<a class="btn btn-default view" id="' + id + '"  href="jsp#/' + this.clase + '/view/' + id + '"><i class="glyphicon glyphicon-eye-open"></i></a>';
    botonera += '</div></div>';
    return botonera;

}
nivelView.prototype.loadFormValues = function (valores, campos) {
//                    $('#nivel_form #titulo').val(valores['titulo']);
//                    $('#nivel_form #contenido').val(valores['contenido']);
//                    $('#nivel_form #alta').val(valores['alta']);
//                    $('#nivel_form #cambio').val(valores['cambio']);
//                    $('#nivel_form #hits').val(valores['hits']);
//                    $('#nivel_form #id_usuario').val(valores['id_usuario']);
//                    $('#nivel_form #etiquetas').val(valores['etiquetas']);
//                    $('#nivel_form #publicado').val(valores['publicado']);
//                    $('#nivel_form #portada').val(valores['portada']);
    this.doFillForm(valores, campos);
};

nivelView.prototype.getFormValues = function () {
    var valores = [];
//                    valores['titulo'] = $('#nivel_form #titulo');
//                    valores['contenido'] = $('#nivel_form #contenido');
//                    valores['alta'] = $('#nivel_form #alta');
//                    valores['cambio'] = $('#nivel_form #cambio');
//                    valores['hits'] = $('#nivel_form #hits');
//                    valores['id_usuario'] = $('#nivel_form #id_usuario');
//                    valores['etiquetas'] = $('#nivel_form #etiquetas');
//                    valores['publicado'] = $('#nivel_form #publicado');
//                    valores['portada'] = $('#nivel_form #portada');

    var disabled = $('#nivelForm').find(':input:disabled').removeAttr('disabled');
    valores = $('#nivelForm').serializeObject();
    disabled.attr('disabled', 'disabled');
    return valores;
};

nivelView.prototype.doEventsLoading = function () {
    var thisObject = this;
    $('#nivelForm #obj_usuario_button').unbind('click');
    $("#nivelForm #obj_usuario_button").click(function () {
        var oControl = oUsuarioControl;  //para probar dejar nivel
        //vista('usuario').cargaModalBuscarClaveAjena('#modal01', "nivel");

        $("#nivelForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección de usuario'), "", thisObject.getFormFooter(), true);

        $('#nivelForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oUsuarioModel, oUsuarioView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_usuario_id').val(id).change();
            $('#obj_usuario_desc').text(decodeURIComponent(oUsuarioModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oUsuarioModel, oUsuarioView);
        return false;
    });
    $('#nivelForm #obj_tiponivel_button').unbind('click');
    $("#nivelForm #obj_tiponivel_button").click(function () {
        var oControl = oTiponivelControl;

        $("#nivelForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección de tipo de nivel'), "", thisObject.getFormFooter(), true);

        $('#nivelForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oTiponivelModel, oTiponivelView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_tiponivel_id').val(id).change();
            $('#obj_tiponivel_desc').text(decodeURIComponent(oTiponivelModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oTiponivelModel, oTiponivelView);
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

        $('#nivelForm').append(thisObject.getEmptyModal());

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

nivelView.prototype.okValidation = function (f) {
    $('#nivelForm').on('success.form.bv', f);
};