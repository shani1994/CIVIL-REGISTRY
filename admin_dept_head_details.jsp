<%@page import="civil_package.sendmail"%>
<%@page import="civil_package.RandomPassword"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="civil_package.CivilClass"%>
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
               String id=request.getParameter("id");
              ResultSet rs=st.executeQuery("select staff_reg.*,dept_reg.dept_name from staff_reg ,dept_reg where dept_reg.did=staff_reg.did and staff_reg.dhid ='"+id+"'");
              if(rs.next())
              {
                  
              
        %>
        <form action="admin_view_staffandhead.jsp" method="post"  name="form1" id="form1">
  <p>&nbsp;</p>
  <p align="center">DEPARTMENT HEAD REGISTRATION</p>
  <table width="324" border="1" align="center">
    <tr>
        <td colspan="2"><div align="center"><img name="" src="photos/<%=rs.getString("photo")%>" width="32" height="32" alt="" /></div></td>
    </tr>
    <tr>
      <td>Department</td>
      <td><label for="select"><%=rs.getString("dept_name")%></label></td>
    </tr>
    <tr>
      <td width="122">Name</td>
      <td width="186"><label for="textfield"><%=rs.getString(3)%></label></td>
    </tr>
    
    <tr>
      <td>DOB</td>
      <td><label for="textfield3"><%=rs.getString(4)%></label></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><%=rs.getString(5)%></td>
    </tr>
    <tr>
      <td>Father Name</td>
      <td><label for="textfield4"><%=rs.getString(6)%></label></td>
    </tr>
    <tr>
      <td>Mother Name</td>
      <td><label for="textfield5"><%=rs.getString(7)%></label></td>
    </tr>
    <tr>
      <td>House Name</td>
      <td><label for="textfield6"><%=rs.getString(8)%></label></td>
    </tr>
    <tr>
      <td>Place</td>
      <td><label for="textfield7"><%=rs.getString(9)%></label></td>
    </tr>
    <tr>
      <td>Post</td>
      <td><label for="textfield8"><%=rs.getString(10)%></label></td>
    </tr>
    <tr>
      <td>District</td>
      <td><label for="textfield9"><%=rs.getString(11)%></label></td>
    </tr>
    <tr>
      <td>Pin</td>
      <td><label for="textfield10"><%=rs.getString(12)%></label></td>
    </tr>
    <tr>
      <td>Phone No</td>
      <td><label for="textfield11"><%=rs.getString(13)%></label></td>
    </tr>
    <tr>
      <td>Email id</td>
      <td><label for="textfield12"><%=rs.getString(14)%></label></td>
    </tr>
    <tr>
      <td>Qualification</td>
      <td><label for="textfield13"><%=rs.getString(15)%></label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button2" id="button" value="BACK" /></td>
    </tr>
  </table>
  <% } %>
</form>
</body>
</html>
