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
               String did="";
               ResultSet rs1=st.executeQuery("select did from staff_reg where lid='"+session.getAttribute("lid")+"'");
        if(rs1.next())
        {
           did=rs1.getString(1);
            
        }
              ResultSet rs=st.executeQuery("select work_add.work,work_add.date,work_add.status,work_add.sid,staff_reg.name,work_add.target_date,work_add.wid from work_add,staff_reg where  staff_reg.did='"+did+"' and staff_reg.type='staff' and work_add.sid=staff_reg.lid ");
              
   %>
<form id="form1" name="form1" method="post" action="">
  <p align="center">VIEW STATUS OF WORK</p>
  <table width="406" height="73" border="1" align="center">
    <tr>
      
      <td width="42">Target Date</td>
      
      
      <td width="44">Assign Work</td>
    
      <td width="31">Staff</td>
      <td width="129">Report</td>
    </tr>
       <%
    while(rs.next())
    {
    %>
    <tr>
     
      <td><%=rs.getString("target_date")%></td>
      
      <td><%=rs.getString("work")%></td>
    
      <td><%=rs.getString("name")%></td>
      <td><%
      String report="",rdate="";
      if(rs.getString("status").equals("completed")){
          Statement st2=con.createStatement();
         ResultSet rs2=st2.executeQuery("select report.*,work_add.work,work_add.date,work_add.status,work_add.sid,staff_reg.name,work_add.wid from work_add,report,staff_reg where  staff_reg.did='"+did+"' and staff_reg.type='staff' and work_add.sid=staff_reg.lid  and report.wid=work_add.wid");
           if(rs2.next())
           {
               report=rs2.getString("report");
               rdate=rs2.getString(4);
           }
           
           %><br>REPORTED DATE:<%=rdate%><Br><br></br> REPORT &nbsp;<a href="file/<%=report%>"><%=report%></a><br>
          <p><a href="rates_staff.jsp?id=<%=rs.getString("wid")%>">Add_Rating</a><% }
      
     
      else {%>
      <%=rs.getString("status")
              
      %>
      <% }%>
          </p>
      <p>&nbsp;</p></td>
    </tr>
      <% }%>
  </table>
</form>
</body>
</html>