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
              String id=request.getParameter("id");
                if(request.getParameter("button")!=null)
        {
           
            
            String rate=request.getParameter("radio");
              st.executeUpdate("insert into rates values('"+id+"','"+rate+"')");
            
        }
             
        %>  
              
       
        
<form id="form1" name="form1" method="post" action="">
  <p align="center">Rates Staff</p>
  <div align="center"></div>
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">Rating</div>  </td>
    </tr>
    <tr>
      <td><div align="center">1</div></td>
      <td><input type="radio" name="radio" id="radio" value="1" />
      <label for="radio"></label></td>
    </tr>
    <tr>
      <td><div align="center">2</div></td>
      <td><input type="radio" name="radio" id="radio2" value="2" />
      <label for="radio2"></label></td>
    </tr>
    <tr>
      <td><div align="center">3</div></td>
      <td><input type="radio" name="radio" id="radio3" value="3" />
      <label for="radio3"></label></td>
    </tr>
    <tr>
      <td><div align="center">4</div></td>
      <td><input type="radio" name="radio" id="radio4" value="4" />
      <label for="radio4"></label></td>
    </tr>
    <tr>
      <td><div align="center">5</div></td>
      <td><input type="radio" name="radio" id="radio5" value="5" />
      <label for="radio5"></label></td>
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