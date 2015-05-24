/*
 * Copyright (C) July 2014 Rafael Aznar
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
package net.daw.control.operation.generic.specific.implementation;

import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl;
import net.daw.connection.implementation.BoneConnectionPoolImpl;
import net.daw.connection.publicinterface.ConnectionInterface;
import net.daw.control.operation.generic.implementation.ControlOperationGenImpl;
import net.daw.helper.FilterBeanHelper;
import net.daw.helper.ParameterCooker;
import net.daw.service.generic.specific.implementation.AsignaturaServiceGenSpImpl;

public class AsignaturaControlOperationGenSpImpl extends ControlOperationGenImpl {

    private ConnectionInterface DataConnectionSource = null;
    private Connection oConnection = null;
    private AsignaturaServiceGenSpImpl oAsignaturaService = null;

    public AsignaturaControlOperationGenSpImpl(HttpServletRequest request) throws ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, IllegalArgumentException, InvocationTargetException, Exception {
        super(request);
        DataConnectionSource = new BoneConnectionPoolImpl();
        oConnection = DataConnectionSource.newConnection();
        oAsignaturaService = new AsignaturaServiceGenSpImpl(ParameterCooker.prepareObject(request), ParameterCooker.prepareObject(request), oConnection);
    }

    public String getpaginaAsignatura(HttpServletRequest request) throws Exception {
        String result = "";
        if (perm) {
            Integer intRegsPerPag = ParameterCooker.prepareRpp(request);
            Integer intPage = ParameterCooker.preparePage(request);
            ArrayList<FilterBeanHelper> alFilter = ParameterCooker.prepareFilter(request);
            HashMap<String, String> hmOrder = ParameterCooker.prepareOrder(request);
            result = oService.getPage(intRegsPerPag, intPage, alFilter, hmOrder);
            closeDB();
        } else {
            result = "error";
        }

        return result;
    }

    public String getpaginasAsignaturas(HttpServletRequest request) throws Exception {
        String result = "";
        if (perm) {
            Integer intRegsPerPag = ParameterCooker.prepareRpp(request);
            ArrayList<FilterBeanHelper> alFilter = ParameterCooker.prepareFilter(request);
            UsuarioBeanGenSpImpl oUsuario = new UsuarioBeanGenSpImpl();
            oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");
            result = oAsignaturaService.getPagesAsignaturaFiltrada(oUsuario.getId(), intRegsPerPag, alFilter);
            //result = oService.getPages(intRegsPerPag, alFilter);
            closeDB();
        } else {
            result = "error";
        }
        return result;
    }

    public String getcountAsignaturas(HttpServletRequest request) throws Exception {
        String result = "";
        if (perm) {
            Integer intRegsPerPag = ParameterCooker.prepareRpp(request);
            ArrayList<FilterBeanHelper> alFilter = ParameterCooker.prepareFilter(request);
            result = oAsignaturaService.getCountAsignaturaFiltrada(intRegsPerPag, alFilter);
            //result = oService.getPages(intRegsPerPag, alFilter);
            closeDB();
        } else {
            result = "error";
        }
        return result;
    }

    
    
            
    
    public String getaggregateviewsomefiltradoasignaturas(HttpServletRequest request) throws Exception {
        String result = "";
        if (perm) {
             Integer intRegsPerPag = ParameterCooker.prepareRpp(request);
            Integer intPage = ParameterCooker.preparePage(request);
            ArrayList<FilterBeanHelper> alFilter = ParameterCooker.prepareFilter(request);
            HashMap<String, String> hmOrder = ParameterCooker.prepareOrder(request);
            
           UsuarioBeanGenSpImpl oUsuario = new UsuarioBeanGenSpImpl();
            oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");
            result = oAsignaturaService.getAggregateViewSomeAsignaturaFiltrado(oUsuario.getId() , intRegsPerPag, intPage, alFilter, hmOrder);
            closeDB();
        } else {
            result = "error";
        }
        return result;
    }
            
            
            
}
