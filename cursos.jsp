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
</head>
<body>
<div class="container">
		<img src="img/header3.png" alt="" class="telecom1" id="telecom">

        <!--
          BARRA DE NAVEGACIÓN
        -->
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
        <div class="row">
            <nav class="grey darken-4">
                <div class="nav-wrapper">
                  <a href="#" class="brand-logo left hide-on-large-only">Cursos Telecom</a>
                    <a href="#" data-activates="dropdown2" id="activaDrop2" class="button-collapse right"><i class="material-icons">menu</i></a>
                      <ul id="menu" class="right hide-on-med-and-down">
                        <li><a href="./index.jsp"><i class="material-icons right">home</i>Inicio</a></li>
                        <li><a href="#acceder"><i class="material-icons right">vpn_key</i>Log In</a></li>
                        <li><a href="./cursos.jsp"><i class="material-icons right">assignment</i>Cursos</a></li>
                        <li><a href="./aviso.jsp"><i class="material-icons right">warning</i>Avisos</a></li>
                        <li><a target="_blank"  href="./FAQ.pdf"><i class="material-icons right">help</i>FAQ</a></li>
                        <li><a target="_blank" href="http://odin.fi-b.unam.mx/ctyss/Formatos/Opciones_titulacion/Reglamento_Opciones_de_Titulacion_2015.pdf"><i class="material-icons right">insert_drive_file</i>Formato Titulación</a></li>
                      </ul>      
                      <ul id="dropdown2" class="side-nav">
                        <li><a href="./index.jsp"><i class="material-icons right">home</i>Inicio</a></li>
                        <li><a href="#acceder"><i class="material-icons right">vpn_key</i>Log In</a></li>
                        <li><a href="./cursos.jsp"><i class="material-icons right">assignment</i>Cursos</a></li>
                        <li><a href="./aviso.jsp"><i class="material-icons right">warning</i>Avisos</a></li>
                        <li><a target="_blank"  href="./FAQ.pdf"><i class="material-icons right">help</i>FAQ</a></li>
                        <li><a target="_blank" href="http://odin.fi-b.unam.mx/ctyss/Formatos/Opciones_titulacion/Reglamento_Opciones_de_Titulacion_2015.pdf"><i class="material-icons right">insert_drive_file</i>Formato Titulación</a></li>
                      </ul>          
               </div>
            </nav>
        </div>
        
<%} else {
%>
        <div class="row">
            <nav class="grey darken-4">
                <div class="nav-wrapper">
                  <a href="#" class="brand-logo left hide-on-large-only">Cursos Telecom</a>
                    <a href="#" data-activates="dropdown2" id="activaDrop2" class="button-collapse right"><i class="material-icons">menu</i></a>
                      <ul id="menu" class="right hide-on-med-and-down">
                        <li><a href="./Perfil.jsp"><i class="material-icons right">face</i><%=session.getAttribute("userid") %></a></li>
                      	<li><a href="./index.jsp"><i class="material-icons right">home</i>Inicio</a></li>
                        <li><a href="./aviso.jsp"><i class="material-icons right">warning</i>Avisos</a></li>
                        <li><a href="./FAQ.pdf"><i class="material-icons right">help</i>FAQ</a></li>
                        <li><a target="_blank" href="http://odin.fi-b.unam.mx/ctyss/Formatos/Opciones_titulacion/Reglamento_Opciones_de_Titulacion_2015.pdf"><i class="material-icons right">insert_drive_file</i>Formato Titulación</a></li>
                        <li><a href="./logout.jsp"><i class="material-icons right">directions_run</i>Logout</a></li>
                      </ul>  
                        <ul id="dropdown2" class="side-nav">
                        <li><a href="./Perfil.jsp"><i class="material-icons right">face</i><%=session.getAttribute("userid") %></a></li>
                        
                      	<li><a href="./index.jsp"><i class="material-icons right">home</i>Inicio</a></li>
                        <li><a href="./aviso.jsp"><i class="material-icons right">warning</i>Avisos</a></li>
                        <li><a href="./FAQ.pdf"><i class="material-icons right">help</i>FAQ</a></li>
                        <li><a target="_blank" href="http://odin.fi-b.unam.mx/ctyss/Formatos/Opciones_titulacion/Reglamento_Opciones_de_Titulacion_2015.pdf"><i class="material-icons right">insert_drive_file</i>Formato Titulación</a></li>
                        <li><a href="./logout.jsp"><i class="material-icons right">directions_run</i>Logout</a></li>
                      </ul>          
               </div>
            </nav>
        </div>
<%
    }
%>

