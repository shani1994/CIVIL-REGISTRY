<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="civil_package.CivilClass"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>+
     <%
        if(request.getParameter("button")!=null)
        {
            String dept=request.getParameter("textfield");
            
            
           
             String description=request.getParameter("textarea");
              
              CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
             st.executeUpdate("insert into dept_reg values(null,'"+dept+"','"+description+"')");
          
              
              
        }
        %>
<form id="form1" name="form1" method="post" action="">
  <p align="center">&nbsp;</p>
  <p align="center">DEPARTMENT REGISTRATION</p>
  <table width="291" border="1" align="center">
    <tr>
      <td width="144">Department</td>
      <td width="131"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
    <tr>
      <td>Description</td>
      <td><label for="textarea"></label>
      <textarea name="textarea" id="textarea" cols="45" rows="5"></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="Submit" /></td>
    </tr>
  </table>
</form>
</body>
</html>
