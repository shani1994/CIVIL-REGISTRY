
<%@page import="java.sql.ResultSet"%>

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
    String work="";
            String desc="";
            
            String tdate="";
            String status="";
            String staff_id="";
            String file="";

    iter=upload.getItemIterator(request);
    while(iter.hasNext()){
        FileItemStream item=iter.next();
        String nam=item.getFieldName();
        InputStream stream=item.openStream();
        if(item.isFormField()){
            String str=Streams.asString(stream);
            if(nam.equals("select")){
                staff_id=str;
            }
            else if(nam.equals("textfield")){
                work=str;
            }
             else if(nam.equals("textarea")){
                desc =str;
            }
            else if(nam.equals("textfield2")){
                tdate=str;
            }
             else if(nam.equals("fileField")){
                file=str;
            }
            
        }
    
        else if(item.getName()!=""){
          
            File f=new File("C:\\Users\\system3\\Desktop\\donbosco_mail\\Civil_Registry\\web\\file\\"+item.getName().substring(item.getName().lastIndexOf("\\") + 1));
            file=item.getName().substring(item.getName().lastIndexOf("\\") + 1);
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
             
            
                       
              st.executeUpdate("insert into work_add values(null,'"+work+"','"+desc+"',curdate(),'"+tdate+"','"+file+"','pending','"+staff_id+"')");
          
              
%>
<script type="text/javascript">
    alert("Succesfully Added");
    window.location="dept_home.jsp";
</script>
