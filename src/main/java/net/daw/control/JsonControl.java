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
import net.daw.control.operation.generic.specific.implementation.AdministradorControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.AlumnoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.AsignaturaControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.ColegioControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.DocumentoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.DocumentobonitoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.OpcionControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.PedidoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.PreguntaControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.EstadoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.EstadotareaControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.HorarioControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.NivelControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.NotaControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.ProfesorControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.ProyectoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.PublicacionControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.TrabajoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.TipodocumentoControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.TipotareaControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.TipotemaControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.TipousuarioControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.TrimestreControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.UsuarioControlOperationGenSpImpl;
import net.daw.control.operation.generic.specific.implementation.UsuarioProveedorControlOperationGenSpimpl;
import net.daw.control.operation.specific.implementation.MensajeprivadoControlOperationSpImpl;
import net.daw.control.route.generic.specific.implementation.AdministradorControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.AlumnoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.AsignaturaControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.ColegioControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.DocumentoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.DocumentobonitoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.PreguntaControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.OpcionControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.EstadoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.EstadotareaControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.HorarioControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.NivelControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.NotaControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.PedidoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.ProfesorControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.ProyectoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.PublicacionControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.TrabajoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.TipodocumentoControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.TipotareaControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.TipotemaControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.TipousuarioControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.TrimestreControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.UsuarioControlRouteGenSpImpl;
import net.daw.control.route.generic.specific.implementation.UsuarioProveedorControlRouteGenSpImpl;
import net.daw.control.route.specific.implementation.MensajeprivadoControlRouteSpImpl;
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
                    case "documento":
                        DocumentoControlRouteGenSpImpl oDocumentoRoute = new DocumentoControlRouteGenSpImpl();
                        DocumentoControlOperationGenSpImpl oDocumentoControlOperation = new DocumentoControlOperationGenSpImpl(request);
                        jsonResult = oDocumentoRoute.execute(request, oDocumentoControlOperation);
                        break;
                    case "tipodocumento":
                        TipodocumentoControlRouteGenSpImpl oTipodocumentoRoute = new TipodocumentoControlRouteGenSpImpl();
                        TipodocumentoControlOperationGenSpImpl oTipodocumentoControlOperation = new TipodocumentoControlOperationGenSpImpl(request);
                        jsonResult = oTipodocumentoRoute.execute(request, oTipodocumentoControlOperation);
                        break;
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
                   
                   
                    case "estado":
                        EstadoControlRouteGenSpImpl oEstadoRoute = new EstadoControlRouteGenSpImpl();
                        EstadoControlOperationGenSpImpl oEstadoControlOperation = new EstadoControlOperationGenSpImpl(request);
                        jsonResult = oEstadoRoute.execute(request, oEstadoControlOperation);
                        break;
                     
                    case "publicacion":
                        PublicacionControlRouteGenSpImpl oPublicacionRoute = new PublicacionControlRouteGenSpImpl();
                        PublicacionControlOperationGenSpImpl oPublicacionControlOperation = new PublicacionControlOperationGenSpImpl(request);
                        jsonResult = oPublicacionRoute.execute(request, oPublicacionControlOperation);
                        break;
                        
                    case "mensajeprivado":
                        MensajeprivadoControlRouteSpImpl oMensajeprivadoRoute = new MensajeprivadoControlRouteSpImpl();
                        MensajeprivadoControlOperationSpImpl oMensajeprivadoControlOperation = new MensajeprivadoControlOperationSpImpl(request);
                        jsonResult = oMensajeprivadoRoute.execute(request, oMensajeprivadoControlOperation);
                        break;
                   
                   
                    case "tipotema":
                        TipotemaControlRouteGenSpImpl oTipotemaRoute = new TipotemaControlRouteGenSpImpl();
                        TipotemaControlOperationGenSpImpl oTipotemaControlOperation = new TipotemaControlOperationGenSpImpl(request);
                        jsonResult = oTipotemaRoute.execute(request, oTipotemaControlOperation);
                        break;                 
                    case "opcion":
                        OpcionControlRouteGenSpImpl oOpcionRoute = new OpcionControlRouteGenSpImpl();
                        OpcionControlOperationGenSpImpl oOpcionControlOperation = new OpcionControlOperationGenSpImpl(request);
                        jsonResult = oOpcionRoute.execute(request, oOpcionControlOperation);
                        break;
                    case "pregunta":
                        PreguntaControlRouteGenSpImpl oPreguntaRoute = new PreguntaControlRouteGenSpImpl();
                        PreguntaControlOperationGenSpImpl oPreguntaControlOperation = new PreguntaControlOperationGenSpImpl(request);
                        jsonResult = oPreguntaRoute.execute(request, oPreguntaControlOperation);
                        break;                   
                    case "pedido":
                        PedidoControlRouteGenSpImpl oPedidoRoute = new PedidoControlRouteGenSpImpl();
                        PedidoControlOperationGenSpImpl oPedidoControlOperation = new PedidoControlOperationGenSpImpl(request);
                        jsonResult = oPedidoRoute.execute(request, oPedidoControlOperation);
                        break;                   
                    case "usuarioProveedor":
                        UsuarioProveedorControlRouteGenSpImpl oUsuarioProveedorRoute = new UsuarioProveedorControlRouteGenSpImpl();
                        UsuarioProveedorControlOperationGenSpimpl oUsuarioProveedorOperation = new UsuarioProveedorControlOperationGenSpimpl(request);
                        jsonResult = oUsuarioProveedorRoute.execute(request, oUsuarioProveedorOperation);
                        break;

                   
                    case "documentobonito":
                        DocumentobonitoControlRouteGenSpImpl oDocumentobonitoRoute = new DocumentobonitoControlRouteGenSpImpl();
                        DocumentobonitoControlOperationGenSpImpl oDocumentobonitoControlOperation = new DocumentobonitoControlOperationGenSpImpl(request);
                        jsonResult = oDocumentobonitoRoute.execute(request, oDocumentobonitoControlOperation);
                        break;
                    case "trabajo":
                        TrabajoControlRouteGenSpImpl oTareaRoute = new TrabajoControlRouteGenSpImpl();
                        TrabajoControlOperationGenSpImpl oTareaControlOperation = new TrabajoControlOperationGenSpImpl(request);
                        jsonResult = oTareaRoute.execute(request, oTareaControlOperation);
                        break;
                    case "estadotarea":
                        EstadotareaControlRouteGenSpImpl oEstadotareaRoute = new EstadotareaControlRouteGenSpImpl();
                        EstadotareaControlOperationGenSpImpl oEstadotareaControlOperation = new EstadotareaControlOperationGenSpImpl(request);
                        jsonResult = oEstadotareaRoute.execute(request, oEstadotareaControlOperation);
                        break; 
                    case "proyecto":
                        ProyectoControlRouteGenSpImpl oProyectoRoute = new ProyectoControlRouteGenSpImpl();
                        ProyectoControlOperationGenSpImpl oProyectoControlOperation = new ProyectoControlOperationGenSpImpl(request);
                        jsonResult = oProyectoRoute.execute(request, oProyectoControlOperation);
                        break;
                    case "tipotarea":
                        TipotareaControlRouteGenSpImpl oTipotareaRoute = new TipotareaControlRouteGenSpImpl();
                        TipotareaControlOperationGenSpImpl oTipotareaControlOperation = new TipotareaControlOperationGenSpImpl(request);
                        jsonResult = oTipotareaRoute.execute(request, oTipotareaControlOperation);
                        break;
                        case "administrador":
                        AdministradorControlRouteGenSpImpl oAdministradorRoute = new AdministradorControlRouteGenSpImpl();
                        AdministradorControlOperationGenSpImpl oAdministradorControlOperation = new AdministradorControlOperationGenSpImpl(request);
                        jsonResult = oAdministradorRoute.execute(request, oAdministradorControlOperation);
                        break;                   
                    case "asignatura":
                        AsignaturaControlRouteGenSpImpl oAsignaturaRoute = new AsignaturaControlRouteGenSpImpl();
                        AsignaturaControlOperationGenSpImpl oAsignaturaControlOperation = new AsignaturaControlOperationGenSpImpl(request);
                        jsonResult = oAsignaturaRoute.execute(request, oAsignaturaControlOperation);
                        break;                   
                    case "colegio":
                        ColegioControlRouteGenSpImpl oColegioRoute = new ColegioControlRouteGenSpImpl();
                        ColegioControlOperationGenSpImpl oColegioControlOperation = new ColegioControlOperationGenSpImpl(request);
                        jsonResult = oColegioRoute.execute(request, oColegioControlOperation);
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
                    case "nota":
                        NotaControlRouteGenSpImpl oNotaRoute = new NotaControlRouteGenSpImpl();
                        NotaControlOperationGenSpImpl oNotaControlOperation = new NotaControlOperationGenSpImpl(request);
                        jsonResult = oNotaRoute.execute(request, oNotaControlOperation);
                        break;                   
                    case "trimestre":
                        TrimestreControlRouteGenSpImpl oTrimestreRoute = new TrimestreControlRouteGenSpImpl();
                        TrimestreControlOperationGenSpImpl oTrimestreControlOperation = new TrimestreControlOperationGenSpImpl(request);
                        jsonResult = oTrimestreRoute.execute(request, oTrimestreControlOperation);
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
