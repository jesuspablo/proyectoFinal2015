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


var mensajeprivadoView = function (strClase) {
    this.clase = strClase;
};
mensajeprivadoView.prototype = new view('mensajeprivado');
mensajeprivadoView.prototype.getClassNameMensajeprivado = function () {
    return this.getClassName() + "Vista";
};
var oMensajeprivadoView = new mensajeprivadoView('mensajeprivado');

mensajeprivadoView.prototype.doEventsLoading = function () {
    var thisObject = this;
    $('#mensajeprivadoForm #obj_usuario_1_button').unbind('click');
    $("#mensajeprivadoForm #obj_usuario_1_button").click(function () {
        var oControl = oUsuarioControl;  //para probar dejar documento
        //vista('usuario').cargaModalBuscarClaveAjena('#modal01', "documento");

        $("#mensajeprivadoForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección de usuario'), "", thisObject.getFormFooter(), true);

        $('#mensajeprivadoForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oUsuarioModel, oUsuarioView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_usuario_1_id').val(id).change();
            $('#obj_usuario_1_desc').text(decodeURIComponent(oUsuarioModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oUsuarioModel, oUsuarioView);
        return false;
    });
    $('#mensajeprivadoForm #obj_usuario_2_button').unbind('click');
    $("#mensajeprivadoForm #obj_usuario_2_button").click(function () {
        var oControl = oUsuarioControl;  //para probar dejar documento
        //vista('usuario').cargaModalBuscarClaveAjena('#modal01', "documento");

        $("#mensajeprivadoForm").append(thisObject.getEmptyModal());
        util().loadForm('#modal01', thisObject.getFormHeader('Elección de usuario'), "", thisObject.getFormFooter(), true);

        $('#mensajeprivadoForm').append(thisObject.getEmptyModal());

        oControl.list('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), true, oUsuarioModel, oUsuarioView);
        oControl.modalListEventsLoading('#modal01 #modal-body', param().defaultizeUrlObjectParameters({}), function (id) {
            $('#obj_usuario_2_id').val(id).change();
            $('#obj_usuario_2_desc').text(decodeURIComponent(oUsuarioModel.getMeAsAForeignKey(id)));
            $('#modal01').modal('hide');

        },oUsuarioModel, oUsuarioView);
        return false;
    });
};

mensajeprivadoView.prototype.loadButtons = function (id) {
    var page = oMensajeprivadoModel.getCachedPage();
    var pagelength = page.length;
    var idNow = id;
    var id_usuario_1;
    
    for (var i=0;i<pagelength;i++) {
        if (page[i]["id"] == idNow) {
            id_usuario_1 = page[i]["id_usuario_1"];
        }
    }
    
    var botonera = "";
    botonera += '<div class="btn-toolbar" role="toolbar"><div class="btn-group btn-group-xs">';
    botonera += '<a class="btn btn-default view" id="' + id + '"  href="jsp#/' + this.clase + '/view/' + id + '"><i class="glyphicon glyphicon-eye-open"></i></a>';
    botonera += '<a class="btn btn-default edit" id="' + id + '"  href="jsp#/' + this.clase + '/edit/' + id + '"><i class="glyphicon glyphicon-pencil"></i></a>';
    botonera += '<a class="btn btn-default remove" id="' + id + '"  href="jsp#/' + this.clase + '/remove/' + id + '"><i class="glyphicon glyphicon-remove"></i></a>';
    botonera += '<a class="btn btn-default mp" id="' + id + '"  href="jsp#/' + "mensajeprivado" + '/new/' + id_usuario_1 + '"><i class="glyphicon glyphicon-envelope"></i></a>';
    botonera += '</div></div>';
    return botonera;
};

mensajeprivadoView.prototype.printValue = function (value, valor, recortar) {
    var thisObject = this;
    var strResult = "";
    if (/obj_usuario_/.test(valor)) {
        if (value[valor].id > 0) {
            val = valor.substring(4);
            val = val.substring(0, val.length-2);
            strResult = '<a href="jsp#/' + val + '/view/' + value[valor].id + '">' + value[valor].id + ":" + value[valor].login + '</a>';
        } else {
            strResult = '???';
        }
    } else if (/obj_/.test(valor)) {
        if (value[valor].id > 0) {
            strResult = '<a href="jsp#/' + valor.substring(4) + '/view/' + value[valor].id + '">' + value[valor].id + ":" + util().getForeign(value[valor]) + '</a>';
            
        } else {
            strResult = '???';
        }
    } else {
        switch (value[valor]) {
            case true:
                strResult = '<i class="glyphicon glyphicon-ok"></i>';
                break;
            case false:
                strResult = '<i class="glyphicon glyphicon-remove"></i>';
                break;
            default:
                strResult = decodeURIComponent(value[valor]);
                
                if (/mensaje/.test(valor)) {                    
                } else {
                    if (recortar) 
                        if (strResult.length > 50) //don't show too long fields
                            strResult = strResult.substr(0, 20) + " ...";
                }            

            };
    };
    return strResult;
};