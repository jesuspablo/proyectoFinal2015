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
import java.text.SimpleDateFormat;
import net.daw.bean.generic.specific.implementation.HorarioBeanGenSpImpl;
import net.daw.bean.generic.specific.implementation.AsignaturaBeanGenSpImpl;
import net.daw.helper.AppConfigurationHelper;
import net.daw.helper.ExceptionBooster;

public class HorarioDaoGenSpImpl extends TableDaoGenImpl<HorarioBeanGenSpImpl> {

    public HorarioDaoGenSpImpl(String strFuente, Connection pooledConnection) throws Exception {
        super(strFuente, "Horario", pooledConnection);
    }

    
     @Override
    public HorarioBeanGenSpImpl get(HorarioBeanGenSpImpl oHorarioBean, Integer expand) throws Exception {
        if (oHorarioBean.getId() > 0) {
            try {
                String strTableName = null;
                if (!oMysql.existsOne(strTableName, oHorarioBean.getId())) {
                    oHorarioBean.setId(0);
                } else {
                    expand--;
                    if (expand > 0) {
                       
                        oHorarioBean.setDia(oMysql.getOne(strTableName, "dia", oHorarioBean.getId()));

                        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String dateInString = oMysql.getOne(strTableName, "fecha_inicio", oHorarioBean.getId());
                        oHorarioBean.setFecha_inicio(formatter.parse(dateInString));
                        
                        
                        oHorarioBean.setId_asignatura(Integer.parseInt(oMysql.getOne(strTableName, "id_asignatura", oHorarioBean.getId())));

                        AsignaturaBeanGenSpImpl oAsignatura1 = new AsignaturaBeanGenSpImpl();
                        oAsignatura1.setId(Integer.parseInt(oMysql.getOne(strTableName, "id_asignatura", oHorarioBean.getId())));
                        Connection oConnection = null;
                        AsignaturaDaoGenSpImpl oAsignaturaDAO1 = new AsignaturaDaoGenSpImpl("asignatura", oConnection);
                        oAsignatura1 = oAsignaturaDAO1.get(oAsignatura1, AppConfigurationHelper.getJsonDepth());
                        oHorarioBean.setObj_asignatura(oAsignatura1);

                       
                    }
                }
            } catch (Exception ex) {
                ExceptionBooster.boost(new Exception(this.getClass().getName() + ":get ERROR: " + ex.getMessage()));
            }
        } else {
            oHorarioBean.setId(0);
        }
        return oHorarioBean;
    }
}
