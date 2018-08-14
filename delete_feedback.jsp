<%-- 
    Document   : delete_feedback
    Created on : Aug 4, 2018, 12:48:48 AM
    Author     : lenovo
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="civil_package.CivilClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
              String id=request.getParameter("id");
              st.executeUpdate("delete from feedback where fid='"+id+"'");
              response.sendRedirect("view_feedback.jsp");
              %>
        
    </body>
</html>
