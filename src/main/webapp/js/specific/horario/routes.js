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


function fHorarioRoutes() {

//    Path.map("#/horario").to(function () {
//        $('#indexContenidoJsp').spinner();
//        control('horario').list($('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);
//        //horarioControl.modalListEventsLoading(horarioObject, horarioView, $('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);        
//        $('#indexContenidoJsp').empty();
//        return false;
//    });

    Path.map("#/horario").to(function () {
        $('#indexContenidoJsp').spinner();
        oHorarioControl.list($('#indexContenido'), param().defaultizeUrlObjectParameters({}), null, oHorarioModel, oHorarioView);
        //horarioControl.modalListEventsLoading(horarioObject, horarioView, $('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);        
        $('#indexContenidoJsp').empty();
        //$('#indexContenidoJsp').append(oHorarioControl.getClassNameHorario());
        return false;
    });

    Path.map("#/horario/list/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oHorarioControl.list($('#indexContenido'), paramsObject, null, oHorarioModel, oHorarioView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/horario/view/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oHorarioControl.view($('#indexContenido'), paramsObject['id'], oHorarioModel, oHorarioView);
        $('#indexContenidoJsp').empty();

        return false;
    });

    Path.map("#/horario/edit/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oHorarioControl.edit($('#indexContenido'), paramsObject['id'], oHorarioModel, oHorarioView);
        $('#indexContenidoJsp').empty();
    });
    Path.map("#/horario/new").to(function () {
        $('#indexContenidoJsp').spinner();
        //var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oHorarioControl.new($('#indexContenido'), null, oHorarioModel, oHorarioView);
        $('#indexContenidoJsp').empty();
        return false;
    });
    Path.map("#/horario/new/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oHorarioControl.new($('#indexContenido'), paramsObject, oHorarioModel, oHorarioView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/horario/remove/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oHorarioControl.remove($('#indexContenido'), paramsObject['id'], oHorarioModel, oHorarioView);
        $('#indexContenidoJsp').empty();
        return false;
    });
}