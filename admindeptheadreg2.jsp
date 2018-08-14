
<%@page import="java.sql.ResultSet"%>
<%@page import="civil_package.sendmail"%>
<%@page import="civil_package.RandomPassword"%>
<%@page import="civil_package.CivilClass"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.util.Streams"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.fileupload.FileItemStream"%>
<%@page import="org.apache.commons.fileupload.FileItemIterator"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    ServletFileUpload upload=new ServletFileUpload();
    FileItemIterator iter=null;
    String name="";
            String dob="";
            String gen="";
            String ftname="";
            String mtname="";
            String hname="";
            String place="";
            String post="";
            String dist="";
            String phno="";
            String pin="";
            String emailid="";
            String quali="";
            String dept="";      
            String filename="";

    iter=upload.getItemIterator(request);
    while(iter.hasNext()){
        FileItemStream item=iter.next();
        String nam=item.getFieldName();
        InputStream stream=item.openStream();
        if(item.isFormField()){
            String str=Streams.asString(stream);
            if(nam.equals("select")){
                dept=str;
            }
            else if(nam.equals("textfield")){
                name =str;
            }
             else if(nam.equals("textfield3")){
                dob =str;
            }
            else if(nam.equals("radio")){
                gen=str;
            }
            else if(nam.equals("textfield4")){
                ftname =str;
            }
            else if(nam.equals("textfield5")){
                mtname=str;
            }
            else if(nam.equals("textfield6")){
                hname =str;
            }
            else if(nam.equals("textfield7")){
                place=str;
            }
            else if(nam.equals("textfield8")){
                post =str;
            }
            else if(nam.equals("textfield9")){
                dist=str;
            }
             else if(nam.equals("textfield10")){
                pin=str;
            }
            else if(nam.equals("textfield11")){
                phno =str;
            }
            else if(nam.equals("textfield12")){
                emailid=str;
            }
            else if(nam.equals("textfield13")){
                quali=str;
            }
        
        }
        else if(item.getName()!=""){
            filename=new SimpleDateFormat("yyyyMMddHHmmss").format(new Date())+".jpg";
            File f=new File("C:\\Users\\system3\\Desktop\\donbosco_mail\\Civil_Registry\\web\\photos\\"+filename);
            if(!f.exists()){
                f.createNewFile();
            }
            FileOutputStream fos=new FileOutputStream(f);
            int ch;
            while((ch=stream.read())!=-1){
                fos.write(ch);
            }
       }
}
              CivilClass s=new CivilClass();
              Connection con=s.getcon();
              Statement st=con.createStatement();   
              RandomPassword r=new RandomPassword();
            String pass=r.randomAlphaNumeric(8);
           
            sendmail sm=new sendmail();
            sm.send(emailid, "YOUR USERNAME IS "+emailid+" AND PASSWORD IS "+pass, "LOGIN DETAILS");
            
            st.executeUpdate("insert into login values(null,'"+emailid+"','"+pass+"','dept')", Statement.RETURN_GENERATED_KEYS);
            String id="";
            ResultSet rs=st.getGeneratedKeys();
            if(rs.next())
            {
                id=rs.getString(1);
            }
             
              st.executeUpdate("insert into staff_reg values(null,'"+dept+"','"+name+"','"+dob+"','"+gen+"','"+ftname+"','"+mtname+"','"+hname+"','"+place+"','"+post+"','"+dist+"','"+phno+"','"+pin+"','"+emailid+"','"+quali+"','"+filename+"','"+id+"','head')");
          
              
%>
<script type="text/javascript">
    alert("Succesfully Added");
    window.location="adminhome.jsp";
</script>
