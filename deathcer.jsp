


<?php include("userheader.php");
include("connect.php");
session_start();
$id=$_SESSION["lid"];
if(isset($_POST["button"]))
{
	$date=$_POST["textfield"];
	$name=$_POST["textfield2"];
	$permaddre=$_POST["textarea"];
	$father=$_POST["textfield3"];
	$mother=$_POST["textfield18"];
	$addre=$_POST["textarea2"];
	$sex=$_POST["radio3"];
	$age=$_POST["textfield5"];
	$place=$_POST["textfield6"];
	$hosp=$_POST["textfield7"];
	$house=$_POST["textarea3"];
	$other=$_POST["textfield8"];
	$infor=$_POST["textarea4"];
	$corp=$_POST["textfield9"];
	$twn=$_POST["radio4"];
	$dis=$_POST["textfield11"];
	$state=$_POST["textfield12"];
	$reli=$_POST["textfield13"];
	$occup=$_POST["textfield14"];
	$medical=$_POST["radio"];
	$csedeath=$_POST["radio5"];
	$name_death=$_POST["textarea5"];
	$preg=$_POST["radio6"];
	$smoke=$_POST["textfield10"];
	$tobaco=$_POST["textfield15"];
	$areacenut=$_POST["textfield16"];
	$alchol=$_POST["textfield17"];
	mysql_query("insert into deathcertificate(date_death,name,permanent_address,father,mother,address,sex,age,place_death,hosp_name,hname_address,other_place,informants_name,corporation,town_vilage,district,state,religion,occupation,medical_intention,death_cause,disease,pregnancy,smoke,tobacco,arecanut,alchol,logid,date_reqst)values('$date','$name','$permaddre','$father','$mother','$addre','$sex',$age,'$place','$hosp','$house','$other','$infor','$corp','$twn','$dis','$state','$reli','$occup','$medical','$csedeath','$name_death','$preg','$smoke','$tobaco','$areacenut','$alchol',$id,curdate())");
	?>
    <script  type="text/ecmascript">
	alert("your Request Submited Will process Shortly");
	window.location="";
	
	</script>
    <?php
}
?>
<div align="center">

<p>&nbsp;</p>

<form id="form1" name="form1" method="post" action="">
<div style="overflow:scroll;width:available;height:450px">
  <table width="600"  frame="box" border="0">

    <tr>
      <td width="300">1)Date of Death</td>
      <td width="285"><input type="date" name="textfield" id="textfield" required /></td>
    </tr>
    <tr>
      <td>2)Name of the Deceased</td>
      <td><input type="text" name="textfield2" id="textfield2"required /></td>
    </tr>
    <tr>
      <td>3)Permanent Address of the Deceased</td>
      <td><textarea name="textarea" id="textarea" cols="45" rows="5" required></textarea></td>
    </tr>
    <tr>
      <td>4)Name of Father/Husband</td>
      <td><input type="text" name="textfield3" id="textfield3"required /></td>
    </tr>
    <tr>
      <td>5)Name of Mother</td>
      <td><input type="text" name="textfield18" id="textfield18" required/></td>
    </tr>
    <tr>
      <td>6)Address of the deceased at the time of death</td>
      <td><textarea name="textarea2" id="textarea2" cols="45" rows="5" required></textarea></td>
    </tr>
    <tr>
      <td>7)Sex of the deceased</td>
      <td><input type="radio" name="radio3" id="Male" value="Male"  required/>
        Male
          <input type="radio" name="radio3" id="Female" value="Female" required />
          Female</td>
    </tr>
    <tr>
      <td>8)Age of the deceased</td>
      <td><input type="text" name="textfield5" id="textfield5"required /></td>
    </tr>
    <tr>
      <td>9)Place of death</td>
      <td><input type="text" name="textfield6" id="textfield6"required /></td>
    </tr>
    <tr>
      <td>a)Hospital / Institution- Name</td>
      <td><input type="text" name="textfield7" id="textfield7" /></td>
