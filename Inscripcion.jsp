<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%

    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {

    String user = request.getParameter("user");    
    String pass = request.getParameter("Pass");
    String curso = request.getParameter("curso");
    String idcurso="";
    String iduser="";
    String cuenta="";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:SERVDES","desarrollo","desarrollo");
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    ResultSet rs;
    ResultSet rs1;
    rs = st.executeQuery("select * from USUARIO where USER_NAME='" + user + "' and PASS='" + pass + "'");
    if (rs.next()) {
        session.setAttribute("userid", user);
    rs = st.executeQuery("SELECT ID_CURSO FROM CURSO WHERE NOMBRE= '"+curso+"'");
    if (rs.next()) {
 		idcurso=rs.getString(1);
    } else {
        out.println("Curso no existe <a href='cursos.jsp'>Reintentar</a>");
    }

    rs = st.executeQuery("SELECT ID_USUARIO FROM USUARIO WHERE USER_NAME= '"+user+"'");
    if (rs.next()) {
 		iduser=rs.getString(1);
    } else {
        response.sendRedirect("Fail.jsp?error=2");//usuario contraseña invalido
    }
    rs = st.executeQuery("SELECT NUM_CUENTA FROM REGISTRO WHERE ID_USUARIO="+iduser+"");
   if (rs.next()) {
 		cuenta=rs.getString(1);
    } else {
        out.println("Ocurrió un error <a href='cursos.jsp'>Reintentar</a>");
    }
    rs1 = st1.executeQuery("select * from INSCRIPCION where NUM_CUENTA='" + cuenta + "' and ID_CURSO='" + idcurso + "'");
    if (rs1.next()) {
			response.sendRedirect("Fail.jsp?error=3");

    } else {
         st.executeUpdate("Insert into INSCRIPCION values (FOLIO.nextval,CURRENT_TIMESTAMP,'"+cuenta+"','"+idcurso+"')");
        response.sendRedirect("Fail.jsp?error=4");
    }

    } else {
               response.sendRedirect("Fail.jsp?error=2");
    }

}
else{
    String curso = request.getParameter("curso");
    String iduser="";
    String cuenta="";
    String idcurso="";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:SERVDES","desarrollo","desarrollo");
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    ResultSet rs;
    ResultSet rs1;
        rs = st.executeQuery("SELECT ID_CURSO FROM CURSO WHERE NOMBRE= '"+curso+"'");
    if (rs.next()) {
 		idcurso=rs.getString(1);
    } else {
        response.sendRedirect("Fail.jsp?error=1");
    }
    rs = st.executeQuery("SELECT ID_USUARIO FROM USUARIO WHERE USER_NAME= '"+session.getAttribute("userid")+"'");
    if (rs.next()) {
 		iduser=rs.getString(1);
    } else {
        response.sendRedirect("Fail.jsp?error=2");
    }
    rs = st.executeQuery("SELECT NUM_CUENTA FROM REGISTRO WHERE ID_USUARIO="+iduser+"");
   if (rs.next()) {
 		cuenta=rs.getString(1);
    } else {
        out.println("Ocurrió un error <a href='cursos.jsp'>Reintentar</a>");
    }


    rs1 = st1.executeQuery("select * from INSCRIPCION where NUM_CUENTA='" + cuenta + "' and ID_CURSO='" + idcurso + "'");
    if (rs1.next()) {
        response.sendRedirect("Fail.jsp?error=3");

    } else {

                    st.executeUpdate("Insert into INSCRIPCION values (FOLIO.nextval,CURRENT_TIMESTAMP,'"+cuenta+"','"+idcurso+"')");
        response.sendRedirect("Fail.jsp?error=4");
    }
            
    
}

%>