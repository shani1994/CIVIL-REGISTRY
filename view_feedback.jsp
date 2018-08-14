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
              ResultSet rs=st.executeQuery("select feedback.*,uer_reg.fname,lname from uer_reg,feedback where feedback.uid=uer_reg.lid;");
              
   %>
              
<form id="form1" name="form1" method="post" action="">
  <table width="689" border="1" align="center">
    <tr>
      <td height="38" colspan="4"><div align="center">View feedback</div></td>
    </tr>
    <tr>
      <td width="166">date</td>
      <td width="165">Suggestions</td>
      <td width="165">User Name</td>
      <td width="165">&nbsp;</td>
    </tr>
       <%
    while(rs.next())
    {
    %>
    <tr>
      <td><%=rs.getString(2)%>;</td>
      <td><%=rs.getString(3)%>;</td>
      
      <td><%=rs.getString("fname") + " "+rs.getString("lname")%>
      </td>
      <td><a href="delete_feedback.jsp?id=<%=rs.getString(1)%>">delete</a></td>
    </tr>
    <% }%>
  </table>
</form>
</body>
</html>