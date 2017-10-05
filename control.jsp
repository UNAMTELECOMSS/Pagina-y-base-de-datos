
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es">
<head>
    <title>CURSOS TELECOM</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"/>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/materialize.min.css">
    <link rel="stylesheet" href="css/style.css">

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.min.js"></script>

</head>
<body>
    <div class="container">
            <img src="img/header3.png" alt="" class="telecom1" id="telecom">

<%
  //  if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
        <div class="row">
            <nav class="grey darken-4">
                <div class="nav-wrapper">
         
               </div>
            </nav>
                </div>
        <br>
        <br>
        <br>
        <!--
          Contenido Consultas
        -->
	   <br>
        <ul class="collapsible" data-collapsible="accordion">
          <li>
            <div class="collapsible-header">
              <i class="material-icons">assignment</i>Cursos
            </div>
            <div class="collapsible-body">

            <!--CURSO -->


                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment</i>CCNA Security
                        </div>
                        <div class="collapsible-body">
                            <TABLE>
                            	<tr>
                                    <td>Número de Cuenta/CURP</td>
    					    		<td>Nombre Completo</td>
    					    		<td>Correo Electrónico</td>
    					    	</tr>
                                <%  
        					    Class.forName("oracle.jdbc.driver.OracleDriver");
        					    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:SERVDES","desarrollo","desarrollo");
        					    Statement st = con.createStatement();
        					    ResultSet rs;
        					    rs = st.executeQuery("SELECT a.NUM_CUENTA, a.nombre, a.AP_PATERNO, a.AP_MATERNO, a.email FROM inscripcion i, curso c, alumno a WHERE i.id_curso=c.id_curso AND a.num_cuenta=i.num_cuenta and c.nombre='CCNA SECURITY'");
        					    while(rs.next()){
        					    %>
        					       	<tr>
        					    		<td><a href="Alumno.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
                                        <td><%=rs.getString(3)%> <%=rs.getString(4)%> <%=rs.getString(2)%></td>
        					    		<td><%=rs.getString(5)%></td>
        					    	</tr>
        					   
        					    <%
        					    }
        					    %>
                            </TABLE>
                        </div>
                    </li>
                </ul>  
            <!--fin CURSO -->

            <!--CURSO -->

                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment</i>CCNA R AND S SABATINO 1
                        </div>
                        <div class="collapsible-body">
                            <TABLE>
                                <tr>
                                    <td>Número de Cuenta/CURP</td>
                                    <td>Nombre Completo</td>
                                    <td>Correo Electrónico</td>
                                </tr>
                                <%  
                                rs = st.executeQuery("SELECT a.NUM_CUENTA, a.nombre, a.AP_PATERNO, a.AP_MATERNO, a.email FROM inscripcion i, curso c, alumno a WHERE i.id_curso=c.id_curso AND a.num_cuenta=i.num_cuenta and c.nombre='CCNA R AND S SABATINO 1'");
                                while(rs.next()){
                                %>
                                    <tr>
                                        <td><a href="Alumno.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
                                        <td><%=rs.getString(3)%> <%=rs.getString(4)%> <%=rs.getString(2)%></td>
                                        <td><%=rs.getString(5)%></td>
                                    </tr>
                               
                                <%
                                }
                                %>
                            </TABLE>
                        </div>
                    </li>
                </ul>  

            <!--fin CURSO -->

            <!--CURSO -->

                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment</i>CCNA R AND S SABATINO 2
                        </div>
                        <div class="collapsible-body">
                            <TABLE>
                                <tr>
                                    <td>Número de Cuenta/CURP</td>
                                    <td>Nombre Completo</td>
                                    <td>Correo Electrónico</td>
                                </tr>
                                <%  
                                rs = st.executeQuery("SELECT a.NUM_CUENTA, a.nombre, a.AP_PATERNO, a.AP_MATERNO, a.email FROM inscripcion i, curso c, alumno a WHERE i.id_curso=c.id_curso AND a.num_cuenta=i.num_cuenta and c.nombre='CCNA R AND S SABATINO 2'");
                                while(rs.next()){
                                %>
                                    <tr>
                                        <td><a href="Alumno.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
                                        <td><%=rs.getString(3)%> <%=rs.getString(4)%> <%=rs.getString(2)%></td>
                                        <td><%=rs.getString(5)%></td>
                                    </tr>
                               
                                <%
                                }
                                %>
                            </TABLE>
                        </div>
                    </li>
                </ul>  

            <!--fin CURSO -->

            <!--CURSO -->

                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment</i>CCNA R AND S
                        </div>
                        <div class="collapsible-body">
                            <TABLE>
                                <tr>
                                    <td>Número de Cuenta/CURP</td>
                                    <td>Nombre Completo</td>
                                    <td>Correo Electrónico</td>
                                </tr>
                                <%  
                                rs = st.executeQuery("SELECT a.NUM_CUENTA, a.nombre, a.AP_PATERNO, a.AP_MATERNO, a.email FROM inscripcion i, curso c, alumno a WHERE i.id_curso=c.id_curso AND a.num_cuenta=i.num_cuenta and c.nombre='CCNA R AND S'");
                                while(rs.next()){
                                %>
                                    <tr>
                                        <td><a href="Alumno.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
                                        <td><%=rs.getString(3)%> <%=rs.getString(4)%> <%=rs.getString(2)%></td>
                                        <td><%=rs.getString(5)%></td>
                                    </tr>
                               
                                <%
                                }
                                %>
                            </TABLE>
                        </div>
                    </li>
                </ul>  

            <!--fin CURSO -->

            <!--CURSO -->

                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment</i>CCNA COLLABORATION
                        </div>
                        <div class="collapsible-body">
                            <TABLE>
                                <tr>
                                    <td>Número de Cuenta/CURP</td>
                                    <td>Nombre Completo</td>
                                    <td>Correo Electrónico</td>
                                </tr>
                                <%  
                                rs = st.executeQuery("SELECT a.NUM_CUENTA, a.nombre, a.AP_PATERNO, a.AP_MATERNO, a.email FROM inscripcion i, curso c, alumno a WHERE i.id_curso=c.id_curso AND a.num_cuenta=i.num_cuenta and c.nombre='CCNA COLLABORATION'");
                                while(rs.next()){
                                %>
                                    <tr>
                                        <td><a href="Alumno.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
                                        <td><%=rs.getString(3)%> <%=rs.getString(4)%> <%=rs.getString(2)%></td>
                                        <td><%=rs.getString(5)%></td>
                                    </tr>
                               
                                <%
                                }
                                %>
                            </TABLE>
                        </div>
                    </li>
                </ul>  

            <!--fin CURSO -->

            <!--CURSO -->

                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment</i>CCNP T-SHOOT
                        </div>
                        <div class="collapsible-body">
                            <TABLE>
                                <tr>
                                    <td>Número de Cuenta/CURP</td>
                                    <td>Nombre Completo</td>
                                    <td>Correo Electrónico</td>
                                </tr>
                                <%  
                                rs = st.executeQuery("SELECT a.NUM_CUENTA, a.nombre, a.AP_PATERNO, a.AP_MATERNO, a.email FROM inscripcion i, curso c, alumno a WHERE i.id_curso=c.id_curso AND a.num_cuenta=i.num_cuenta and c.nombre='CCNP T-SHOOT'");
                                while(rs.next()){
                                %>
                                    <tr>
                                        <td><a href="Alumno.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
                                        <td><%=rs.getString(3)%> <%=rs.getString(4)%> <%=rs.getString(2)%></td>
                                        <td><%=rs.getString(5)%></td>
                                    </tr>
                               
                                <%
                                }
                                %>
                            </TABLE>
                        </div>
                    </li>
                </ul>  

            <!--fin CURSO -->

            <!--CURSO -->

                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment</i>CCNP R T-SHOOT
                        </div>
                        <div class="collapsible-body">
                            <TABLE>
                                <tr>
                                    <td>Número de Cuenta/CURP</td>
                                    <td>Nombre Completo</td>
                                    <td>Correo Electrónico</td>
                                </tr>
                                <%  
                                rs = st.executeQuery("SELECT a.NUM_CUENTA, a.nombre, a.AP_PATERNO, a.AP_MATERNO, a.email FROM inscripcion i, curso c, alumno a WHERE i.id_curso=c.id_curso AND a.num_cuenta=i.num_cuenta and c.nombre='CCNP R T-SHOOT'");
                                while(rs.next()){
                                %>
                                    <tr>
                                        <td><a href="Alumno.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
                                        <td><%=rs.getString(3)%> <%=rs.getString(4)%> <%=rs.getString(2)%></td>
                                        <td><%=rs.getString(5)%></td>
                                    </tr>
                               
                                <%
                                }
                                con.close();
                                %>
                            </TABLE>
                        </div>
                    </li>
                </ul>  

            <!--fin CURSO -->


            </div>
          </li>

          <li>
            <div class="collapsible-header">
              <i class="material-icons">assignment_ind</i>Profesores
            </div>
            <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
          </li>
        </ul>

        <br>
        <br>
        <br>
        <br>
        <br>


    <!--
      FOOTER
    -->
    <footer class="page-footer grey darken-4">
        <div class="container">
            <div class="row">
                <div class="col m4">
                    <h5 class="red-text">DIVISIÓN DE INGENIERÍA ELÉCTRICA</h5>
                    <ul>
                        <li><a href="http://www.fi-b.unam.mx/">Sitio</a></li>
                        <li><a href="#"></a>Académicos</li>
                    </ul>
                </div>
                <div class="col m4">
                    <h5 class="red-text">DEPARTAMENTO DE TELECOMUNICACIONES</h5>
                    <ul>
                        <li><a href="http://telecom.fi-b.unam.mx/">Sitio</a></li>
                        <li><a href="http://www.cursostelecom.unam.mx/">Diplomados</a></li>
                    </ul>
                </div>      
                <div class="col m4">
                    <h5 class="red-text">FACULTAD DE INGENIERÍA</h5>
                    <ul>
                        <li><a href="http://www.ingenieria.unam.mx/">Sitio</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                <ul><li>© 2017 <a href="https://www.unam.mx/"> Universidad Nacional Autónoma de México</a></li></ul>
            </div>
        </div>
        <br>
        <br>
        <br>
        <br>
    </footer>
    </div>

</body>
</html>

