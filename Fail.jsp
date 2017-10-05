<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


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
        <div class="container">
            <img src="img/header3.png" alt="" class="telecom1" id="telecom">
        </div>

        <br><br>

    <center>
    <script language="javascript">
	function atras(){history.back();}
	</script>

    <%
    int NERROR=Integer.parseInt(request.getParameter("error"));

    if(NERROR==1){
    %>
        <div id="error1"><FONT FACE="impact" SIZE=6 COLOR="White">El curso no existe</FONT>
            <br>
            <input type="button" name="Boton1" value="Reintentar" class="waves-effect waves-light btn top-title" onclick="location.href='cursos.jsp'">
        </div>
    <%
    }
    else if (NERROR==2){
    %>

        <div id="error2" ><FONT FACE="impact" SIZE=6 COLOR="White">Usuario/Contraseña inválido</FONT>
            <br>
            <input type="button" name="Boton1" value="Atrás" class="waves-effect waves-light btn top-title" onclick="atras();">
        </div>
    <%
    }
    else if(NERROR==3){
    %>
        <div id="error3" ><FONT FACE="impact" SIZE=6 COLOR="White">Ya estás inscrito en este curso.</FONT>
            <br>
            <input type="button" name="Boton1" value="Reintentar" class="waves-effect waves-light btn top-title" onclick="location.href='cursos.jsp'">
        </div>
    <%
    }
    else if (NERROR==4){
    %>

        <div id="error4"><FONT FACE="impact" SIZE=6 COLOR="White">Inscripción Exitosa!</FONT>
        <br>
         <input type="button" name="Boton1" value="Inicio" class="waves-effect waves-light btn top-title" onclick="location.href='index.jsp'">
        </div>
    <%
    }
    else if (NERROR==6){
 %>
        <div id="error5"><FONT FACE="impact" SIZE=6 COLOR="White">Numero de cuenta/CURP Ya existe.</FONT>
            <br>
                <script language="javascript">
                function atras(){history.back();}
                </script>
        <input type="button" value="Atrás" name="Boton1" onclick="atras();">
        </div>
    <%
}
    else {
    %>
        <div id="error5"><FONT FACE="impact" SIZE=6 COLOR="White">El usuario ya existe</FONT>
            <br>
                <script language="javascript">
                function atras(){history.back();}
                </script>
        <input type="button" value="Atrás" name="Boton1" onclick="atras();">
        </div>
    <%
        }
    %>

<br><br><br><br>

<div class="container">
    <footer class="page-footer grey darken-4">
        <div class="container">
            <div class="row">
                <div class="col m4">
                    <h5 class="red-text">DIVISIÓN DE INGENIERÍA ELÉCTRICA</h5>
                    <ul>
                        <li><a href="http://www.fi-b.unam.mx/">Sitio</a></li>
                        <li><a href="#"></a>Acad?icos</li>
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
                    <h5 class="red-text">FACULTAD DE INGENIERÍA
                    </h5>
                    <ul>
                        <li><a href="http://www.ingenieria.unam.mx/">Sitio</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                <ul><li> 2017 <a href="https://www.unam.mx/"> Universidad Nacional Autónoma de México</a></li></ul>
            </div>
        </div>
    </footer>
    </div>
    </center>
    </div>

</body>
</html>