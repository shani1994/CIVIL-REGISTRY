
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
                String id=request.getParameter("id");
                if(request.getParameter("button")!=null)
        {
            String dept=request.getParameter("select");
             
            String name=request.getParameter("textfield");
             String dob=request.getParameter("textfield3");
                          
            String gen=request.getParameter("radio");
             String ftname=request.getParameter("textfield4");
             String mtname=request.getParameter("textfield5");
              String hname=request.getParameter("textfield6");
             String place=request.getParameter("textfield7");
              String post=request.getParameter("textfield8");
             String dist=request.getParameter("textfield9");
              String phno=request.getParameter("textfield10");
             String pin=request.getParameter("textfield11");
              String emailid=request.getParameter("textfield12");
             String quali=request.getParameter("textfield13");
              
                                                        
                                                         
            
           
             
              st.executeUpdate("update staff_reg set did='"+dept+"',name='"+name+"',dob='"+dob+"',fathername='"+ftname+"',mothername='"+mtname+"',house_name='"+hname+"',dob='"+dob+"',fathername='"+ftname+"',mothername='"+mtname+"',house_name='"+hname+"',place='"+place+"',post='"+post+"',district='"+dist+"',phno='"+phno+"',pin='"+pin+"',email_id='"+emailid+"',qualification='"+quali+"' where dhid='"+id+"'");
          
             %>
             <script>
                 alert("UPDATED")
                 window.location="staff_management.jsp";
             </script>
    <% 
              
        }
		ResultSet rs=st.executeQuery("select staff_reg.*,dept_reg.dept_name from staff_reg ,dept_reg where dept_reg.did=staff_reg.did and staff_reg.dhid ='"+id+"'");
              if(rs.next())
              {
                  
              
        
        %>
<form action="" method="post"  name="form1" id="form1">
  <p>&nbsp;</p>
  <p align="center">DEPARTMENT HEAD REGISTRATION</p>
  <table width="324" border="1" align="center">
   <tr>
        <td colspan="2"><div align="center"><img name="" src="photos/<%=rs.getString("photo")%>" width="100" height="132" alt="" /></div></td>
    </tr>
    <tr>
      <td>Department</td>
      <td><label for="select"></label>
        <select name="select" id="select">
            <option value="">SELECT</option>
            <%
            Statement st2=con.createStatement();
             ResultSet rs1=st2.executeQuery("select * from dept_reg");
             while(rs1.next())
             {
            %>
            <option value="<%=rs1.getString(1)%>" <% if(rs.getString("did").equals(rs1.getString(1))){%> selected <% } %>><%= rs1.getString(2) %></option>
            <%
             }
            %>
      </select></td>
    </tr>
    <tr>
      <td width="122">Name</td>
      <td width="186"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" value="<%=rs.getString(3)%>"/></td>
    </tr>
    
    <tr>
      <td>DOB</td>
      <td><label for="textfield3"></label>
          <input type="date" name="textfield3" id="textfield3" value="<%=rs.getString(4)%>"/></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><input type="radio" name="radio" id="radio" value="male"  <% if(rs.getString(5).equals("male")){ %> checked <% }%>/>
      <label for="radio">Male
        <input type="radio" name="radio" id="radio2" value="female"  <% if(rs.getString(5).equals("female")){ %> checked <% }%>/>
      Female</label></td>
    </tr>
    <tr>
      <td>Father Name</td>
      <td><label for="textfield4"></label>
          <input type="text" name="textfield4" id="textfield4" value="<%=rs.getString(6)%>"/></td>
    </tr>
    <tr>
      <td>Mother Name</td>
      <td><label for="textfield5"></label>
          <input type="text" name="textfield5" id="textfield5" value="<%=rs.getString(7)%>"/></td>
    </tr>
    <tr>
      <td>House Name</td>
      <td><label for="textfield6"></label>
          <input type="text" name="textfield6" id="textfield6" value="<%=rs.getString(8)%>"/></td>
    </tr>
    <tr>
      <td>Place</td>
      <td><label for="textfield7"></label>
          <input type="text" name="textfield7" id="textfield7" value="<%=rs.getString(9)%>"/></td>
    </tr>
    <tr>
      <td>Post</td>
      <td><label for="textfield8"></label>
      <input type="text" name="textfield8" id="textfield8" value="<%=rs.getString(10)%>"/></td>
    </tr>
    <tr>
      <td>District</td>
      <td><label for="textfield9"></label>
          <input type="text" name="textfield9" id="textfield9" value="<%=rs.getString(11)%>"/></td>
    </tr>
    <tr>
      <td>Pin</td>
      <td><label for="textfield10"></label>
      <input type="text" name="textfield10" id="textfield10" value="<%=rs.getString(12)%>"/></td>
    </tr>
    <tr>
      <td>Phone No</td>
      <td><label for="textfield11"></label>
      <input type="text" name="textfield11" id="textfield11" value="<%=rs.getString(13)%>" /></td>
    </tr>
    <tr>
      <td>Email id</td>
      <td><label for="textfield12"></label>
          <input type="text" name="textfield12" id="textfield12" value="<%=rs.getString(14)%>" readonly/></td>
    </tr>
    <tr>
      <td>Qualification</td>
      <td><label for="textfield13"></label>
          <input type="text" name="textfield13" id="textfield13" value="<%=rs.getString(15)%>"/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="UPDATE" /></td>
    </tr>
  </table>
        <% }%>
</form>
</body>
</html>
