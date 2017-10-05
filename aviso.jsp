<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es">
<head>
    <title>CURSOS TELECOM</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"/>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
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
%>        <div class="row">
            <nav class="grey darken-4">
                <div class="nav-wrapper">
                  <a href="#" class="brand-logo left hide-on-large-only">Cursos Telecom</a>
                    <a href="#" data-activates="dropdown2" id="activaDrop2" class="button-collapse right"><i class="material-icons">menu</i></a>
                      <ul id="menu" class="right hide-on-med-and-down">
                        <li><a href="./Perfil.jsp"><i class="material-icons right">face</i><%=session.getAttribute("userid") %></a></li>
                      	<li><a href="./index.jsp"><i class="material-icons right">home</i>Inicio</a></li>
                        <li><a href="./cursos.jsp"><i class="material-icons right">assignment</i>Cursos</a></li>
                        <li><a href="./FAQ.pdf"><i class="material-icons right">help</i>FAQ</a></li>
                        <li><a target="_blank" href="http://odin.fi-b.unam.mx/ctyss/Formatos/Opciones_titulacion/Reglamento_Opciones_de_Titulacion_2015.pdf"><i class="material-icons right">insert_drive_file</i>Formato Titulación</a></li>
                        <li><a href="./logout.jsp"><i class="material-icons right">directions_run</i>Logout</a></li>
                      </ul>
                        <ul id="dropdown2" class="side-nav">
                        <li><a href="./Perfil.jsp"><i class="material-icons right">face</i><%=session.getAttribute("userid") %></a></li>
                        <li><a href="./index.jsp"><i class="material-icons right">home</i>Inicio</a></li>
                        <li><a href="./cursos.jsp"><i class="material-icons right">assignment</i>Cursos</a></li>
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
        <CENTER>
            <FONT FACE=Algerian color="white" size=20>
            <MARQUEE BEHAVIOR="alternate" DIRECTION="LEFT" WIDTH="40%" VSPACE=40 HSPACE=50> AVISOS </MARQUEE>
            </FONT>
                </CENTER>


        <!--
          formulario de acceso
        -->
                    <div id="acceder" class="modal">
                        <div class="modal-content">
                            <div class="row">
                                <form class="col s12" action="script.php" method="POST" id="form_datos">
                                    <center><h4>Inicia Sesión</h4></center>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="curso" placeholder="&#128100; Usuario" id="user" type="text" class="validate" required>
                                        </div>
                                    </div>
                                    

                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input name="password" placeholder="&#128273; Contraseña" id="password" type="password" class="validate" required>
                                        </div>
                                    </div>

                            <div class="btn_form">
                                <center><input type="submit" name="submit" value="ACCEDER" class="btn_submit"></center>
                            </div> 
                            <a id="link_registro" href="./register.html">¿No tienes usuario? Regístrate.</a>
                                </form>
                            </div>
                        </div>
                    </div>


<!--Sección de avisos
 -->





                <div class="container"> <!--Contenedor avisos-->
                    <div class="row" align="center">
                        <div class="col s6"> <!--Primer columna-->
                            <img class=" avisos materialboxed"  data-caption="Reclutamiento Cisco" src="img/reclu_cisco.jpg">
                            <img class="avisos materialboxed" data-caption="Taller Collaboration Cisco" src="img/taller.jpg">
                        </div>  
                        <div class="col s6"> <!--segunda columna-->
                            <img class=" avisos materialboxed"  data-caption="Reclutamiento Cisco" src="img/reclu_cisco.jpg">
                            <img class="avisos materialboxed" data-caption="Taller Collaboration Cisco" src="img/taller.jpg">
                        </div>
                    </div>
                </div> <!--Fin contenedor avisos-->


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
    </footer>
    </div>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.carousel').carousel();
        $('.slider').slider();
        $('#acceder').modal();
        $('#modal2').modal();
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
</body>
</html>