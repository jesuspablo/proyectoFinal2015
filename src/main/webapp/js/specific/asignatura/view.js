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
    botonera += '</div></div>';
    return botonera;

}
asignaturaView.prototype.loadFormValues = function (valores, campos) {
//                    $('#asignatura_form #titulo').val(valores['titulo']);
//                    $('#asignatura_form #contenido').val(valores['contenido']);
//                    $('#asignatura_form #alta').val(valores['alta']);
//                    $('#asignatura_form #cambio').val(valores['cambio']);
//                    $('#asignatura_form #hits').val(valores['hits']);
//                    $('#asignatura_form #id_profesor').val(valores['id_profesor']);
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
//                    valores['id_profesor'] = $('#asignatura_form #id_profesor');
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
    $('#asignaturaForm #obj_profesor_button').unbind('click');
    $("#asignaturaForm #obj_profesor_button").click(function () {
        var oControl = oProfesorControl;  //para probar dejar asignatura
        //vista('profesor').cargaModalBuscarClaveAjena('#modal01', "asignatura");

        $("#asignaturaForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elige al Profesor'), "", thisObject.getFormFooter(), true);

        $('#asignaturaForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oProfesorModel, oProfesorView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_profesor_id').val(id).change();
            $('#obj_profesor_desc').text(decodeURIComponent(oProfesorModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oProfesorModel, oProfesorView);
        return false;
    });
    
   
    
    $('#asignaturaForm #obj_nivel_button').unbind('click');
    $("#asignaturaForm #obj_nivel_button").click(function () {
        var oControl = oNivelControl;  //para probar dejar asignatura
        //vista('profesor').cargaModalBuscarClaveAjena('#modal01', "asignatura");

        $("#asignaturaForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elige el nivel'), "", thisObject.getFormFooter(), true);

        $('#asignaturaForm').append(thisObject.getEmptyModal());

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
