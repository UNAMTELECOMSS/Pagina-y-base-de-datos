<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
int d=0;
int c=0;
int z=0;
String ID="";
String NC= request.getParameter("nc");
String CURP= request.getParameter("curp");
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
String US= request.getParameter("user");
String PSS=request.getParameter("password");
if((NC == null) || (NC== ""))
    NC=CURP;

Connection con;
Statement sen;
Statement sen2;
ResultSet res;
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:SERVDES","desarrollo","desarrollo");
sen=con.createStatement();
try{sen.executeUpdate("Insert into ALUMNO (NUM_CUENTA,NOMBRE,AP_PATERNO,AP_MATERNO,EMAIL,CEL,TEL,SEMESTRE,AVANCE_CRED,MODALIDAD,ID_DEPENDENCIA) values ('"+NC+"','"+NOM+"','"+APP+"','"+APM+"','"+MAIL+"',"+TEL+","+CEL+","+SEM+","+AVA+",'"+MOD+"',"+DEP+")");}
catch(java.sql.SQLIntegrityConstraintViolationException e){
    z=1;
    }
    if(z==1){
        response.sendRedirect("Fail.jsp?error=6");

    }  
    else{
   try{sen.executeUpdate("Insert into USUARIO values (SEQ_USER.nextval,UPPER('"+US+"'),'"+PSS+"')");}
catch(java.sql.SQLIntegrityConstraintViolationException e){
        c=1;
    }
    if(c==0){
    res=sen.executeQuery("select ID_USUARIO FROM USUARIO WHERE USER_NAME=UPPER('"+US+"')");
    while (res.next()){
    ID=res.getString(1);
    }
    sen.executeUpdate("Insert into Registro values (SEQ_USER.nextval,CURRENT_TIMESTAMP,'"+NC+"','"+ID+"')");
    response.sendRedirect("index.jsp");
    }
    else
    {
    %>

    <%
    sen.executeUpdate("DELETE FROM ALUMNO WHERE NUM_CUENTA='"+NC+"'");%>

    <%    response.sendRedirect("Fail.jsp?error=5");
    }
}
con.close();
%>
</center>

    </body>
</html>