<!--
          formulario de acceso (Log In)
        -->

                    <div id="acceder" class="modal">
                        <div class="modal-content">
                            <div class="row">
                                <form class="col s12" method="post" action="login.jsp" id="form_datos">
                                    <center><h4>Inicia Sesión</h4></center>

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="uname" placeholder="&#128100; Usuario" id="user" type="text" class="validate" required>
                                        </div>
                                    </div>
                                    

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="pass" placeholder="&#128273; Contraseña" id="password" type="password" class="validate" required>
                                        </div>
                                    </div>

                            <div class="btn_form">
                                <center><input type="submit" name="submit" value="ACCEDER" class="waves-effect waves-light btn top-title"></center>
                            </div> 

                            <a id="link_registro" href="./register.html">¿No tienes usuario? Regístrate.</a>

                                </form>
                            </div>
                        </div>
                    </div>



        <!--CARDS  SECURITY-->

        <div class="row">
            <div class="col m4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activato responsive-img" src="img/cursos/1.png">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">CCNA SECURITY<i class="material-icons right">more_vert</i></span>
                        <a class="waves-effect waves-light btn top-title ancho">Temario</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho">Equipo</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="http://www.cursostelecom.unam.mx/PDF/CV_RRA.pdf" target="_blank">CV Instructor</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="#modal2">Inscribete</a>
                    </div>
                    <div id="modal2" class="modal">
                        <div class="modal-content">
                            <div class="row">
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">
                                    <div class="row">
                                        <div class="input-field col s6">
                                            <input name="user" placeholder="Usuario" id="User" type="text" class="validate">
                                            <label for="user">Usuario</label>
                                        </div>
                                        <div class="input-field col s6">
                                            <input name="Pass" id="Contraseña" type="password" class="validate">
                                            <label for="Pass">Contraseña</label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA Security" value="CCNA SECURITY" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                                                     <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="REGISTRAR">
                                </div>
                                </form>
<%} else {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA Security" value="CCNA SECURITY" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                 <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="Confirmar Inscripción">
                                </div>
                                </form>
                                <%}%>   
                            </div>
                        </div>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">CCNA SECURITY<i class="material-icons right">close</i></span>
                        <p>CCNA Security (CCNA Seguridad) lo prepara para diseñar, implementar y mantener la seguridad de los dispositivos en red. El curso se basa en los primeros dos cursos CCNA Routing & Switching y lo prepara para su certificación Cisco Security. Agregue una especialización en seguridad a sus aptitudes de redes de CCNA y expanda sus oportunidades profesionales.<br>
Desarrolle un conocimiento práctico sobre los puntos básicos, las herramientas y las configuraciones de seguridad de la red.
Estudie con un instructor en un aula y acceda a contenido especializado en línea, en cualquier momento.
Practique lo que aprende con equipos reales y Cisco Packet Tracer, una herramienta de simulación para la configuración de la red.<br>
Obtenga comentarios inmediatos sobre su trabajo en pruebas y cuestionarios integrados.
Prepárese para el lugar de trabajo con proyectos y presentaciones de colaboración.
Conéctese con la comunidad global de Cisco Networking Academy<br></p>
                    </div>
                </div>
            </div>


 <!--CCNA R&S OMAR-->

        <div class="row">
            <div class="col m4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activato responsive-img" src="img/cursos/2.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">CCNA Routing y Switching<i class="material-icons right">more_vert</i></span>
                        <a class="waves-effect waves-light btn top-title ancho">Temario</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho">Equipo</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="http://www.cursostelecom.unam.mx/PDF/CV_RRA.pdf" target="_blank">CV Instructor</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="#modal3">Inscribete</a>
                    </div>
                    <div id="modal3" class="modal">
                        <div class="modal-content">
                            <div class="row">
                               <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">
                                    <div class="row">
                                        <div class="input-field col s6">
                                            <input name="user" placeholder="Usuario" id="User" type="text" class="validate">
                                            <label for="user">Usuario</label>
                                        </div>
                                        <div class="input-field col s6">
                                            <input name="Pass" id="Contraseña" type="text" class="validate">
                                            <label for="Pass">Contraseña</label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA R & S" value="CCNA R AND S SABATINO 1" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                                                     <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="REGISTRAR">
                                </div>
                                </form>
<%} else {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA R & S" value="CCNA R AND S SABATINO 1" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                 <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="Confirmar Inscripción">
                                </div>
                                </form>
                                <%}%>
                            </div>
                        </div>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">CCNA Routing y Switching<i class="material-icons right">close</i></span>
                        <p>La currícula de CCNA Routing and Switching (CCNA Routing y Switching) es una puerta para empleos de nivel básico en redes y carreras profesionales en TI. La currícula consta de 4 cursos de 70 horas: Introduction to Networks, Routing and Switching Essentials, Scaling Networks y Connecting Networks. Los primeros dos cursos lo preparan para el examen de certificación Cisco CCENT o para estudiar CCNA Security. <br>Se recomienda realizar los cuatro cursos antes del examen de certificación CCNA Routing and Switching de Cisco.
