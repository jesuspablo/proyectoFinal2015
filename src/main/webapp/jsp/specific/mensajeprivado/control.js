/* 
 * Copyright (C) 2014 rafa
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

var mensajeprivadoControl = function (strClase) {
    this.clase = strClase;
};
mensajeprivadoControl.prototype = new control('mensajeprivado');
mensajeprivadoControl.prototype.getClassNameMensajeprivado = function () {
    return this.getClassName() + "Control";
};
var oMensajeprivadoControl = new mensajeprivadoControl('mensajeprivado');


mensajeprivadoControl.prototype.edit = function (place, id, oModel, oView) {
    var thisObject = this;
    $(place).empty();
    $(place).append(oView.getPanel("Edición de " + this.clase, oView.getEmptyForm()));
    var oDocumentoModel = oModel;
    oDocumentoModel.loadAggregateViewOne(id);
    var datosCacheados = oDocumentoModel.getCachedOne();
    oView.loadFormValues(datosCacheados, oDocumentoModel.getCachedFieldNames());
    $('#id').attr("disabled", true);
    oView.doEventsLoading();
    $('#submitForm').unbind('click');
    $('#submitForm').click(function () {
        oView.okValidation(function (e) {
            resultado = oModel.setOne({json: JSON.stringify(oView.getFormValues())});
            oView.doResultOperationNotifyToUser(place, resultado["status"], "Se ha actualizado el registro con id=" + resultado["message"], resultado["message"], true);
            e.preventDefault();
            return false;
        });
    });
};

mensajeprivadoControl.prototype.new = function (place, objParams, oModel, oView) {
    var thisObject = this;
    $(place).empty();
    $(place).append(oView.getPanel("Alta de " + this.clase, oView.getEmptyForm()));
    
    //id must not be enabled
    $('#id').val('0').attr("disabled", true);
        
    if (objParams != null) {
        $('#obj_usuario_2_id').val(objParams);
    } else {
    }
    oView.doEventsLoading();
    //soporte de claves ajenas
    /*var selector = objParams["systemfilter"].replace('id_', 'obj_');
    $('#' + selector + "_id").val(objParams["systemfiltervalue"]).attr("disabled", true);
    $('#' + selector + "_button").attr("disabled", true).hide();
    var oModelo = "o" + objParams["systemfilter"].replace('id_', '').charAt(0).toUpperCase() + objParams["systemfilter"].replace('id_', '').slice(1) + "Model";
    $('#' + selector + '_desc').text(decodeURIComponent(window[oModelo].getMeAsAForeignKey(objParams["systemfiltervalue"])));*/
    //--
    $('#submitForm').unbind('click');
    $('#submitForm').click(function () {
        oView.okValidation(function (e) {
            resultado = oModel.setOne({json: JSON.stringify(oView.getFormValues())});
            oView.doResultOperationNotifyToUser(place, resultado["status"], "Se ha creado el registro con id=" + resultado["message"], resultado["message"], true);
            e.preventDefault();
            return false;
        });
    });
};