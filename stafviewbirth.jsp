<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="civil_package.CivilClass"%>
<%  
CivilClass s=new CivilClass();
Connection con=s.getcon();
Statement st=con.createStatement();   
 String lid=session.getAttribute("lid").toString();
  %>     

<center>
 <p>&nbsp;</p> <p>&nbsp;</p> 
<form>
    
<div style="overflow:scroll;width:available;height:414px">
<table  border="0" >
  <tr >
<h3>View Request</h3>
<p>&nbsp;</p>
    <th width="68"><h2>Slno</th>
    <th width="254"><h2>Name</th>
    <th width="254"><h2>Target Date</th>

  </tr>
   <%
   ResultSet rs=st.executeQuery("select birth_certificate.Name, assigned_certificate.birth_certificate.bid from assigned_certificate,birth_certficate wherebirth_certificate.bid=assigned_certificate.bid and assigned_certificate.sid='"+lid+"'  and birth_certificate.status='assigned' ");
     while(rs.next())
             {
            %>
  <tr>
    <td align="center"><%=rs.getString(3)%></td>
    <td align="center"><%=rs.getString(1)%></td>
    <td align="center" ><%=rs.getString(2)%></td>
   
     <td width="119" ><a href="viewbirth.jsp?id=<%=rs.getString(3)%>">View</a></td>
    
  </tr>
 <% } %>
</table>
</form>
</center>
<?php



 include("loginfooter.php");?>
