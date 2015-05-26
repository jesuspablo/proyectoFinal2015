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


function fProfesorRoutes() {

//    Path.map("#/profesor").to(function () {
//        $('#indexContenidoJsp').spinner();
//        control('profesor').list($('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);
//        //profesorControl.modalListEventsLoading(profesorObject, profesorView, $('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);        
//        $('#indexContenidoJsp').empty();
//        return false;
//    });

    Path.map("#/profesor").to(function () {
        $('#indexContenidoJsp').spinner();
        oProfesorControl.list($('#indexContenido'), param().defaultizeUrlObjectParameters({}), null, oProfesorModel, oProfesorView);
        //profesorControl.modalListEventsLoading(profesorObject, profesorView, $('#indexContenido'), param().defaultizeUrlObjectParameters({}), null);        
        $('#indexContenidoJsp').empty();
        //$('#indexContenidoJsp').append(oProfesorControl.getClassNameProfesor());
        return false;
    });

    Path.map("#/profesor/list/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oProfesorControl.list($('#indexContenido'), paramsObject, null, oProfesorModel, oProfesorView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/profesor/view/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oProfesorControl.view($('#indexContenido'), paramsObject['id'], oProfesorModel, oProfesorView);
        $('#indexContenidoJsp').empty();

        return false;
    });

    Path.map("#/profesor/edit/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oProfesorControl.edit($('#indexContenido'), paramsObject['id'], oProfesorModel, oProfesorView);
        $('#indexContenidoJsp').empty();
    });
    Path.map("#/profesor/new").to(function () {
        $('#indexContenidoJsp').spinner();
        //var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oProfesorControl.new($('#indexContenido'), null, oProfesorModel, oProfesorView);
        $('#indexContenidoJsp').empty();
        return false;
    });
    Path.map("#/profesor/new/:url").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oProfesorControl.new($('#indexContenido'), paramsObject, oProfesorModel, oProfesorView);
        $('#indexContenidoJsp').empty();
        return false;
    });

    Path.map("#/profesor/remove/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oProfesorControl.remove($('#indexContenido'), paramsObject['id'], oProfesorModel, oProfesorView);
        $('#indexContenidoJsp').empty();
        return false;
    });
    Path.map("#/profesor/upload/:id").to(function () {
        $('#indexContenidoJsp').spinner();
        var paramsObject = param().defaultizeUrlObjectParameters(param().getUrlObjectFromUrlString(this.params['url']));
        oProfesorControl.upload($('#indexContenido'), paramsObject['id'], oProfesorModel, oProfesorView);
        $('#indexContenidoJsp').empty();
    });
}