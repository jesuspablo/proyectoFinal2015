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
import net.daw.bean.generic.specific.implementation.TipousuarioBeanGenSpImpl;
import net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl;
import net.daw.data.specific.implementation.MysqlDataSpImpl;
import net.daw.helper.AppConfigurationHelper;
import net.daw.helper.ExceptionBooster;

public class UsuarioDaoGenSpImpl extends TableDaoGenImpl<UsuarioBeanGenSpImpl> {
    private String strTableName = "usuario";   
    private MysqlDataSpImpl oMysql = null;
    private Connection oConnection = null;
    
    public UsuarioDaoGenSpImpl(String strObject, Connection pooledConnection) throws Exception {
        super(strObject, strObject, pooledConnection);
            oConnection = pooledConnection;
            oMysql = new MysqlDataSpImpl(oConnection);
    }

    public UsuarioBeanGenSpImpl getFromLogin(UsuarioBeanGenSpImpl oUsuario) throws Exception {
        try {

            String strId = oMysql.getId("usuario", "login", oUsuario.getLogin());
            if (strId == null) {
                oUsuario.setId(0);
            } else {
                Integer intId = Integer.parseInt(strId);
                oUsuario.setId(intId);
                String pass = oUsuario.getPassword();
                oUsuario.setPassword(oMysql.getOne("usuario", "password", oUsuario.getId()));
                if (!pass.equals(oUsuario.getPassword())) {
                    oUsuario.setId(0);
                }
                oUsuario = this.get(oUsuario, AppConfigurationHelper.getJsonDepth());
            }

            return oUsuario;
        } catch (Exception e) {
            throw new Exception("UsuarioDao.getFromLogin: Error: " + e.getMessage());
        }
    }
    
    @Override
    public UsuarioBeanGenSpImpl get(UsuarioBeanGenSpImpl oUsuarioBean, Integer expand) throws Exception {
        if (oUsuarioBean.getId() > 0) {
            try {
                if (!oMysql.existsOne(strTableName, oUsuarioBean.getId())) {
                    oUsuarioBean.setId(0);
                } else {
                    expand--;
                    if (expand > 0) {
                        oUsuarioBean.setLogin(oMysql.getOne(strTableName, "login", oUsuarioBean.getId()));
                        oUsuarioBean.setPassword(null);
                        
                        oUsuarioBean.setId_tipousuario(Integer.parseInt(oMysql.getOne(strTableName, "id_tipousuario", oUsuarioBean.getId())));
                        oUsuarioBean.setId_estado(Integer.parseInt(oMysql.getOne(strTableName, "id_estado", oUsuarioBean.getId())));

                        TipousuarioBeanGenSpImpl oTipousuario = new TipousuarioBeanGenSpImpl();
                        oTipousuario.setId(Integer.parseInt(oMysql.getOne(strTableName, "id_tipousuario", oUsuarioBean.getId())));
                        TipousuarioDaoGenSpImpl oTipousuarioDAO = new TipousuarioDaoGenSpImpl("tipousuario", oConnection);
                        oTipousuario = oTipousuarioDAO.get(oTipousuario, AppConfigurationHelper.getJsonDepth());                        
                        oUsuarioBean.setObj_tipousuario(oTipousuario);
                        
                        
                    }
                }
            } catch (Exception ex) {
                ExceptionBooster.boost(new Exception(this.getClass().getName() + ":get ERROR: " + ex.getMessage()));
            }
        } else {
            oUsuarioBean.setId(0);
        }
        return oUsuarioBean;
    }