</body>
</html>
    </tr>
    <tr>
      <td>b)House – Address</td>
      <td><textarea name="textarea3" id="textarea3" cols="45" rows="5"></textarea></td>
    </tr>
    <tr>
      <td>c)Other Place</td>
      <td><input type="text" name="textfield8" id="textfield8" /></td>
    </tr>
    <tr>
      <td>10)Informant’s name and<br />
        address<br /></td>
      <td><textarea name="textarea4" id="textarea4" cols="45" rows="5"></textarea></td>
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
      <td><input type="text" name="textfield9" id="textfield9" required/></td>
    </tr>
    <tr>
      <td>(b) Is it a Town/ Village (Tick the appropriate<br />
        entry below)<br /></td>
      <td><input type="radio" name="radio4" id="Town" value="Town" />
      Town
        <input type="radio" name="radio4" id="Village" value="Village" />
      Village</td>
    </tr>
    <tr>
      <td>(c) Name of District:</td>
      <td><input type="text" name="textfield11" id="textfield11" required /></td>
    </tr>
    <tr>
      <td>(d) Name of State:</td>
      <td><input type="text" name="textfield12" id="textfield12"  required/></td>
    </tr>
    <tr>
      <td>12)Religion: (Tick the appropriate entry below)<br />
        1. Hindu 2. Muslim 3. Christian<br />
        4. Any other religion: (write name of the<br />
      religion)</td>
      <td><input type="text" name="textfield13" id="textfield13" required /></td>
    </tr>
    <tr>
      <td>13)Occupation of the deceased:<br />
      (If no occupation write Nil)</td>
      <td><input type="text" name="textfield14" id="textfield14"  /></td>
    </tr>
    <tr>
      <td>14)Type of medical attention received before<br />
        death:<br />
        (Tick the appropriate entry below)<br /></td>
      <td><p>
          <input type="radio" name="radio" id="Institutional" value="Institutional" />
      Institutional</p>
      <p>
        <input type="radio" name="radio" id="radio" value="radio" />
      Medical Intention</p>
      <p><input type="radio" name="radio" id="radio2" value="radio2" />
      No medical attention</p></td>
    </tr>
    <tr>
      <td>15)Was the cause of death medically<br />
        certified? :<br />
      (Tick the appropriate entry below)</td>
      <td><input type="radio" name="radio5" id="Yes" value="Yes" />
      Yes
        <input type="radio" name="radio5" id="No" value="No" />
      No</td>
    </tr>
    <tr>
      <td>16)Name of Disease or Actual Cause of<br />
        Death:<br />
        (For all deaths irrespective of whether medically<br />
      certified or not)</td>
      <td><textarea name="textarea5" id="textarea5" cols="45" rows="5"></textarea></td>
    </tr>
    <tr>
      <td>17)In case this is a female death, did the<br />
        death occur While pregnant, at the time<br />
        of delivery or within 6 weeks after the<br />
        end of pregnancy:<br />
      (Tick the appropriate entry</td>
      <td><input type="radio" name="radio6" id="Yes2" value="Yes" />
Yes
  <input type="radio" name="radio6" id="No2" value="No" />
No</td>
    </tr>
    <tr>
      <td>18)If used to habitually smoke for how many<br />
      Years?</td>
      <td><input type="text" name="textfield10" id="textfield10" /></td>
    </tr>
    <tr>
      <td>19)If used to habitually chew tobacco in any<br />
      form for how many years?</td>
      <td><input type="text" name="textfield15" id="textfield15" /></td>
    </tr>
    <tr>
      <td>20)If used to habitually chew arecanut in any<br />
        form (including pan masala)-for how many<br />
      years?</td>
      <td><input type="text" name="textfield16" id="textfield16" /></td>
    </tr>
    <tr>
      <td>21)If used to habitually drink alcohol for how<br />
      many years?</td>
      <td><input type="text" name="textfield17" id="textfield17" /></td>
    </tr>
    <tr>
      <th colspan="2"><input type="submit" name="button" id="button" value="Submit" /></th>
      </tr>
  </table>
</div>
</form>
</div>
<?php include("loginfooter.php");?>
