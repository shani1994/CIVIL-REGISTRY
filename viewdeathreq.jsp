<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="civil_package.CivilClass"%>


<form id="form1" name="form1" method="post" action="">
<div style="width:600;height:auto;overflow:auto">
<table width="1107" border="0" frame="box">
  <tr align="left" bgcolor="#FDE2E1">
    <th width="57">Slno</th>
    <th width="76">Name</th>
    <th width="48">Sex</th>
    <th width="101">Date of Death</th>
    <th width="112">Permanent Address</th>
    <th width="123">Name of mother</th>
    <th width="114">Name of Father </th>
    <th width="160">Age</th>
    <th width="76">Place of Death</th>
    <th width="72">Date Of Requested</th>
  </tr>
  <%  
CivilClass s=new CivilClass();
Connection con=s.getcon();
Statement st=con.createStatement();   
             
            
 String did=request.getParameter("id");
 ResultSet rs=st.executeQuery("select * from deathcertificate where dcid='"+did+"'");
  
 %>
 
  <%
            while(rs.next())
             {
            %>
  <tr bgcolor="#FFFFFF">
    <td height="22" bgcolor="#FFFFCC"><%=rs.getString(1)%></td>
    <td bgcolor="#FFFFCC"><%=rs.getString(3)%></td>
    <td bgcolor="#FFFFCC"><%=rs.getString(8)%></td>
    <td bgcolor="#FFFFCC"><%=rs.getString(2)%></td>
    <td bgcolor="#FFFFCC"><%=rs.getString(4)%></td>
    <td bgcolor="#FFFFCC"><%=rs.getString(6)%></td>
    <td bgcolor="#FFFFCC"><%=rs.getString(5)%></td>
    <td bgcolor="#FFFFCC"><%=rs.getString(9)%></td>
    <td bgcolor="#FFFFCC"><%=rs.getString(10)%></td>
    <td bgcolor="#FFFFCC"><%=rs.getString("date_reqst")%></td>
     <td width="37" bgcolor="#FFFFCC"><a href="viewdeath.php?id=<?php echo $row[0];?>">View</a></td>
    
  </tr>
  <?php }} ?>
</table>
</div>
</form>