Desarrolle un conocimiento práctico sobre routing, switching, aplicaciones de red, protocolos y servicios.<br>
Estudie con un instructor en un aula y acceda a contenido especializado en línea, en cualquier momento.<br>
Practique lo que aprende con equipos reales y Cisco Packet Tracer, una herramienta de simulación para la configuración de la red.<br>
Obtenga comentarios inmediatos sobre su trabajo en pruebas y cuestionarios integrados.<br>
Prepárese para el lugar de trabajo con proyectos y presentaciones de colaboración.<br>
Conéctese con la comunidad global de Cisco Networking Academy.<br></p>
                    </div>
                </div>
            </div>



            <!--CCNA R&S NICO A-->





        <div class="row">
            <div class="col m4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activato responsive-img" src="img/cursos/3.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">CCNA Routing y Switching<i class="material-icons right">more_vert</i></span>
                        <a class="waves-effect waves-light btn top-title ancho">Temario</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho">Equipo</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="http://www.cursostelecom.unam.mx/PDF/CV_RRA.pdf" target="_blank">CV Instructor</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="#modal4">Inscribete</a>
                    </div>
                    <div id="modal4" class="modal">
                        <div class="modal-content">
                            <div class="row">
                                                           <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">
                                    <div class="row">
                                        <div class="input-field col s6">
                                            <input name="user" placeholder="Usuario" id="User" type="text" class="validate">
                                            <label for="user">Usuario</label>
                                        </div>
                                        <div class="input-field col s6">
                                            <input name="Pass" id="Contraseña" type="text" class="validate">
                                            <label for="Pass">Contraseña</label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA R AND S SABATINO 2" value="CCNA R AND S SABATINO 2" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                                                     <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="REGISTRAR">
                                </div>
                                </form>
<%} else {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA R AND S SABATINO 2" value="CCNA R AND S SABATINO 2" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                 <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="Confirmar Inscripción">
                                </div>
                                </form>
                                <%}%>
                            </div>
                        </div>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">CCNA Routing y Switching<i class="material-icons right">close</i></span>
                        <p>La currícula de CCNA Routing and Switching (CCNA Routing y Switching) es una puerta para empleos de nivel básico en redes y carreras profesionales en TI. La currícula consta de 4 cursos de 70 horas: Introduction to Networks, Routing and Switching Essentials, Scaling Networks y Connecting Networks. Los primeros dos cursos lo preparan para el examen de certificación Cisco CCENT o para estudiar CCNA Security. <br>Se recomienda realizar los cuatro cursos antes del examen de certificación CCNA Routing and Switching de Cisco.
Desarrolle un conocimiento práctico sobre routing, switching, aplicaciones de red, protocolos y servicios.<br>
Estudie con un instructor en un aula y acceda a contenido especializado en línea, en cualquier momento.<br>
Practique lo que aprende con equipos reales y Cisco Packet Tracer, una herramienta de simulación para la configuración de la red.<br>
Obtenga comentarios inmediatos sobre su trabajo en pruebas y cuestionarios integrados.<br>
Prepárese para el lugar de trabajo con proyectos y presentaciones de colaboración.<br>
Conéctese con la comunidad global de Cisco Networking Academy.<br></p>
                    </div>
                </div>
            </div>



<!--CCNA R&S RAUL-->





        <div class="row">
            <div class="col m4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activato responsive-img" src="img/cursos/4.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">CCNA Routing y Switching<i class="material-icons right">more_vert</i></span>
                        <a class="waves-effect waves-light btn top-title ancho">Temario</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho">Equipo</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="http://www.cursostelecom.unam.mx/PDF/CV_RRA.pdf" target="_blank">CV Instructor</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="#modal5">Inscribete</a>
                    </div>
                    <div id="modal5" class="modal">
                        <div class="modal-content">
                            <div class="row">
                               <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">
                                    <div class="row">
                                        <div class="input-field col s6">
                                            <input name="user" placeholder="Usuario" id="User" type="text" class="validate">
                                            <label for="user">Usuario</label>
                                        </div>
                                        <div class="input-field col s6">
                                            <input name="Pass" id="Contraseña" type="text" class="validate">
                                            <label for="Pass">Contraseña</label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA R & S" value="CCNA R AND S" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                                                     <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="REGISTRAR">
                                </div>
                                </form>
