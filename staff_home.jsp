<%@page import="civil_package.CivilClass"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<%
      
        CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
             
          
  String id=session.getAttribute("lid").toString();
   ResultSet rs=st.executeQuery("select did from staff_reg where lid='"+id+"'");
   if(rs.next())
   {
       session.setAttribute("deptid", rs.getString(1));
   }
               
  
%>
<body>
<form id="form1" name="form1" method="post" action="">
  <table width="200" border="1">
    <tr>
      <td><a href="view_certificate.jsp">View Certificate</a></td>
    </tr>
    <tr>
      <td><a href="view_assigned_work.jsp">View assigned work</a></td>
    </tr>
    <tr>
      <td><a href="snd_status_head.jsp">Send status to head/user</a></td>
    </tr>
    <tr>
      <td><a href="send_user_notification.jsp">send user notification</a></td>
    </tr>
    <tr>
      <td><a href="user_interaction.jsp">user interaction</a></td>
    </tr>
    <tr>
      <td><a href="view notificatin.jsp">view notification</a></td>
    </tr>
          <tr>
      <td><a href="change_pass_staff.jsp">Change Password</a></td>
    </tr>
  </table>
</form>
</body>
</html>