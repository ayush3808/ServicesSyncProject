<%@include file="userSecurity.jsp"%>
<%@page  import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement"%>
    
<%  String button=request.getParameter("btn1");
 if(button!=null&&button.equals("submit"))
 {
      String name=request.getParameter("Name");
      String email=request.getParameter("mail");
      String complain=request.getParameter("comp"); 

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serviceSYNC","root","root");
            PreparedStatement st= con.prepareStatement("insert into complain_table(name,email,complain) values(?,?,?)");
            st.setString(1,name);
            st.setString(2,email);
            st.setString(3,complain);
           
          
            
            st.executeUpdate();
            con.close();
              response.sendRedirect("userComplain.jsp");
}
      %>      
      


<!DOCTYPE html>
<html>
    <style>
        *{
            margin:0%;
            padding:0%;
        }
        body{
            background-size:100% ;
        }
        .contain{
            width:300px;
            height:550px;
            background-color:black;
            margin-left:40%;
            margin-top:0px;
            text-align:center;
            color:white;
        }
        .contain.text{
            position:relative;
            top:7%;
        }
        .inp1{
            border:none;
            background-color:black;
            border-bottom:2px solid white;
            width:250px;
            font-size:22px;
            margin-top:40px;
            outline:none;
            color:white;
            margin-left:30px;
            
        }
        .inp2{
            border:none;
            background-color:black;
            border-bottom:2px solid white;
            width:250px;
            font-size:22px;
            margin-top:40px;
            outline:none;
            color:white;
            margin-left:30px;
            
        }
          .inp3{
            border-top:2px solid white;
            background-color:black;
            border-bottom:2px solid white;
            width:250px;
            height:200px;
            font-size:22px;
            margin-top:40px;
            outline:none;
            color:white;
           margin-left:30px;
            
        }
          

    
 

        .button{
            width:250px;
            height:44px;
            background-color:white;
            color:black;
            border:none;
            font-size:22px;
            border-radius:25px;
            margin-top:20px;
            cursor:pointer;
            margin-left:30px;
            
            
        }
        .button:hover{
            border:3px solid orange;
            color:white;
            font-size:20px;
            background-color:black;
        }
        .contain h1{
            font-size:36px;
            color:orange;
        }
        p{
            margin-top:30px;
            font-size:20px;
            
        }
        
        p span{
            color:white;
        }
        
.text th{
            color:orange;
            font-size:34px; 
        }
    </style>
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
            width:90%;
            height:600px;
            background-color:rgba(255,255,255,0.1);
            background-image:url('media/13.jpg');
            background-repeat:no-repeat;
            background-size:100%;
            box-shadow: 10px 10px 10px black;
            margin-left:70px;
            margin-top:40px;
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
                 left:60px;
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
                 padding:12px 9px;
                 
             }
             .menutab:hover{
                 background-color:orange;
                 
             }
   </style>
    
    
    <body>
         <%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.ResultSet"%>
<%   
    String idValue=(String)session.getAttribute("bob");
       Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serviceSYNC","root","root");
      PreparedStatement st=con.prepareStatement("select * from user_signup_table where Username=? ");
      st.setString(1,idValue);
        ResultSet rs=st.executeQuery(); 
    String Name="";String email="";
    if(rs.next())
    {
        Name=rs.getString(2);
         email=rs.getString(7);
          
}
 %>   
        <img src="media/logo.jpg "class="logo">
         
        <%@include file="publicheader_1.jsp"%>
    <marquee>AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
        
        
        <div class="contain">
            <div class="text">
<form action="" method="post">
<table>
                <th>Complain</th>
                 <tr><td>  <input type="text" name="Name" Value="<%=Name%>" class="inp1" required="">
                  <tr><td> <input  type="mail" name="mail" Value="<%=email%>" class="inp2" required="">
                   <tr><td><textarea class="inp3" name="comp"placeholder="enter Complain" required=""></textarea>

              <br>


         <tr><td><input type="submit" class="button" name="btn1" value="submit" ></td></tr>
              
                </table>
</form>
                
                
            </div>
            
        </div>
    </body>
</html>
