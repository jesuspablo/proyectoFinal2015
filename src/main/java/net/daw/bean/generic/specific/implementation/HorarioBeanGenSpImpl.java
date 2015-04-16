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
package net.daw.bean.generic.specific.implementation;

import net.daw.bean.generic.implementation.BeanGenImpl;
import net.daw.bean.publicinterface.BeanInterface;
import com.google.gson.annotations.Expose;
import java.util.Date;

public class HorarioBeanGenSpImpl extends BeanGenImpl implements BeanInterface {

    public HorarioBeanGenSpImpl() {
    }
    
    @Expose
    private String dia = "";
     @Expose
    private String horainicio;
     @Expose
    private String horafin;
     
     @Expose(serialize = false)
    private Integer id_asignatura = 0; //importante inicializar a 0 las claves ajenas
    @Expose(deserialize = false)
    private AsignaturaBeanGenSpImpl obj_asignatura = null;

    public HorarioBeanGenSpImpl(Integer id) {
        super(id);
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getHorainicio() {
        return horainicio;
    }

    public void setHorainicio(String horainicio) {
        this.horainicio = horainicio;
    }

    public String getHorafin() {
        return horafin;
    }

    public void setHorafin(String horafin) {
        this.horafin = horafin;
    }

   
    public Integer getId_asignatura() {
        return id_asignatura;
    }

    public void setId_asignatura(Integer id_asignatura) {
        this.id_asignatura = id_asignatura;
    }

    public AsignaturaBeanGenSpImpl getObj_asignatura() {
        return obj_asignatura;
    }

    public void setObj_asignatura(AsignaturaBeanGenSpImpl obj_asignatura) {
        this.obj_asignatura = obj_asignatura;
    }

}
