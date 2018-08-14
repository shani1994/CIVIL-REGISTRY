
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="civil_package.CivilClass"%>
<%  
CivilClass s=new CivilClass();
Connection con=s.getcon();
Statement st=con.createStatement();   
             
            
 String did=request.getParameter("id");
 ResultSet rs=st.executeQuery("select * from deathcertificate where dcid='"+did+"'");
  
 %>
 
  <%
            if(rs.next())
             {
            %>
<div align="center">
<p>&nbsp;</p><p>&nbsp;</p>
<form id="form1" name="form1" method="post" action="">
<div style="overflow:scroll;width:available;height:424px">
  <table width="536" height="1382" frame="box">
    <tr>
<h3>Death Certificate</h3>
<p>&nbsp;</p><p>&nbsp;</p>
      <td width="239">1)Date of Death</td>
      <td width="285"><input type="date" name="textfield" id="textfield"  value="<%=rs.getString(2)%>" required /></td>
    </tr>
    <tr>
      <td>2)Name of the Deceased</td>
      <td><input type="text" name="textfield2" id="textfield2"required  value="<%=rs.getString(3)%>"/></td>
    </tr>
    <tr>
      <td>3)Permanent Address of the Deceased</td>
      <td><textarea name="textarea" id="textarea" cols="45" rows="5" required> <%=rs.getString(4)%></textarea></td>
    </tr>
    <tr>
      <td>4)Name of Father/Husband</td>
      <td><input type="text" name="textfield3" id="textfield3"required value="<%=rs.getString(5)%>" /></td>
    </tr>
    <tr>
      <td>5)Name of Mother</td>
      <td><input type="text" name="textfield18" id="textfield18" value="<%=rs.getString(6)%>" required/></td>
    </tr>
    <tr>
      <td>6)Address of the deceased at the time of death</td>
      <td><textarea name="textarea2" id="textarea2" cols="45" rows="5" required><%=rs.getString(7)%>></textarea></td>
    </tr>
    <tr>
      <td>7)Sex of the deceased</td>
      <td><input type="radio" name="radio3" id="Male" value="Male" <% if(rs.getString("sex").equals("Male")){%> checked<%  }%> 
        Male
          <input type="radio" name="radio3" id="Female" value="Female"   <% if(rs.getString("sex").equals("Female")){%> checked<%  }%> 
          Female</td>
    </tr>
    <tr>
      <td>8)Age of the deceased</td>
      <td><input type="text" name="textfield5" id="textfield5"required value="<%=rs.getString(9)%>" /></td>
    </tr>
    <tr>
      <td>9)Place of death</td>
      <td><input type="text" name="textfield6" id="textfield6"required value="<%=rs.getString(10)%>" /></td>
    </tr>
    <tr>
      <td>a)Hospital / Institution- Name</td>
      <td><input type="text" name="textfield7" id="textfield7"value="<%=rs.getString(11)%>"/></td>
    </tr>
    <tr>
      <td>b)House ? Address</td>
      <td><textarea name="textarea3" id="textarea3" cols="45" rows="5"><%=rs.getString(12)%></textarea></td>
    </tr>
    <tr>
      <td>c)Other Place</td>
      <td><input type="text" name="textfield8" id="textfield8" value="<%=rs.getString(13)%>"/></td>
    </tr>
    <tr>
      <td>10)Informant?s name and<br />
        address<br /></td>
      <td><textarea name="textarea4" id="textarea4" cols="45" rows="5"><%=rs.getString(14)%></textarea></td>
    </tr>
    <tr>
      <th colspan="2">11)Town or Village of residence of the<br />
        deceased :( Name of Corporation/ Municipality
        Gramapanchayat where the deceased usually lived.
        This can be different from the place where the
        Death occurred. The house address is not required
      to be entered).</th>
    </tr>
    <tr>
      <td>(a) Name of Corporation/ Municipality/<br />
      Gramapanchayat</td>
      <td><input type="text" name="textfield9" id="textfield9" required value="<%=rs.getString(15)%>"/></td>
    </tr>
    <tr>
      <td>(b) Is it a Town/ Village (Tick the appropriate<br />
        entry below)<br /></td>
      <td><input type="radio" name="radio4" id="Town" value="Town" <% if(rs.getString("town_vilage").equals("Town")){%> checked<%  }%>  />
      Town
        <input type="radio" name="radio4" id="Village" value="Village"  <% if(rs.getString("town_vilage").equals("Village")){%> checked<%  }%> />
      Village</td>
    </tr>
    <tr>
      <td>(c) Name of District:</td>
      <td><input type="text" name="textfield11" id="textfield11" required value="<%=rs.getString(17)%>" /></td>
    </tr>
    <tr>
      <td>(d) Name of State:</td>
      <td><input type="text" name="textfield12" id="textfield12"  required value="<%=rs.getString(18)%>"/></td>
    </tr>
    <tr>
      <td>12)Religion: (Tick the appropriate entry below)<br />
        1. Hindu 2. Muslim 3. Christian<br />
        4. Any other religion: (write name of the<br />
      religion)</td>
      <td><input type="text" name="textfield13" id="textfield13" required value="<%=rs.getString(19)%>" /></td>
    </tr>
    <tr>
      <td>13)Occupation of the deceased:<br />
      (If no occupation write Nil)</td>
      <td><input type="text" name="textfield14" id="textfield14"  value="<%=rs.getString(20)%>" /></td>
    </tr>
    <tr>
      <td>14)Type of medical attention received before<br />
        death:<br />
        (Tick the appropriate entry below)<br /></td>
      <td><p>
          <input type="radio" name="radio" id="Institutional" value="Institutional"   <% if(rs.getString("medical_intention").equals("Institutional")){%> checked<%  }%> />
      Institutional</p>
      <p>
        <input type="radio" name="radio" id="radio" value="Medical Intention" <% if(rs.getString("medical_intention").equals("Medical Intention")){%> checked<%  }%>  />
      Medical Intention</p>
      <p><input type="radio" name="radio" id="radio2" value="No Medical Intention"  <% if(rs.getString("medical_intention").equals("No Medical Intention")){%> checked<%  }%>/>
      No medical attention</p></td>
    </tr>
    <tr>
      <td>15)Was the cause of death medically<br />
        certified? :<br />
      (Tick the appropriate entry below)</td>
      <td><input type="radio" name="radio5" id="Yes" value="Yes"<% if(rs.getString("death_cause").equals("Yes")){%> checked<%  }%> />
      Yes
        <input type="radio" name="radio5" id="No" value="No" <% if(rs.getString("death_cause").equals("NO")){%> checked<%  }%>  />
      No</td>
    </tr>
    <tr>
      <td>16)Name of Disease or Actual Cause of<br />
        Death:<br />
        (For all deaths irrespective of whether medically<br />
      certified or not)</td>
      <td><textarea name="textarea5" id="textarea5" cols="45" rows="5"><%=rs.getString(23)%></textarea></td>
    </tr>
    <tr>
      <td>17)In case this is a female death, did the<br />
        death occur While pregnant, at the time<br />
        of delivery or within 6 weeks after the<br />
        end of pregnancy:<br />
      (Tick the appropriate entry</td>
      <td><input type="radio" name="radio6" id="Yes2" value="Yes" <%  if(rs.getString("pregnancy").equals("Yes")){%> checked<%  }%> />
Yes
  <input type="radio" name="radio6" id="No2" value="No" <%  if(rs.getString("pregnancy").equals("NO")){%> checked<%  }%> />
No</td>
    </tr>
    <tr>
      <td>18)If used to habitually smoke for how many<br />
      Years?</td>
      <td><input type="text" name="textfield10" id="textfield10" value="<%=rs.getString("smoke")%>" /></td>
    </tr>
    <tr>
      <td>19)If used to habitually chew tobacco in any<br />
      form for how many years?</td>
      <td><input type="text" name="textfield15" id="textfield15" value="<%=rs.getString(26)%>" /></td>
    </tr>
    <tr>
      <td>20)If used to habitually chew arecanut in any<br />
        form (including pan masala)-for how many<br />
      years?</td>
      <td><input type="text" name="textfield16" id="textfield16" value="<%=rs.getString(27)%>" /></td>
    </tr>
    <tr>
      <td>21)If used to habitually drink alcohol for how<br />
      many years?</td>
      <td><input type="text" name="textfield17" id="textfield17" value="<%=rs.getString(28)%>" /></td>
    </tr>
    <tr>
      <th colspan="2"><input type="submit" name="button" id="button" value="accept" /><input type="submit" name="button2" id="button" value="Reject" /></th>
      </tr>
      <% } %>
  </table>
</form>
</div>
<%
        if(request.getParameter("button")!=null)
        {
            
           
	ResultSet rs1=st.executeQuery("select max(regno)+1 from deathcertificate");
	if(rs1.next())
        {
	st.executeUpdate("update deathcertificate set regno='"+rs1.getString(1)+"',status='Accepted' where dcid='"+did+"'");
        }
        %>
    <script  type="text/ecmascript">
	alert("Request verified");
	window.location="staffviewdeath.jsp";
	
	</script>
              <%  }  %>

<%
        if(request.getParameter("button2")!=null)
        {
           	
            
	
	st.executeUpdate("update deathcertificate set status='Rejected' where dcid='"+did+"'");
	
        %>
    <script  type="text/ecmascript">
	alert("Request verified");
	window.location="staffviewdeath.jsp";
	
	</script>
              <%  }




%>
