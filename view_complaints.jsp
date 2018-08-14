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
              ResultSet rs=st.executeQuery("select complaints.*,uer_reg.fname,lname from uer_reg,complaints where complaints.uid=uer_reg.lid;");
               
          
   %>
<form id="form1" name="form1" method="post" action="">
  <table width="335" border="1">
    <tr>
      <td colspan="4">View Complaints</td>
    </tr>
    <tr>
      <td width="83">User name</td>
      <td width="59">Date</td>
      <td width="86">Complaints</td>
      <td width="79">&nbsp;</td>
    </tr>
       <%
    while(rs.next())
    {
    %>
    <tr>
      <td><%=rs.getString("fname") + " "+rs.getString("lname")%></td>
      <td><%=rs.getString(3)%>;</td>
      <td><%=rs.getString(5)%>;</td>
      <td><a href="reply.jsp?id=<%=rs.getString(1)%>">Reply</a></td>
      
    </tr>
      <% } %>
  </table>
</form>
</body>
</html>