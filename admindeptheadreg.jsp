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
        
        %>
<form action="admindeptheadreg2.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <p>&nbsp;</p>
  <p align="center">DEPARTMENT HEAD REGISTRATION</p>
  <table width="324" border="1" align="center">
    <tr>
      <td>Department</td>
      <td><label for="select"></label>
        <select name="select" id="select">
            <option value="">SELECT</option>
            <%
             ResultSet rs=st.executeQuery("select * from dept_reg");
             while(rs.next())
             {
            %>
            <option value="<%=rs.getString(1)%>"><%= rs.getString(2) %></option>
            <%
             }
            %>
      </select></td>
    </tr>
    <tr>
      <td width="122">Name</td>
      <td width="186"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
    
    <tr>
      <td>DOB</td>
      <td><label for="textfield3"></label>
      <input type="date" name="textfield3" id="textfield3" /></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><input type="radio" name="radio" id="radio" value="male" />
      <label for="radio">Male
        <input type="radio" name="radio" id="radio2" value="female" />
      Female</label></td>
    </tr>
    <tr>
      <td>Father Name</td>
      <td><label for="textfield4"></label>
      <input type="text" name="textfield4" id="textfield4" /></td>
    </tr>
    <tr>
      <td>Mother Name</td>
      <td><label for="textfield5"></label>
      <input type="text" name="textfield5" id="textfield5" /></td>
    </tr>
    <tr>
      <td>House Name</td>
      <td><label for="textfield6"></label>
      <input type="text" name="textfield6" id="textfield6" /></td>
    </tr>
    <tr>
      <td>Place</td>
      <td><label for="textfield7"></label>
      <input type="text" name="textfield7" id="textfield7" /></td>
    </tr>
    <tr>
      <td>Post</td>
      <td><label for="textfield8"></label>
      <input type="text" name="textfield8" id="textfield8" /></td>
    </tr>
    <tr>
      <td>District</td>
      <td><label for="textfield9"></label>
      <input type="text" name="textfield9" id="textfield9" /></td>
    </tr>
    <tr>
      <td>Pin</td>
      <td><label for="textfield10"></label>
      <input type="text" name="textfield10" id="textfield10" /></td>
    </tr>
    <tr>
      <td>Phone No</td>
      <td><label for="textfield11"></label>
      <input type="text" name="textfield11" id="textfield11" /></td>
    </tr>
    <tr>
      <td>Email id</td>
      <td><label for="textfield12"></label>
      <input type="text" name="textfield12" id="textfield12" /></td>
    </tr>
    <tr>
      <td>Qualification</td>
      <td><label for="textfield13"></label>
      <input type="text" name="textfield13" id="textfield13" /></td>
    </tr>
    <tr>
      <td>Image</td>
      <td><label for="fileField"></label>
      <input type="file" name="fileField" id="fileField" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="Submit" /></td>
    </tr>
  </table>
</form>
</body>
</html>
