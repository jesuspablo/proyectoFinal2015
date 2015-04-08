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
package net.daw.control;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.control.operation.generic.specific.implementation.AlumnoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.AsignaturaControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.EstadoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.HorarioControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.NivelControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.NotaControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.ProfesorControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.TipousuarioControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.UsuarioControlOperationGenSpImpl;
import net.daw.control.route.generic.specific.implementation.AlumnoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.AsignaturaControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.EstadoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.HorarioControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.NivelControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.NotaControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.ProfesorControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.TipousuarioControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.UsuarioControlRouteGenSpImpl;
import net.daw.helper.EstadoHelper;
import net.daw.helper.EstadoHelper.Tipo_estado;
import net.daw.helper.ExceptionBooster;
import net.daw.helper.ParameterCooker;

public class JsonControl extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private void retardo(Integer iLast) {
        try {
            Thread.sleep(iLast);
        } catch (InterruptedException ex) {
            Thread.currentThread().interrupt();
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception ex) {
                if (EstadoHelper.getTipo_estado() == Tipo_estado.Debug) {
                    Map<String, String> data = new HashMap<>();
                    data.put("status", "500");
                    data.put("message", "ERROR: " + ex.getMessage());
                    Gson gson = new Gson();
                    request.setAttribute("contenido", gson.toJson(data));
                    getServletContext().getRequestDispatcher("/jsp/messageAjax.jsp").forward(request, response);
                } else {
                    Map<String, String> data = new HashMap<>();
                    data.put("status", "500");
                    data.put("message", "Applications server error. Please, contact your administrator.");
                    Gson gson = new Gson();
                    request.setAttribute("contenido", gson.toJson(data));
                    getServletContext().getRequestDispatcher("/jsp/messageAjax.jsp").forward(request, response);
                }
                Logger.getLogger(JsonControl.class.getName()).log(Level.SEVERE, null, ex);
                return;
            }

            //----------------------------------------------------------------------          
            retardo(0); //debug delay
            String jsonResult = "";
            if (request.getSession().getAttribute("usuarioBean") != null) {

                switch (ParameterCooker.prepareObject(request)) {
                    case "tipousuario":
                        TipousuarioControlRouteGenSpImpl oTipousuarioRoute = new TipousuarioControlRouteGenSpImpl();
                        TipousuarioControlOperationGenSpImpl oTipousuarioControlOperation = new TipousuarioControlOperationGenSpImpl(request);
                        jsonResult = oTipousuarioRoute.execute(request, oTipousuarioControlOperation);
                        break;
                    case "usuario":
                        UsuarioControlRouteGenSpImpl oUsuarioRoute = new UsuarioControlRouteGenSpImpl();
                        UsuarioControlOperationGenSpImpl oUsuarioControlOperation = new UsuarioControlOperationGenSpImpl(request);
                        jsonResult = oUsuarioRoute.execute(request, oUsuarioControlOperation);
                        break;
                    case "estado":
                        EstadoControlRouteGenSpImpl oEstadoRoute = new EstadoControlRouteGenSpImpl();
                        EstadoControlOperationGenSpImpl oEstadoControlOperation = new EstadoControlOperationGenSpImpl(request);
                        jsonResult = oEstadoRoute.execute(request, oEstadoControlOperation);
                        break;
                         case "profesor":
                        ProfesorControlRouteGenSpImpl oProfesorRoute = new ProfesorControlRouteGenSpImpl();
                        ProfesorControlOperationGenSpImpl oProfesorControlOperation = new ProfesorControlOperationGenSpImpl(request);
                        jsonResult = oProfesorRoute.execute(request, oProfesorControlOperation);
                        break;
                     case "alumno":
                        AlumnoControlRouteGenSpImpl oAlumnoRoute = new AlumnoControlRouteGenSpImpl();
                        AlumnoControlOperationGenSpImpl oAlumnoControlOperation = new AlumnoControlOperationGenSpImpl(request);
                        jsonResult = oAlumnoRoute.execute(request, oAlumnoControlOperation);
                        break;
                    case "horario":
                        HorarioControlRouteGenSpImpl oHorarioRoute = new HorarioControlRouteGenSpImpl();
                        HorarioControlOperationGenSpImpl oHorarioControlOperation = new HorarioControlOperationGenSpImpl(request);
                        jsonResult = oHorarioRoute.execute(request, oHorarioControlOperation);
                        break;
                    case "nivel":
                        NivelControlRouteGenSpImpl oNivelRoute = new NivelControlRouteGenSpImpl();
                        NivelControlOperationGenSpImpl oNivelControlOperation = new NivelControlOperationGenSpImpl(request);
                        jsonResult = oNivelRoute.execute(request, oNivelControlOperation);
                        break;
                    case "asignatura":
                        AsignaturaControlRouteGenSpImpl oAsignaturaRoute = new AsignaturaControlRouteGenSpImpl();
                        AsignaturaControlOperationGenSpImpl oAsignaturaControlOperation = new AsignaturaControlOperationGenSpImpl(request);
                        jsonResult = oAsignaturaRoute.execute(request, oAsignaturaControlOperation);
                        break; 
                    case "nota":
                        NotaControlRouteGenSpImpl oNotaRoute = new NotaControlRouteGenSpImpl();
                        NotaControlOperationGenSpImpl oNotaControlOperation = new NotaControlOperationGenSpImpl(request);
                        jsonResult = oNotaRoute.execute(request, oNotaControlOperation);
                        break; 
                    default:
                        ExceptionBooster.boost(new Exception(this.getClass().getName() + ":processRequest ERROR: no such operation"));
                }
            } else {
                jsonResult = "{\"error\" : \"No active server session\"}";
            }
            if (jsonResult.equals("error")) {
                Map<String, String> data = new HashMap<>();
                data.put("status", "403");
                data.put("message", "ERROR: You don't have permission to perform this operation");
                Gson gson = new Gson();
                request.setAttribute("contenido", gson.toJson(data));
                getServletContext().getRequestDispatcher("/jsp/messageAjax.jsp").forward(request, response);
            } else {
                request.setAttribute("contenido", jsonResult);
            }
            getServletContext().getRequestDispatcher("/jsp/messageAjax.jsp").forward(request, response);
        } catch (Exception ex) {
            if (EstadoHelper.getTipo_estado() == Tipo_estado.Debug) {
                Map<String, String> data = new HashMap<>();
                data.put("status", "500");
                data.put("message", "ERROR: " + ex.getMessage());
                Gson gson = new Gson();
                request.setAttribute("contenido", gson.toJson(data));
                getServletContext().getRequestDispatcher("/jsp/messageAjax.jsp").forward(request, response);
            } else {
                Map<String, String> data = new HashMap<>();
                data.put("status", "500");
                data.put("message", "Applications server error. Please, contact your administrator.");
                Gson gson = new Gson();
                request.setAttribute("contenido", gson.toJson(data));
                getServletContext().getRequestDispatcher("/jsp/messageAjax.jsp").forward(request, response);
            }
            Logger.getLogger(JsonControl.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (Exception ex) {
            //Logger.getLogger(JsonControl.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (Exception ex) {
            //Logger.getLogger(JsonControl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
