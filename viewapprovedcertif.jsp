<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="civil_package.CivilClass"%>
<%
  CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();
              String id=request.getParameter("id");
              ResultSet rs=st.executeQuery("select * from birth_certificate where bid='"+id+"'");
              if(rs.next())
              {
              
%>



<table width="945" border="0" frame="box">
  <tr align="center">
    <td>FORM NO.5</td>
  </tr>
  <tr align="center">
    <td>GOVERNMENT OF KERALA</td>
  </tr>
  <tr align="center">
    <td height="25"><p>DEPARTMENT OF CORPERATION</strong></p></td>
  </tr>
  <tr>
    <td align="center">Name of Local Goverment issuing certificate &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kozikode Corperation</td>
  </tr>
  <tr align="center">
    <td><p>BIRTH CERTIFICATE</p></td>
  </tr>
  <tr>
    <td height="40" align="center"><p>(Issued under Section 12 of the Registration of Birth and Deaths Act.1969 and Rule 8 of the Kerala Registration of Birth and Deaths Rule 1999)</p></td>
  </tr>
  <tr>
    <td align="center">This is to to certify that the Following information has been taken from the original record of birth is which the register for(local area /local body) Tirur Municipality of District Malappurm of State Kerala</td>
  </tr>
  <tr>
    <td><table width="924" border="0">
      <tr>
        <td width="457">Name</td>
        <td width="457"><%=rs.getString(3)%></td>
      </tr>
      <tr>
        <td>Sex</td>
        <td><%=rs.getString(4)%></td>
      </tr>
      <tr>
        <td>Date of Birth</td>
        <td><%=rs.getString(5)%></td>
      </tr>
      <tr>
        <td>Place of Birth</td>
        <td><%=rs.getString(6)%></td>
      </tr>
      <tr>
        <td>Name of Mother</td>
        <td><%=rs.getString(7)%></td>
      </tr>
      <tr>
        <td>Name of Father</td>
        <td><%=rs.getString(8)%></td>
      </tr>
      <tr>
        <td>Address of the Parents at the time of birth of child</td>
        <td><%=rs.getString(9)%></td>
      </tr>
      <tr>
        <td>Permenent address of parents</td>
        <td><%=rs.getString(3)%></td>
      </tr>
      <tr>
        <td>Registration Number</td>
        <td><%=rs.getString(9)%></td>
      </tr>
      <tr>
        <td>Remarks(if any)</td>
        <td>***---</td>
      </tr>
      <tr>
        <td>Date of Issue</td>
        <td><%=rs.getString(12) %></td>
      </tr>
      <tr>
        <td>Address of the issuing authority</td>
        <td>Kozikode Corperation</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <% }%>
  <tr>
    <td align="center">&quot;Ensure Registration of Every birth and death&quot;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
