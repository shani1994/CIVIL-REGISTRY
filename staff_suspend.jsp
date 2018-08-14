<%-- 
    Document   : staff_suspend
    Created on : Aug 4, 2018, 4:02:21 AM
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
              st.executeUpdate("update login set utype='suspend' where lid='"+id+"'");
              st.executeUpdate("update staff_reg set type='suspend' where lid='"+id+"'");
             
               response.sendRedirect("staff_management.jsp");
              
%>
    </body>
</html>
