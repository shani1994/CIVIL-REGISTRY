<%-- 
    Document   : delete_staff
    Created on : Aug 4, 2018, 3:30:51 AM
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
              String id=request.getParameter("lid");
              st.executeUpdate("delete from staff_reg where lid='"+id+"'");
              st.executeUpdate("delete from login where lid='"+id+"'");
               response.sendRedirect("staff_management.jsp");
              
%>
    </body>
</html>
