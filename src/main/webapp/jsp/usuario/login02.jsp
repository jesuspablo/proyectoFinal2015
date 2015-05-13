<%-- 
 Copyright (C) July 2014 Rafael Aznar

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
--%>

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<% UsuarioBeanGenSpImpl oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean"); %>
<% if (oUsuario==null){ %>
    
    <h1>Vd. no ha entrado en el sistema</h1>
    <h4>Ha habido un problema con su autenticación. Revise su login o su password.</h4>
<% } else { %>
    <h1>Vd. ha entrado en el sistema</h1>
    <h4>Bienvenido, <%=oUsuario.getLogin() %>. Ahora puede operar con los menús de la aplicación.</h4>
    <div id="prueba"></div>
    
     <script type="text/javascript"  src="./js/vendor/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
        $.ajax({
            url: "http://localhost:8081/proyectoFinal2015/json?ob=asignatura&op=getpage&page=1&rpp=10&filter=id_nivel&filteroperator=equals&filtervalue=2",
            //data: "nocache=" + Math.random(),
            type: "GET",
            dataType: "json",
            success: function(source) {
                var columns;
                $.ajax({
                    url: "http://localhost:8081/proyectoFinal2015/json?ob=asignatura&op=getcolumns",
                    //data: "nocache=" + Math.random(),
                    type: "GET",
                    dataType: "json",
                    success: function(source2) {
                        var json = source["list"];
                        var html;
                        for (i=0; i<json.length; i++) {
                            for (j=0; j<source2.length; j++) {
                                var column = source2[j];
                                var obj = column.substr(0, 4);
                                if (obj == "obj_") {
                                    html += "<p>" + source2[j] + ": " + json[i]["id"] +  "</p>";
                                } else {
                                    html += "<p>" + source2[j] + ": " + json[i][source2[j]] +  "</p>";
                                }
                                $("#prueba").html(html)
                            }
                        }
                    }
                });

            }
        });
    </script>
        
        
        
<% } %>
