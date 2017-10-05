<%@ page language="java" %> 
<%@ page import = "MailSender"%> 
<% 
MailSender ms = new MailSender(); 

boolean result = ms.send("smtp.gmail.com","bocrates18@gmail.com", 
"vid.ame.95@gmail.com","cc@midominio.com", "bcc@midominio.com" , 
"mail de prueba", false, new StringBuffer("hola"),true); 

out.print("Resultado del envío del mensaje : " + result); 
%>
