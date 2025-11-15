
<!DOCTYPE html>

<html>
    <style>
        body{
            background-image:url('media/11.jpg');
            background-repeat:no-repeat;
            background-size:100%;
            
        }
        .tdtheme{
            color:black;
            font-size:18px;
            text-transform:uppercase;
            font-family:berline sans fb;
            text-align:center;
        }
        .divtheme
        {
            width:70%;
            height:750px;
            background-color:rgba(255,255,255,0.5);
            
            background-repeat:no-repeat;
            background-size:50%;
            box-shadow: 10px 10px 10px black;
            margin-left:250px;
            margin-top:10px;
            transition:.2s ease;
             }
             .tabtheme{
                 background-color:rgba(255,255,255,0.5);
                 padding-left: 20%;
                 height:70px;
                 color:black;
                 
             }
             .logo{
                 position: absolute;
                 height:90px;
                 align-left:100px;
                 width:100px;
                
             }
             .logo1{
                 position: absolute;
                 height:100px;
                 left:280px;
                 width:100px;
                
             }
             .title{
                 color:white;
                 font-size:60px;
                 font-family:arial;
                 padding-left:100px;
                 float:left;
                 padding-top:30px;
                 
                     
             }
             .title spane{
                 color:orange;
             }
             .tdtheme:hover{
                 background-color:orange;
             }
             .bo{
                 width:200px;
                 height:40px;
                 background-color:white;
                 padding-top:25px;
                 padding-bottom: 35px;
                   transition:.3s ease;
                 
             }
             .bo:hover{
                 background-color: orange;
             }
             .menutab{
                 margin-top:5px; 
                 
                  position: absolute;
                 height:40px;
                 left:650px;
                 width:40px;
                 padding:19px 9px;
                 
             }
             .menutab:hover{
                 background-color:orange;
                 
             }
             .tab{
                 border:solid black ; 
                 width:20px;
                 margin-top: 90px;
                 margin-left: 180px;
                 border-width:20px; 
             }
             .button{
                 width:200px;
            height:44px;
            background-color:white;
            color:black;
            border:none;
            font-size:22px;
            border-radius:25px;
            margin-top:-70px;
            cursor:pointer;
             margin-left:800px;
             }
              .button:hover{
            border:3px solid orange;
            color:white;
            font-size:20px;
            background-color:black;
        }
        
    </style>
   
    <body>
        
        
  <%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.ResultSet"%>
<%   
       String idValue=(String)session.getAttribute("koko");
       Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serviceSYNC","root","root");
      PreparedStatement st=con.prepareStatement("select * from service_info_table where servNo=? ");
      st.setString(1,idValue);
        ResultSet rs=st.executeQuery(); 
    String Name="";String email="";String vehicleType=""; String vehicleNo=""; String Contact=""; String serviceType=""; String serviceStatus="";            
    if(rs.next())
    {
        
        Name=rs.getString(2);
         
          email=rs.getString(3);
          vehicleType=rs.getString(4);
          vehicleNo=rs.getString(5);
          Contact=rs.getString(6);
          serviceType=rs.getString(7);
          serviceStatus=rs.getString(8);
         
}
 %>       
        
        
       
    <marquee>AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
        
        <div class='divtheme'>
          <img src="media/logo.jpg " class="logo">
            
            <table align="left" class="tab"  style="color:orange" cellspacing="20" cellpadding="20"  >
            
            <tr align="center" bgcolor="black">
                        <td>Name:</td>
                        <td><%=Name%></td>
            </tr>   
                    <tr align="center" bgcolor="black">
                        <td>Email:</td>
                        <td><%=email%></td>
                        
                    </tr>
                    <tr align="center" bgcolor="black">
                        <td>vehicleType:</td>
                        <td><%=vehicleType%></td>
                        
                    </tr>
                    <tr align="center" bgcolor="black">
                        <td>vehicleNo:</td>
                        <td><%=vehicleNo%></td>
                        
                    </tr>
                    <tr align="center" bgcolor="black">
                        <td>Contact:</td>
                        <td><%=Contact%></td>
                        
                        
                    </tr>
                    <tr align="center" bgcolor="black">
                        <td>serviceType:</td>
                        <td><%=serviceType%></td>
                        
                    </tr>
                    <tr align="center" bgcolor="black">
                        <td>serviceStatus:</td>
                        <td><%=serviceStatus%></td>
                        
                    </tr>
                    
                </table>
          
            
            
            
            
        </div>
    </body>
</html>












