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

public class NotaBeanGenSpImpl extends BeanGenImpl implements BeanInterface {

    public NotaBeanGenSpImpl() {
    }
    @Expose
    private String nota = "";
    
    @Expose(serialize = false)
    private Integer id_nivel = 0; //importante inicializar a 0 las claves ajenas
    @Expose(deserialize = false)
    private NivelBeanGenSpImpl obj_nivel = null;    
   
    @Expose(serialize = false)
    private Integer id_trimestre = 0; //importante inicializar a 0 las claves ajenas
    @Expose(deserialize = false)
    private TrimestreBeanGenSpImpl obj_trimestre = null;  
    
    @Expose(serialize = false)
    private Integer id_alumno = 0; //importante inicializar a 0 las claves ajenas
    @Expose(deserialize = false)
    private AlumnoBeanGenSpImpl obj_alumno = null;
    
    @Expose(serialize = false)
    private Integer id_asignatura = 0; //importante inicializar a 0 las claves ajenas
    @Expose(deserialize = false)
    private AsignaturaBeanGenSpImpl obj_asignatura = null;   
    
    @Expose(serialize = false)
    private Integer id_profesor = 0; //importante inicializar a 0 las claves ajenas
    @Expose(deserialize = false)
    private ProfesorBeanGenSpImpl obj_profesor = null;    
   
   
   
   
    public NotaBeanGenSpImpl(Integer id) {
        super(id);
    }

    public String getNota() {
        return nota;
    }

    public void setNota(String nota) {
        this.nota = nota;
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

    public Integer getId_trimestre() {
        return id_trimestre;
    }

    public void setId_trimestre(Integer id_trimestre) {
        this.id_trimestre = id_trimestre;
    }

    public TrimestreBeanGenSpImpl getObj_trimestre() {
        return obj_trimestre;
    }

    public void setObj_trimestre(TrimestreBeanGenSpImpl obj_trimestre) {
        this.obj_trimestre = obj_trimestre;
    }

    public Integer getId_alumno() {
        return id_alumno;
    }

    public void setId_alumno(Integer id_alumno) {
        this.id_alumno = id_alumno;
    }

    public AlumnoBeanGenSpImpl getObj_alumno() {
        return obj_alumno;
    }

    public void setObj_alumno(AlumnoBeanGenSpImpl obj_alumno) {
        this.obj_alumno = obj_alumno;
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

    
}
