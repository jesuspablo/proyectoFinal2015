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


var alumnoModel = function (strClase) {
    this.clase = strClase;
};
alumnoModel.prototype = new model('alumno');
alumnoModel.prototype.getClassNameAlumno = function () {
    return this.getClassName() + "Modelo";
};
var oAlumnoModel = new alumnoModel('alumno');

alumnoModel.prototype.getCachedPrettyFieldNames = function () {
    var prettyFieldNames = this.cPrettyFieldNames;
    var i = prettyFieldNames.indexOf("Contraseña");    
    prettyFieldNames.splice(i, 1);
    
    return prettyFieldNames;
};

alumnoModel.prototype.getCachedFieldNames = function () {
    var fieldNames = this.cFieldNames;
    var i = fieldNames.indexOf("password");    
    fieldNames.splice(i, 1);
    
    return this.cFieldNames;
};