<%} else {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA R & S" value="CCNA R AND S" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                 <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="Confirmar Inscripción">
                                </div>
                                </form>
                                <%}%>
                            </div>
                        </div>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">CCNA Routing y Switching<i class="material-icons right">close</i></span>
                        <p>La currícula de CCNA Routing and Switching (CCNA Routing y Switching) es una puerta para empleos de nivel básico en redes y carreras profesionales en TI. La currícula consta de 4 cursos de 70 horas: Introduction to Networks, Routing and Switching Essentials, Scaling Networks y Connecting Networks. Los primeros dos cursos lo preparan para el examen de certificación Cisco CCENT o para estudiar CCNA Security. <br>Se recomienda realizar los cuatro cursos antes del examen de certificación CCNA Routing and Switching de Cisco.
Desarrolle un conocimiento práctico sobre routing, switching, aplicaciones de red, protocolos y servicios.<br>
Estudie con un instructor en un aula y acceda a contenido especializado en línea, en cualquier momento.<br>
Practique lo que aprende con equipos reales y Cisco Packet Tracer, una herramienta de simulación para la configuración de la red.<br>
Obtenga comentarios inmediatos sobre su trabajo en pruebas y cuestionarios integrados.<br>
Prepárese para el lugar de trabajo con proyectos y presentaciones de colaboración.<br>
Conéctese con la comunidad global de Cisco Networking Academy.<br></p>
                    </div>
                </div>
            </div>

<!--CCNA R&S ERICK COLLABORATION-->





        <div class="row">
            <div class="col m4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activato responsive-img" src="img/cursos/5.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">CCNA Collaboration Certification<i class="material-icons right">more_vert</i></span>
                        <a class="waves-effect waves-light btn top-title ancho">Temario</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho">Equipo</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="http://www.cursostelecom.unam.mx/PDF/CV_RRA.pdf" target="_blank">CV Instructor</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="#modal6">Inscribete</a>
                    </div>
                    <div id="modal6" class="modal">
                        <div class="modal-content">
                            <div class="row">
                                                           <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">
                                    <div class="row">
                                        <div class="input-field col s6">
                                            <input name="user" placeholder="Usuario" id="User" type="text" class="validate">
                                            <label for="user">Usuario</label>
                                        </div>
                                        <div class="input-field col s6">
                                            <input name="Pass" id="Contraseña" type="text" class="validate">
                                            <label for="Pass">Contraseña</label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA COLLABORATION" value="CCNA COLLABORATION" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                                                     <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="REGISTRAR">
                                </div>
                                </form>
<%} else {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNA COLLABORATION" value="CCNA COLLABORATION" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                 <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="Confirmar Inscripción">
                                </div>
                                </form>
                                <%}%>
                            </div>
                        </div>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">CCNA Collaboration Certification<i class="material-icons right">close</i></span>
                        <p>
                        For network video engineers, IP telephony and IP network engineers who want to develop and advance their collaboration and video skills in line with the convergence of voice, video, data and mobile applications, the Cisco CCNA Collaboration certification is a job-role focused training and certification program. It will allow you to maximize your investment in your education, and increase your professional value by giving you the skills to help your IT organization meet increased business demands resulting from these technology transitions.	<br></p>
                    </div>
                </div>
            </div>


<!--CCNA R&S RAUL P-->





        <div class="row">
            <div class="col m4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activato responsive-img" src="img/cursos/6.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">CCNP Routing and Switching<i class="material-icons right">more_vert</i></span>
                        <a class="waves-effect waves-light btn top-title ancho">Temario</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho">Equipo</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="http://www.cursostelecom.unam.mx/PDF/CV_RRA.pdf" target="_blank">CV Instructor</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="#modal7">Inscribete</a>
                    </div>
                    <div id="modal7" class="modal">
                        <div class="modal-content">
                            <div class="row">
                               <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">
                                    <div class="row">
                                        <div class="input-field col s6">
                                            <input name="user" placeholder="Usuario" id="User" type="text" class="validate">
                                            <label for="user">Usuario</label>
                                        </div>
                                        <div class="input-field col s6">
                                            <input name="Pass" id="Contraseña" type="text" class="validate">
                                            <label for="Pass">Contraseña</label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNP T-SHOOT" value="CCNP T-SHOOT" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                                                     <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="REGISTRAR">
                                </div>
                                </form>
