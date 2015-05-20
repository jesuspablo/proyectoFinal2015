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
package net.daw.dao.generic.specific.implementation;

import net.daw.dao.generic.implementation.TableDaoGenImpl;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import net.daw.bean.generic.specific.implementation.AsignaturaBeanGenSpImpl;
import net.daw.helper.ExceptionBooster;
import net.daw.helper.FilterBeanHelper;

public class AsignaturaDaoGenSpImpl extends TableDaoGenImpl<AsignaturaBeanGenSpImpl> {

    public AsignaturaDaoGenSpImpl(String strFuente, Connection pooledConnection) throws Exception {
        super(strFuente, "Asignatura", pooledConnection);
    }

    public int getCountAsignaturaFiltrada(Integer id_usuario, ArrayList<FilterBeanHelper> hmFilter) throws Exception {

        int pages = 0;
        try {
            pages = oMysql.getCountAsignaturaFiltrada(id_usuario, hmFilter);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getCount ERROR: " + ex.getMessage()));
        }
        return pages;

    }

    //falta getCountAsignaturaFiltrada
    //@Override
    public ArrayList<AsignaturaBeanGenSpImpl> getPageAsignaturaFiltrada(Integer id_usuario, int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        ArrayList<Integer> arrId;
        ArrayList<AsignaturaBeanGenSpImpl> arrAsignatura = new ArrayList<>();
        try {
            //obtener el id de usuario de sesion
            arrId = oMysql.getPageAsignaturaFiltrada(id_usuario, intRegsPerPag, intPage, hmFilter, hmOrder);
            Iterator<Integer> iterador = arrId.listIterator();
            while (iterador.hasNext()) {
                AsignaturaBeanGenSpImpl oAsignaturaBean = new AsignaturaBeanGenSpImpl(iterador.next());
                arrAsignatura.add(this.get(oAsignaturaBean, 1));
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return arrAsignatura;
    }

    //@Override
    //EN SESION HACER LO MISMO...
    public int getPagesAsignaturaFiltrada(Integer id_usuario, int intRegsPerPag, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        int pages = 0;
        try {
            //obtener el id de usuario de sesion
            pages = oMysql.getPagesAsignaturaFiltrada(id_usuario, intRegsPerPag, hmFilter);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPages ERROR: " + ex.getMessage()));
        }
        return pages;
    }
}
