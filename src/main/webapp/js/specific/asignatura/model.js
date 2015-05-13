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

var asignaturaModel = function (strClase) {
    this.clase = strClase;
};
asignaturaModel.prototype = new model('asignatura');
asignaturaModel.prototype.getClassNameAsignatura = function () {
    return this.getClassName() + "Modelo";
};
var oAsignaturaModel = new asignaturaModel('asignatura');

asignaturaModel.prototype.getMisCursos = function () {
    $.when(ajax().ajaxCallSync(this.urlJson + '&op=getpage&page=1&rpp=10&filter=id_nivel&filteroperator=equals&filtervalue=2', 'GET', '')).done(function (data) {
        
        feedback = data;
    });
    return feedback;
};