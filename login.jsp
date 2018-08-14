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
        if(request.getParameter("button")!=null)
        {
            String username=request.getParameter("textfield");
            
            String password=request.getParameter("textfield2");
             ResultSet rs=st.executeQuery("select * from login where username='"+username+"' and password='"+password+"' and utype!='suspend'");
           if(rs.next())
           {
               String id=rs.getString(1);
               session.setAttribute("lid", id);
               String type=rs.getString(4);
               if(type.equals("admin"))
               {
                      response.sendRedirect("adminhome.jsp");
               }
               else if(type.equals("dept"))
               {
                    response.sendRedirect("dept_home.jsp");
               }
               else
               {
                  response.sendRedirect("staff_home.jsp"); 
               }   
            
           }
            else
           {
               %>
               <script>
                   alert("invalid user")
                   </script>
               <%
              
        }
        }
        %>
<form id="form1" name="form1" method="post" action="">
  <p align="center">LOGIN HERE            </p>
  <table width="238" border="0" align="center">
    <tr>
      <td width="92">Username</td>
      <td width="130"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Password</td>
      <td><label for="textfield2"></label>
      <input type="password" name="textfield2" id="textfield2" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="LOGIN" />
      <input type="submit" name="button2" id="button2" value="forgot  password" /></td>
    </tr>
  </table>
</form>
</body>
</html>
