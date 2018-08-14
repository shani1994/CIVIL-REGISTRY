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
        String cid=request.getParameter("id");
        CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
              
               if(request.getParameter("button")!=null)
        {
            String reply=request.getParameter("textarea");
              st.executeUpdate("update complaints set reply='"+reply+"' where cid='"+cid+"'");
              
        }
            
              %>
<form id="form1" name="form1" method="post" action="">
  <p align="center">REPLY</p>
  <table width="306" border="1" align="center">
    <tr>
      <td><label for="textarea2"></label>
      <textarea name="textarea" id="textarea2" cols="45" rows="5"></textarea></td>
    </tr>
    <tr>
      <td width="296" height="87"><label for="textarea"></label><div align="center">
        <input type="submit" name="button" id="button" value="Submit" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>