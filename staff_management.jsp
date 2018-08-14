<%@page import="civil_package.CivilClass"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
      <%
             CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select staff_reg.*,login.utype from staff_reg,login where login.lid=staff_reg.lid and login.utype!='dept'");
              %>
<form id="form1" name="form1" method="post" action="">
  <p>&nbsp;</p>
  <p align="center">STAFF MANAGEMENT  </p>
  <table width="383" border="1" align="center">
    <tr>
      <td width="51">Name</td>
      <td width="33">DOB</td>
      <td width="43">Place</td>
      <td width="63">Email id</td>
      <td width="38">&nbsp;</td>
      <td width="38">&nbsp;</td>
    </tr>
       <%
    while(rs.next())
    {
    %>
    <tr>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(9)%></td>
      <td><%=rs.getString(14)%></td>
       <td>
      <%
      if(rs.getString(19).equals("staff")){
      %>
      
      <p><a href="staff_suspend.jsp?id=<%=rs.getString("lid")%>">suspend</a>      </p><%} else {%>
      <p><a href="staff_resume.jsp?id=<%=rs.getString("lid")%>">Resume</a></p></td> <%}%>
      <td><p><a href="update_staff.jsp?id=<%=rs.getString(1)%>">Update</a></p>
      <p><a href="delete_staff.jsp?lid=<%=rs.getString("lid")%>">Delete</a></p></td>
    </tr>
      <% } %>
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>