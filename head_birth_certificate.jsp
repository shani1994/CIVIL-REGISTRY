<%@page import="civil_package.CivilClass"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
   
              
<form id="form1" name="form1" method="post" action="">
  <p align="center">Birth Certificate</p>
  <table width="200" border="1" align="center">
    <tr>
      <td>SlD</td>
      <td>Name</td>
      <td>&nbsp;</td>
    </tr>
        <%
          CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
               ResultSet rs=st.executeQuery("select bid,name from birth_certificate where status='pending'");
               int i=1;
               while(rs.next())
               {
                     
              %>
    <tr>
        
      <td><%=i%></td>
      <td><%=rs.getString(2)%></td>
      <td><a href="birth_forward.jsp?id=<%=rs.getString(1)%>">forward</a></td>
    </tr>
      <% 
         i++;      
         } %>
  </table>
  <p>&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>