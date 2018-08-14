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
              String id= session.getAttribute("lid").toString();
              
        if(request.getParameter("button")!=null)
        {
            String name1=request.getParameter("textfield");
             String name2=request.getParameter("textfield3");
              String name3=request.getParameter("textfield2");
              ResultSet rs=st.executeQuery("select * from login where lid='"+id+"' and password='"+name1+"'");
              if(rs.next())
              {
                  if(name2.equals(name3))
                  {
                       st.executeUpdate("update login set password='"+name2+"' where lid='"+id+"'");
                  }
                  else
                  {
                      %>
                      
                      <script>
                         alert("Password Mismatch") 
                          </script>
                      
                      <%
                  }
              }
             else
              {
                  %>
                  <script>
                      alert("Password Incorrect")
                      
                      </script>
                  
                  <%
              }
              
        }
            
            %>
            
<form id="form1" name="form1" method="post" action="">
  <table width="295" border="0" align="center">
    <tr>
      <td colspan="2">    <strong>Change Password</strong></td>
    </tr>
    <tr>
      <td width="123">C<strong>hang</strong>e Password</td>
      <td width="156"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
    <tr>
      <td>New Password</td>
      <td><label for="textfield3"></label>
      <input type="text" name="textfield3" id="textfield3" /></td>
    </tr>
    <tr>
      <td>Confirm Password</td>
      <td><input type="text" name="textfield2" id="textfield2" /></td>
    </tr>
    <tr>
      <td colspan="2"><label for="textfield2"> 
        <input type="submit" name="button" id="button" value="Submit" />
      </label></td>
    </tr>
  </table>
</form>
</body>
</html>