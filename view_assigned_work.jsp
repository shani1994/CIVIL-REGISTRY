<%@page import="civil_package.CivilClass"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <p align="center">view assigned work </p>
  <table width="200" border="1" align="center">
    <tr>
      <th scope="row">sl/no</th>
      <td>work</td>
      <td>description</td>
      <td>Target date </td>
      <td>&nbsp;</td>
    </tr>
       <%
          CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
               ResultSet rs=st.executeQuery("select work,description,target_date,file from work_add where sid='"+session.getAttribute("lid")+"' and  status='pending'");
             int i=1;
               while(rs.next())
               {
                     
              %>
    <tr>
      <th scope="row"><%=i%></th>
      <td><%=rs.getString("work")%></td>
      <td><%=rs.getString("description")%></td>
      <td><%=rs.getString("target_date")%></td>
      <td><a href="file/<%=rs.getString("file")%>">download</a></td>
    </tr>
       <% 
         i++;      
         } %>
  </table>
</form>
</body>
</html>
