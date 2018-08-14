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
  <table width="200" height="98" border="1" align="center">
    <tr>
      <td><label for="select"></label>
        <select name="select" id="select">
          <option>Select Type</option>
          <option>Head</option>
          <option>Staff</option>
      </select></td>
    </tr>
    <tr>
      <td><input type="submit" name="button" id="button" value="SEARCH" /></td>
    </tr>
  </table>
</form>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
   <%
             CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
              String type="";
   if(request.getParameter("button")!=null)
        {
            type=request.getParameter("select");
            
                    
           
             
    ResultSet rs=st.executeQuery("select * from staff_reg where type='"+type+"'");
             %>
    
  <table width="402" border="1" align="center">
    <tr>
      <td width="89">Name</td>
      <td width="51">dob</td>
      <td width="69">gender</td>
      <td width="78"></td>
      <td width="22">&nbsp;</td>
    </tr>
     <%
    while(rs.next())
    {
    %>
    <tr>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      
     
      <td><% if(type.equalsIgnoreCase("staff")){%><a href="admin_dept_head_details.jsp?id=<%=rs.getString(1)%>">view more</a><% } else {%><a href="edit_depthead.jsp?id=<%=rs.getString(1)%>">edit</a><% }%></td>
      <td><a href="delete_dpthead.jsp?lid=<%=rs.getString("lid")%>">delete</a></td>
    </tr>
      <% } %>
  </table>
             <% }%>
  <p align="center">&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p>&nbsp;</p>
</body>
</html>