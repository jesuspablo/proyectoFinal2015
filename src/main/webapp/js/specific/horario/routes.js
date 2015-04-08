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


function fNivelRoutes() {

//    Path.map("#/nivel").to(function () {
//        $('#indexContenidoJsp').spinner();
//        control('nivel').list($('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);
//        //nivelControl.modalListEventsLoading(nivelObject, nivelView, $('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);        
//        $('#indexContenidoJsp').empty();
//        return false;
//    });

    Path.map("#/nivel").to(function () {
        $('#indexContenidoJsp').spinner();
        oNivelControl.list($('#indexContenido'), param().defaultizeUrlObjectParameters({}), null, oNivelModel, oNivelView);
        //nivelControl.modalListEventsLoading(nivelObject, nivelView, $('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);        
        $('#indexContenidoJsp').empty();
        //$('#indexContenidoJsp').append(oNivelControl.getClassNameNivel());
        return false;
    });

    Path.map("#/nivel/list/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oNivelControl.list($('#indexContenido'), paramsObject, null, oNivelModel, oNivelView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/nivel/view/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oNivelControl.view($('#indexContenido'), paramsObject['id'], oNivelModel, oNivelView);
        $('#indexContenidoJsp').empty();

        return false;
    });

    Path.map("#/nivel/edit/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oNivelControl.edit($('#indexContenido'), paramsObject['id'], oNivelModel, oNivelView);
        $('#indexContenidoJsp').empty();
    });
    Path.map("#/nivel/new").to(function () {
        $('#indexContenidoJsp').spinner();
        //var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oNivelControl.new($('#indexContenido'), null, oNivelModel, oNivelView);
        $('#indexContenidoJsp').empty();
        return false;
    });
    Path.map("#/nivel/new/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oNivelControl.new($('#indexContenido'), paramsObject, oNivelModel, oNivelView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/nivel/remove/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oNivelControl.remove($('#indexContenido'), paramsObject['id'], oNivelModel, oNivelView);
        $('#indexContenidoJsp').empty();
        return false;
    });
}