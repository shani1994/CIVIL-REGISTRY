

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="civil_package.CivilClass"%>
<%
  CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
              String id=request.getParameter("id");
              ResultSet rs=st.executeQuery("select * from deathcertificate where dcid='"+id+"'");
              if(rs.next())
              {
              
%>
	
	
	
<div align="center">
<form method="post">
<table width="945" border="0" frame="box">
  <tr align="center">
    <td>FORM NO.2</td>
  </tr>
  <tr align="center">
    <td>GOVERNMENT OF KERALA</td>
  </tr>
  <tr align="center">
    <td height="25"><p>DEPARTMENT OF MUNICIPALITY</strong></p></td>
  </tr>
  <tr>
    <td align="center">Name of Local Goverment issuing certificate &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tirur Municipality</td>
  </tr>
  <tr align="center">
    <td><p>DEATH REPORT</p></td>
  </tr>
  <tr>
    <td height="40" align="center"><p>(Issued under Section 12 of the Registration of Birth and Deaths Act.1969 and Rule 8 of the Kerala Registration of Birth and Deaths Rule 1999)</p></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="924" border="0">
       <tr>
      <td width="533">1)Date of Death</td>
      <td width="399"><%=rs.getString(2)%></td>
    </tr>
    <tr>
      <td>2)Name of the Deceased</td>
      <td><%=rs.getString(3)%></td>
    </tr>
    <tr>
      <td>a)Permanent Address of the Deceased</td>
      <td><%=rs.getString(4)%></td>
    </tr>
    <tr>
      <td>b)Name of Father/Husband</td>
      <td><%=rs.getString(5)%></td>
    </tr>
    <tr>
      <td>c)Name of Mother</td>
      <td><%=rs.getString(6)%></td>
    </tr>
    <tr>
      <td>d)Address of the deceased at the time of death</td>
      <td><%=rs.getString(7)%></td>
    </tr>
    <tr>
      <td>3)Sex of the deceased</td>
      <td><%=rs.getString(8)%></td>
    </tr>
    <tr>
      <td>4)Age of the deceased</td>
      <td><%=rs.getString(9)%></td>
    </tr>
    <tr>
      <td>5)Place of death</td>
      <td><%=rs.getString(10)%></td>
    </tr>
    <tr>
      <td>a)Hospital / Institution- Name</td>
      <td><%=rs.getString(11)%></td>
    </tr>
    <tr>
      <td>b)House ? Address</td>
      <td><%=rs.getString(12)%></td>
    </tr>
    <tr>
      <td>c)Other Place</td>
      <td><%=rs.getString(13)%></td>
    </tr>
    <tr>
      <td>6)Informants name and 
        address </td>
      <td><%=rs.getString(14)%></td>
    </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center">Statistical Information 
    This part to be detached and sent for statistical processing</td>
  </tr>
  <tr>
    <td><table width="924" border="0">
      <tr>
        <td><table width="924" border="0">
          <tr>
            <td colspan="2">7)Town or Village of residence of the
              deceased :( Name of Corporation/ Municipality/
              Gramapanchayat where the deceased usually lived.
              This can be different from the place where the
              Death occurred. The house address is not required
              to be entered).</td>
          </tr>
          <tr>
            <td width="479">(a) Name of Corporation/ Municipality/
              Gramapanchayat</td>
            <td width="435"><%=rs.getString(15)%></td>
          </tr>
          <tr>
            <td>(b) Is it a Town/ Village (Tick the appropriate
              entry below) </td>
            <td><%=rs.getString(16)%></td>
          </tr>
          <tr>
            <td>(c) Name of District:</td>
            <td><%=rs.getString(17)%></td>
          </tr>
          <tr>
            <td>(d) Name of State:</td>
            <td>&nbsp;<%=rs.getString(18)%></td>
          </tr>
          <tr>
            <td>8)Religion: (Tick the appropriate entry below) 
              1. Hindu 2. Muslim 3. Christian 
              4. Any other religion: (write name of the 
              religion)</td>
            <td>&nbsp;<%=rs.getString(19)%></td>
          </tr>
          <tr>
            <td>9)Occupation of the deceased: 
              (If no occupation write Nil)</td>
            <td><%=rs.getString(20)%></td>
          </tr>
          <tr>
            <td>10)Type of medical attention received before 
              death: 
              (Tick the appropriate entry below) </td>
            <td><%=rs.getString(21)%></td>
          </tr>
          <tr>
            <td>11)Was the cause of death medically 
              certified? : 
              (Tick the appropriate entry below)</td>
            <td><%=rs.getString(22)%></td>
          </tr>
          <tr>
            <td>12)Name of Disease or Actual Cause of 
              Death: 
              (For all deaths irrespective of whether medically 
              certified or not)</td>
            <td><%=rs.getString(23)%></td>
          </tr>
          <tr>
            <td>13)In case this is a female death, did the 
              death occur While pregnant, at the time 
              of delivery or within 6 weeks after the 
              end of pregnancy: 
              (Tick the appropriate entry</td>
            <td><%=rs.getString(24)%></td>
          </tr>
          <tr>
            <td>14)If used to habitually smoke for how many 
              Years?</td>
            <td><%=rs.getString(25)%></td>
          </tr>
          <tr>
            <td>15)If used to habitually chew tobacco in any 
              form for how many years?</td>
            <td><%=rs.getString(26)%></td>
          </tr>
          <tr>
            <td>16)If used to habitually chew arecanut in any 
              form (including pan masala)-for how many 
              years?</td>
            <td><%=rs.getString(27)%></td>
          </tr>
          <tr>
            <td>17)If used to habitually drink alcohol for how 
              many years?</td>
            <td><%=rs.getString(28)%></td>
          </tr>
            <% }%>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</div>
