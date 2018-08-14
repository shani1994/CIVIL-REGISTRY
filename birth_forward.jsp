<%@page import="civil_package.CivilClass"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<%
 
    
    String bid=request.getParameter("id");
      
        CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
              String did=session.getAttribute("deptid").toString();
             ResultSet rs=st.executeQuery("select * from staff_reg where did='"+did+"' and type='staff'");
             
             
%>
<body>
<form id="form1" name="form1" method="post" action="">
  <p>&nbsp;</p>
  <table width="248" border="0" align="center">
    <tr>
      <td width="81">Staff</td>
      <td width="157"><label for="select"></label>
        <select name="select" id="select">
            <%
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
      <td>Target Date</td>
      <td><label for="textfield"></label>
      <input type="date" name="textfield" id="textfield" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="button" id="button" value="Submit" />
      </div>        <div align="center"></div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
      <%
       if(request.getParameter("button")!=null)
        {
            String staff=request.getParameter("select");
             
            String tdate=request.getParameter("textfield");
            st.executeUpdate("insert into assigned_certificate values(null,'"+bid+"','"+staff+"','"+tdate+"')");
            
        }
            
       
      %>
</body>
</html>