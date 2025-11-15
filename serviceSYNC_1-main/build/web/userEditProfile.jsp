<%@include file="userSecurity.jsp"%>
<%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.ResultSet"%>


<% 
   int Result=0;
   int Result1=0;
    int Result2=0;
    
    
    String button=request.getParameter("btn1");
  if(button!=null&&button.equals("Edit"))
  {
    String Username=request.getParameter("uName");
    String Password=request.getParameter("pwd");
    if(Username.equals(""))
    {
    Result1=1;
}
else if(Password.equals(""))
{
 Result2=1;
}
    
    else
    {
    String fullName=request.getParameter("Name");
    String contact=request.getParameter("Cont");
    String email=request.getParameter("mail");
    String address=request.getParameter("Address");
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serviceSYNC","root","root");
  PreparedStatement st=con.prepareStatement("select * from user_signup_table where Username=? and Password=?");
        st.setString(1,Username);
        st.setString(2,Password);
        ResultSet rs=st.executeQuery();
        if(rs.next())
        {
    
    
    
    
 PreparedStatement st1=con.prepareStatement("update  user_signup_table set fullName=?,Contact=?,email=?,address=? where Username=?");
 st1.setString(1,fullName);
 st1.setString(2,contact);
  st1.setString(3,email);
   st1.setString(4,address);
    st1.setString(5,Username);
     st1.executeUpdate();
   
              response.sendRedirect("userProfile.jsp");



}
else{
 Result=1;
}
}
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
            height:650px;
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
            margin-top:50px;
             border-bottom:2px solid white;
            color:gray;
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
            color:gray;
             margin-left:30px;
        }
          .inp3{
            border:none;
            background-color:black;
            border-bottom:2px solid white;
            width:250px;
            font-size:22px;
            margin-top:40px;
            outline:none;
            color:gray;
             margin-left:30px;
        }
          .inp4{
            border:none;
            background-color:black;
            border-bottom:2px solid white;
            width:250px;
            font-size:22px;
            margin-top:40px;
            outline:none;
            color:gray;
             margin-left:30px;
        }
         .inp5{
            border:none;
            background-color:black;
            border-bottom:2px solid white;
            width:250px;
            font-size:22px;
            margin-top:40px;
            outline:none;
            color:gray;
             margin-left:30px;
        }
        .inp6{
            border:none;
            background-color:black;
            border-bottom:2px solid white;
            width:250px;
            font-size:22px;
            margin-top:40px;
            outline:none;
            color:gray;
             margin-left:30px;
        }


        .button{
            width:250px;
            height:44px;
            background-color:white;
            color:black;
            border:none;
            font-size:22px;
            border-radius:30px;
            margin-top:30px;
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
    String Name="";String Contact="";String email="";String Address="";
    if(rs.next())
    {
        Name=rs.getString(2);
         Contact=rs.getString(3);
          email=rs.getString(7); 
          Address=rs.getString(5);
}
 %>       
        <img src="media/logo.jpg " class="logo">
         
        <%@include file="publicheader_1.jsp"%>
    <marquee>AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
          
      <div class="contain">
            <div class="text">
                <% if(Result==1)
                {%>
                <p> <font color="red">INVALID ID/PASSWORD</font></p>
                <%}%>
                <% if(Result1==1)
                {%>
                <p> <font color="red">id is required</font></p>
                <%}%>
                <% if(Result2==1)
                {%>
                <p> <font color="red">password is required</font></p>
                <%}%>
                <form action="" method="post">
                    <table><th>Edit Profile</th>
                        <tr><td><input  type="text" name="uName" placeholder="enter username" class="inp1" required=""></td></tr>
                       <tr><td><input  type="password" name="pwd" placeholder="enter password" class="inp2" required=""></td></tr>   
                    <tr><td><input  type="text"    name="Name" value=" <%=Name%>" class="inp1" required=""></td></tr>
                       <tr><td><input  type="number" name="Cont" value="<%=Contact%>" class="inp2" required=""></td></tr>   
                        <tr><td><input  type="mail" name="mail" value="<%=email%>" class="inp3"required=""></td></tr>
                         <tr><td><input  type="text" name="Address" value="<%=Address%>" class="inp4" required=""></td></tr>
                     <tr><td><input type="submit" class="button" name="btn1" value="Edit" ></td></tr>
                
                 </table>
                </form>    
            </div>           
        </div>
    </body>
</html>
