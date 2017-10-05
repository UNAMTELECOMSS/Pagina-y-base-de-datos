<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<html lang="es">
    <body>
        Registro exitso
    </body>
</html>
  <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
String NC= request.getParameter("nc");
String NOM= request.getParameter("names");
String APP= request.getParameter("lastname");
String APM= request.getParameter("lastname2");
String MAIL= request.getParameter("email");
String CEL= request.getParameter("cel");
String TEL= request.getParameter("tel");
String SEM= request.getParameter("semestre");
String AVA= request.getParameter("avance_cred");
String MOD= request.getParameter("opcion_titulacion");
String DEP= request.getParameter("dependencia");

Connection con;
Statement sen;
ResultSet res;
Class.forName("oracle.jdbc.driver.OracleDriver");
con=java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:SERVDES","desarrollo","desarrollo");
sen=con.createStatement();
sen.executeUpdate("Insert into ALUMNO (NUM_CUENTA,NOMBRE,AP_PATERNO,AP_MATERNO,EMAIL,CEL,TEL,SEMESTRE,AVANCE_CRED,MODALIDAD,ID_DEPENDENCIA) values (110,'"+NOM+"','"+APP+"','"+APM+"','"+MAIL+"',"+TEL+","+CEL+","+SEM+","+AVA+",'1',203)");



con.close();
%> 