    @Override
    public UsuarioBeanGenSpImpl set(UsuarioBeanGenSpImpl oUsuarioBean) throws Exception {
        try {
            Boolean isNew = false;

            if (oUsuarioBean.getId() == 0) {
                oUsuarioBean.setId(oMysql.insertOne(strTableName));
                isNew = true;
            }
            oMysql.updateOne(oUsuarioBean.getId(), strTableName, "login", oUsuarioBean.getLogin());
            oMysql.updateOne(oUsuarioBean.getId(), strTableName, "id_tipousuario", oUsuarioBean.getId_tipousuario().toString());
            oMysql.updateOne(oUsuarioBean.getId(), strTableName, "id_estado", oUsuarioBean.getId_estado().toString());
            oMysql.updateOne(oUsuarioBean.getId(), strTableName, "ciudad", oUsuarioBean.getCiudad());
            oMysql.updateOne(oUsuarioBean.getId(), strTableName, "firma", oUsuarioBean.getFirma());
            oMysql.updateOne(oUsuarioBean.getId(), strTableName, "skin", oUsuarioBean.getSkin());
            String prueba = oUsuarioBean.getPassword();

            if (isNew == false) {
                if (oUsuarioBean.getPassword() == null || oUsuarioBean.getPassword().equals("")) {
                    oMysql.updateOne(oUsuarioBean.getId(), strTableName, "password", oMysql.getOne(strTableName, "password", oUsuarioBean.getId()));                
                } else {
                    oMysql.updateOne(oUsuarioBean.getId(), strTableName, "password", oUsuarioBean.getPassword());
                }                
            } else {
                oMysql.updateOne(oUsuarioBean.getId(), strTableName, "password", oUsuarioBean.getPassword());
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":set ERROR: " + ex.getMessage()));
        }
        return oUsuarioBean;
    }


//    public UsuarioBean type(UsuarioBean oUsuarioBean) throws Exception {
//
//        try {
//            AlumnoDao oAlumnoDao = new AlumnoDao();
//            AlumnoBean oAlumnoBean = oAlumnoDao.getFromId_usuario(oUsuarioBean);
//            oUsuarioBean.setTipoUsuario(Enum.TipoUsuario.Alumno);
//        } catch (Exception e1) {
//            try {
//                EmpresaDao oEmpresaDao = new EmpresaDao();
//                EmpresaBean oEmpresaBean = oEmpresaDao.getFromId_usuario(oUsuarioBean);
//                oUsuarioBean.setTipoUsuario(Enum.TipoUsuario.Empresa);
//            } catch (Exception e2) {
//                try {
//                    ProfesorDao oProfesorDao = new ProfesorDao();
//                    ProfesorBean oProfesorBean = oProfesorDao.getFromId_usuario(oUsuarioBean);
//                    oUsuarioBean.setTipoUsuario(Enum.TipoUsuario.Profesor);
//                } catch (Exception e3) {
//                    throw new Exception("UsuarioDao.type: Error: " + e3.getMessage());
//                }
//            }
//        } finally {
//            oMysql.desconexion();
//        }
//        return oUsuarioBean;
//    }
//    @Override
//    public UsuarioBean get(UsuarioBean oUsuarioBean) throws Exception {
//        if (oUsuarioBean.getId() > 0) {
//            try {
//                oMysql.conexion(enumTipoConexion);
//                if (!oMysql.existsOne("usuario", oUsuarioBean.getId())) {
//                    oUsuarioBean.setId(0);
//                } else {
//                    oUsuarioBean.setLogin(oMysql.getOne("usuario", "login", oUsuarioBean.getId()));
//                    oUsuarioBean.setPassword(oMysql.getOne("usuario", "password", oUsuarioBean.getId()));
//                }
//            } catch (Exception e) {
//                throw new Exception("UsuarioDao.getUsuario: Error: " + e.getMessage());
//            } finally {
//                oMysql.desconexion();
//            }
//        } else {
//            oUsuarioBean.setId(0);
//        }
//        return oUsuarioBean;
//    }
//
//
//    @Override
//    public String getDescription(int id) throws Exception {
//        UsuarioBean oUsuarioBean = new UsuarioBean();
//        oUsuarioBean.setId(id);
//        oUsuarioBean = this.get(oUsuarioBean);
//        String description;
//        if (oUsuarioBean.getLogin().length() > 20) {
//            description = oUsuarioBean.getLogin().substring(0, 19) + "...";
//        } else {
//            description = oUsuarioBean.getLogin();
//        }
//        return description;
//    }
}
