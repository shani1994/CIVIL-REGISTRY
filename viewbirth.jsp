<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="civil_package.CivilClass"%>
<%  
CivilClass s=new CivilClass();
Connection con=s.getcon();
Statement st=con.createStatement();   
             
            
 String did=request.getParameter("id");
 ResultSet rs=st.executeQuery("select * from birth_certificate where bid='"+did+"'");
  
 %>
 
  <%
            if(rs.next())
             {
            %>
<script  type="text/ecmascript">
	alert(" Request varified");
	window.location="stVassignedappl.php";
	
	</script>
	
	<?php
}


?>
    <div style="width:600;height:auto;overflow:auto">
      <table width="1107" border="0" frame="box">
        <tr align="left" bgcolor="#FDE2E1">
          <th width="57">Slno</th>
          <th width="76">Name</th>
          <th width="48">Sex</th>
          <th width="101">Date of Birth</th>
          <th width="112">Place of birth</th>
          <th width="123">Name of mother</th>
          <th width="114">Name of Father </th>
          <th width="160">Address of parants At the time of birth of child</th>
          <th width="76">Permenent Address of Parants</th>
          <th width="72">Date Of Requested</th>
        </tr>
        <?php 
  include("connect.php");
  $res=mysql_query("select * from birthcertficate where id=$id");
  if(mysql_num_rows($res)>0)
  {
	  $i=0;
	  while($row=mysql_fetch_array($res))
	  {
		  
  
  
  ?>
        <tr bgcolor="#FFFFFF">
          <td height="22" bgcolor="#FFFFCC"><?php echo ++$i;?></td>
          <td bgcolor="#FFFFCC"><?php echo $row[1];?></td>
          <td bgcolor="#FFFFCC"><?php echo $row[2];?></td>
          <td bgcolor="#FFFFCC"><?php echo $row[3];?></td>
          <td bgcolor="#FFFFCC"><?php echo $row[4];?></td>
          <td bgcolor="#FFFFCC"><?php echo $row[5];?></td>
          <td bgcolor="#FFFFCC"><?php echo $row[6];?></td>
          <td bgcolor="#FFFFCC"><?php echo $row[7];?></td>
          <td bgcolor="#FFFFCC"><?php echo $row[8];?></td>
          <td bgcolor="#FFFFCC"><?php echo $row[9];?></td>
          <td width="37" bgcolor="#FFFFCC"><a href="?V=V&id=<?php echo $row[0];?>">Verify</a></td>
          <td width="55" bgcolor="#FFFFCC"><a href="birthreject.php?R=R&id=<?php echo $row[0];?>">Reject</a></td>
        </tr>
        <?php }} ?>
      </table>
    </div>
