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

</head>
<body>
    <div class="container">
            <img src="img/header3.png" alt="" class="telecom1" id="telecom">
            <div class="row">
	            <nav class="grey darken-4">
	                <div class="nav-wrapper">
	         
	               </div>
	            </nav>
            </div>
<TABLE>
    <%
    String identificador=request.getParameter("id");
   
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:SERVDES","desarrollo","desarrollo");
    Statement st = con.createStatement();
    ResultSet rs;

    rs = st.executeQuery("SELECT * FROM ALUMNO WHERE num_cuenta='"+identificador+"'");
    while(rs.next()){
%>
  <tr>
    <th>Numero de Cuenta/Curp:</th>
    <td><%=rs.getString(1)%></td>
  </tr>
  <tr>
    <th>Nombre(s):</th>
    <td><%=rs.getString(2)%></td>
  </tr>
    <tr>
    <th>Apellio Paterno:</th>
    <td><%=rs.getString(3)%></td>
  </tr>
    <tr>
    <th>Apellido Materno:</th>
    <td><%=rs.getString(4)%></td>
  </tr>
    <tr>
    <th>Correo:</th>
    <td><%=rs.getString(5)%></td>
  </tr>
    <tr>
    <th>Celular:</th>
    <td><%=rs.getString(6)%></td>
  </tr>
    <tr>
    <th>Telefono:</th>
    <td><%=rs.getString(7)%></td>
  </tr>
      <tr>
    <th>Semestre:</th>
    <td><%=rs.getString(8)%></td>
  </tr>
      <tr>
    <th>Avance de creditos:</th>
    <td><%=rs.getString(9)%>%</td>
  </tr>
      <tr>
    <th>Opción a titulación:</th>
    <td><%=rs.getString(10)%></td>
  </tr>
  <tr><th>Cursos:</th><TD></TD></tr>
     
<%}
rs = st.executeQuery("SELECT c.nombre FROM inscripcion i, curso c, alumno a WHERE i.id_curso=c.id_curso AND a.num_cuenta=i.num_cuenta and a.num_cuenta='"+identificador+"'");
    while(rs.next()){
    %><tr>
    <th></th>
    <td><%=rs.getString(1)%></td>
    </tr>
    <%
}
con.close();
%>
    </table> 
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
    </footer>
    </div>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
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
              //('#dropdown2').css({"background-color: #212121,height: 64px,line-height: 64px"});
           }else{
               e.className +=' active dropdown2-style';
            }
        });
    });
</script>
</body>
</html>