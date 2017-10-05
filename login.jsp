<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userid = request.getParameter("uname").toUpperCase();    
    String pwd = request.getParameter("pass");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:SERVDES","desarrollo","desarrollo");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from USUARIO where USER_NAME=UPPER('" + userid + "') and PASS='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("Fail.jsp?error=2");
    }
%>