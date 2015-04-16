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

public class AsignaturaBeanGenSpImpl extends BeanGenImpl implements BeanInterface {

    public AsignaturaBeanGenSpImpl() {
    }

    
    @Expose
    private String nombre = "";
    
    @Expose(serialize = false)
    private Integer id_profesor = 0; //importante inicializar a 0 las claves ajenas
    @Expose(deserialize = false)
    private ProfesorBeanGenSpImpl obj_profesor = null; 
    
    @Expose(serialize = false)
    private Integer id_nivel = 0; //importante inicializar a 0 las claves ajenas
    @Expose(deserialize = false)
    private NivelBeanGenSpImpl obj_nivel = null;   
    
   
   
   
    public AsignaturaBeanGenSpImpl(Integer id) {
        super(id);
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getId_profesor() {
        return id_profesor;
    }

    public void setId_profesor(Integer id_profesor) {
        this.id_profesor = id_profesor;
    }

    public ProfesorBeanGenSpImpl getObj_profesor() {
        return obj_profesor;
    }

    public void setObj_profesor(ProfesorBeanGenSpImpl obj_profesor) {
        this.obj_profesor = obj_profesor;
    }

    public Integer getId_nivel() {
        return id_nivel;
    }

    public void setId_nivel(Integer id_nivel) {
        this.id_nivel = id_nivel;
    }

    public NivelBeanGenSpImpl getObj_nivel() {
        return obj_nivel;
    }

    public void setObj_nivel(NivelBeanGenSpImpl obj_nivel) {
        this.obj_nivel = obj_nivel;
    }

   
    
}
