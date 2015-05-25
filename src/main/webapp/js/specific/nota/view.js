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


var notaView = function (strClase) {
    this.clase = strClase;
};
notaView.prototype = new view('nota');
notaView.prototype.getClassNameNota = function () {
    return this.getClassName() + "Vista";
};
var oNotaView = new notaView('nota');


notaView.prototype.loadButtons = function (id) {

    var botonera = "";
    botonera += '<div class="btn-toolbar" role="toolbar"><div class="btn-group btn-group-xs">';
    botonera += '<a class="btn btn-default view" id="' + id + '"  href="jsp#/' + this.clase + '/view/' + id + '"><i class="glyphicon glyphicon-eye-open"></i></a>';
    botonera += '</div></div>';
    return botonera;

}
notaView.prototype.loadFormValues = function (valores, campos) {
//                    $('#nota_form #titulo').val(valores['titulo']);
//                    $('#nota_form #contenido').val(valores['contenido']);
//                    $('#nota_form #alta').val(valores['alta']);
//                    $('#nota_form #cambio').val(valores['cambio']);
//                    $('#nota_form #hits').val(valores['hits']);
//                    $('#nota_form #id_asignatura').val(valores['id_asignatura']);
//                    $('#nota_form #etiquetas').val(valores['etiquetas']);
//                    $('#nota_form #publicado').val(valores['publicado']);
//                    $('#nota_form #portada').val(valores['portada']);
    this.doFillForm(valores, campos);
};

notaView.prototype.getFormValues = function () {
    var valores = [];
//                    valores['titulo'] = $('#nota_form #titulo');
//                    valores['contenido'] = $('#nota_form #contenido');
//                    valores['alta'] = $('#nota_form #alta');
//                    valores['cambio'] = $('#nota_form #cambio');
//                    valores['hits'] = $('#nota_form #hits');
//                    valores['id_asignatura'] = $('#nota_form #id_asignatura');
//                    valores['etiquetas'] = $('#nota_form #etiquetas');
//                    valores['publicado'] = $('#nota_form #publicado');
//                    valores['portada'] = $('#nota_form #portada');

    var disabled = $('#notaForm').find(':input:disabled').removeAttr('disabled');
    valores = $('#notaForm').serializeObject();
    disabled.attr('disabled', 'disabled');
    return valores;
};

notaView.prototype.doEventsLoading = function () {
    var thisObject = this;
    $('#notaForm #obj_asignatura_button').unbind('click');
    $("#notaForm #obj_asignatura_button").click(function () {
        var oControl = oAsignaturaControl;  //para probar dejar nota
        //vista('asignatura').cargaModalBuscarClaveAjena('#modal01', "nota");

        $("#notaForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elige la asignatura'), "", thisObject.getFormFooter(), true);

        $('#notaForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oAsignaturaModel, oAsignaturaView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_asignatura_id').val(id).change();
            $('#obj_asignatura_desc').text(decodeURIComponent(oAsignaturaModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oAsignaturaModel, oAsignaturaView);
        return false;
    });
    $('#notaForm #obj_alumno_button').unbind('click');
    $("#notaForm #obj_alumno_button").click(function () {
        var oControl = oAlumnoControl;

        $("#notaForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección del Alumno'), "", thisObject.getFormFooter(), true);

        $('#notaForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oAlumnoModel, oAlumnoView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_alumno_id').val(id).change();
            $('#obj_alumno_desc').text(decodeURIComponent(oAlumnoModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oAlumnoModel, oAlumnoView);
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

        $('#notaForm').append(thisObject.getEmptyModal());

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

notaView.prototype.okValidation = function (f) {
    $('#notaForm').on('success.form.bv', f);
};