<%} else {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNP T-SHOOT" value="CCNP T-SHOOT" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                 <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="Confirmar Inscripción">
                                </div>
                                </form>
                                <%}%>
                            </div>
                        </div>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">CCNP Routing and Switching<i class="material-icons right">close</i></span>
                        <p>CCNP Routing and Switching se basa en la currícula de CCNA y agrega un estudio exhaustivo del routing y switching avanzados para redes convergentes de voz, video y datos empresariales. El currículo de CCNP Routing & Switching consta de 3 cursos de 70 horas: ROUTE, SWITCH y TSHOOT.<br>
Desarrolle una comprensión exhaustiva y un conocimiento teórico del routing y el switching avanzados.<br>
Estudie con un instructor en un aula y acceda a contenido especializado en línea, en cualquier momento.z<br>
Practique lo que aprende con equipos reales y obtenga comentarios inmediatos sobre su trabajo en pruebas y cuestionarios.<br>
Prepárese para el lugar de trabajo con proyectos y presentaciones de colaboración.<br>
Conéctese con la comunidad global de Cisco Networking Academy<br></p>
                    </div>
                </div>
            </div>

            <!--CCNP R&S JESUS P-->





        <div class="row">
            <div class="col m4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activato responsive-img" src="img/cursos/7.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">CCNP Routing and Switching<i class="material-icons right">more_vert</i></span>
                        <a class="waves-effect waves-light btn top-title ancho">Temario</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho">Equipo</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="http://www.cursostelecom.unam.mx/PDF/CV_RRA.pdf" target="_blank">CV Instructor</a>
                        <br>
                        <a class="waves-effect waves-light btn top-title ancho" href="#modal8">Inscribete</a>
                    </div>
                    <div id="modal8" class="modal">
                        <div class="modal-content">
                            <div class="row">
                                                           <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">
                                    <div class="row">
                                        <div class="input-field col s6">
                                            <input name="user" placeholder="Usuario" id="User" type="text" class="validate">
                                            <label for="user">Usuario</label>
                                        </div>
                                        <div class="input-field col s6">
                                            <input name="Pass" id="Contraseña" type="text" class="validate">
                                            <label for="Pass">Contraseña</label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNP R T-SHOOT" value="CCNP R T-SHOOT" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                                                     <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="REGISTRAR">
                                </div>
                                </form>
<%} else {
%>
                                <form class="col s12" action="Inscripcion.jsp" method="POST" id="form_datos">

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="CCNP R T-SHOOT" value="CCNP R T-SHOOT" id="disabled" type="text" class="validate disable" readonly>
                                            <label for="disabled"></label>
                                        </div>
                                    </div>
                                 <div class="modal-footer">
                                 <input class=" modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="submit" value="Confirmar Inscripción">
                                </div>
                                </form>
                                <%}%>
                            </div>
                        </div>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">CCNP Routing and Switching<i class="material-icons right">close</i></span>
                        <p>CCNP Routing and Switching se basa en la currícula de CCNA y agrega un estudio exhaustivo del routing y switching avanzados para redes convergentes de voz, video y datos empresariales. El currículo de CCNP Routing & Switching consta de 3 cursos de 70 horas: ROUTE, SWITCH y TSHOOT.<br>
Desarrolle una comprensión exhaustiva y un conocimiento teórico del routing y el switching avanzados.<br>
Estudie con un instructor en un aula y acceda a contenido especializado en línea, en cualquier momento.z<br>
Practique lo que aprende con equipos reales y obtenga comentarios inmediatos sobre su trabajo en pruebas y cuestionarios.<br>
Prepárese para el lugar de trabajo con proyectos y presentaciones de colaboración.<br>
Conéctese con la comunidad global de Cisco Networking Academy<br></p>
                    </div>
                </div>
            </div>





            <!-- PARA AGREGAR MAS CARDS DEBES DE PONER UN ROW Y 3 CARDS -->
        </div> <!-- Quitar este div para un footer pequeño-->


</div>
</div>





   <!--
      FOOTER
    -->
  <div class="container">
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
    </footer>


<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.slider').slider();
        $('#acceder').modal();
        $('#modal2').modal();
        $('#modal3').modal();
        $('#modal4').modal();
        $('#modal5').modal();
        $('#modal6').modal();
        $('#modal7').modal();
        $('#modal8').modal();
        $(".button-collapse").sideNav();
        $(".dropdown-button").dropdown();
        $('#activaDrop2').click(function ($e) {
           var e = document.getElementById('dropdown2');
           if (e.classList.content('active')) {
              e.classList.remove('active');
              e.classList.remove('dropdown2-style');
              //$('#dropdown2').css({"background-color: #212121,height: 64px,line-height: 64px"});
           }else{
               e.className +=' active dropdown2-style';
            }
        });
    });
</script>
</div>
</body>
</html>
