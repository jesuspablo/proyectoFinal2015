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
package net.daw.service.generic.specific.implementation;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import net.daw.service.generic.implementation.TableServiceGenImpl;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import net.daw.bean.generic.specific.implementation.AsignaturaBeanGenSpImpl;
import net.daw.dao.generic.specific.implementation.AsignaturaDaoGenSpImpl;
import net.daw.helper.ExceptionBooster;
import net.daw.helper.FilterBeanHelper;

public class AsignaturaServiceGenSpImpl extends TableServiceGenImpl {

    public AsignaturaServiceGenSpImpl(String strObject, String pojo, Connection con) {
        super(strObject, pojo, con);
    }

    public String getCountAsignaturaFiltrada(Integer id_usuario, ArrayList<FilterBeanHelper> alFilter) throws Exception {
        String data = null;
        try {
            oConnection.setAutoCommit(false);

            AsignaturaDaoGenSpImpl oAsignaturaDAO = new AsignaturaDaoGenSpImpl(strObjectName, oConnection);
            int registers = oAsignaturaDAO.getCountAsignaturaFiltrada(id_usuario, alFilter);
            data = "{\"data\":\"" + Integer.toString(registers) + "\"}";
            oConnection.commit();

        } catch (Exception ex) {
            oConnection.rollback();
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getCount ERROR: " + ex.getMessage()));
        }
        return data;
    }

    public String getPageAsignaturaFiltrada(Integer id_usuario, int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        String data = null;
        try {
            oConnection.setAutoCommit(false);
            AsignaturaDaoGenSpImpl oAsignaturaDAO = new AsignaturaDaoGenSpImpl(strObjectName, oConnection);
            List<AsignaturaBeanGenSpImpl> oAsignaturas = oAsignaturaDAO.getPageAsignaturaFiltrada(id_usuario, intRegsPerPag, intPage, hmFilter, hmOrder);
            GsonBuilder gsonBuilder = new GsonBuilder();
            gsonBuilder.setDateFormat("dd/MM/yyyy");
            Gson gson = gsonBuilder.create();
            data = gson.toJson(oAsignaturas);
            data = "{\"list\":" + data + "}";
            oConnection.commit();
        } catch (Exception ex) {
            oConnection.rollback();
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return data;

    }

    public String getPagesAsignaturaFiltrada(Integer id_usuario, int intRegsPerPag, ArrayList<FilterBeanHelper> hmFilter) throws Exception {

        String data = null;
        try {
            oConnection.setAutoCommit(false);
            AsignaturaDaoGenSpImpl oAsignaturaDAO = new AsignaturaDaoGenSpImpl(strObjectName, oConnection);
            int pages = oAsignaturaDAO.getPagesAsignaturaFiltrada(id_usuario, intRegsPerPag, hmFilter);
            data = "{\"data\":\"" + Integer.toString(pages) + "\"}";
            oConnection.commit();
        } catch (Exception ex) {
            oConnection.rollback();
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPages ERROR: " + ex.getMessage()));
        }
        return data;
    }

    
        public String getAggregateViewSomeAsignaturaFiltrado(int id_usuario,int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> alFilter, HashMap<String, String> hmOrder) throws Exception {
        String data = null;
        try {
            //falta controlar la transacción a esta altura
            String columns = this.getColumns();
            String prettyColumns = this.getPrettyColumns();
            //String types = this.getTypes();
            String page = this.getPageAsignaturaFiltrada(id_usuario,intRegsPerPag, intPage, alFilter, hmOrder);
            String pages = this.getPagesAsignaturaFiltrada(id_usuario,intRegsPerPag, alFilter);
            String registers = this.getCountAsignaturaFiltrada(id_usuario,alFilter);
            data = "{\"data\":{"
                    + "\"columns\":" + columns
                    + ",\"prettyColumns\":" + prettyColumns
                    // + ",\"types\":" + types
                    + ",\"page\":" + page
                    + ",\"pages\":" + pages
                    + ",\"registers\":" + registers
                    + "}}";
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getAggregateViewSome ERROR: " + ex.getMessage()));
        }
        return data;
    }
    
}
