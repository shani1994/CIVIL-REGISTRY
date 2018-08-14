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
               
        %>
<form action="add_assign_work3.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <p align="center">ADD ASSIGN WORK</p>
  <table width="200" border="0" align="center">
    <tr>
      <td>Work</td>
      <td><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Descreption</td>
      <td><label for="textarea"></label>
      <textarea name="textarea" id="textarea" cols="45" rows="5"></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>target Date</td>
      <td><label for="textfield2"></label>
      <input type="date" name="textfield2" id="textfield2" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>File</td>
      <td><label for="fileField"></label>
      <input type="file" name="fileField" id="fileField" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Staff</td>
      <td><label for="select"></label>
        <select name="select" id="select">
              <%
              String did=session.getAttribute("deptid").toString();
             ResultSet rs=st.executeQuery("select * from staff_reg where did='"+did+"' and type='staff'");
             while(rs.next())
             {
            %>
            <option value="<%=rs.getString("lid")%>"><%= rs.getString(3) %></option>
            <%
             }
            %>
      </select></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="button" id="button" value="Submit" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>