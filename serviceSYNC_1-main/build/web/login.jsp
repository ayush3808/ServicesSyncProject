

<%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.ResultSet" %>
<%
     int Result=0;
     int Result1=0;
     int Result2=0;
      String button=request.getParameter("btn1");
      if(button!=null&&button.equals("Login"))
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
Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serviceSYNC","root","root");
 PreparedStatement st=con.prepareStatement("select * from user_signup_table where Username=? and Password=?");
        st.setString(1,Username);
        st.setString(2,Password);
        ResultSet rs=st.executeQuery();
        if(rs.next())
        {
              
    Cookie ck=new Cookie("serviceSYNC","Username");
    ck.setMaxAge(100000);
   response.addCookie(ck); 


            session.setAttribute("bob",Username);
               response.sendRedirect("userDeshbord.jsp");
            }
            

    
              else
        {
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
            
            background-size:100% 740px;
        }
        .contain{
            width:300px;
            height:400px;
            background-color:black;
            margin-left:36%;
            margin-top:7%;
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
            font-size:20px;
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
                 margin-top:-3px; 
                 
                  position: absolute;
                 height:40px;
                 left:635px;
                 width:40px;
                 padding:19px 13px;
                 
             }
             .menutab:hover{
                 background-color:orange;
             }
    </style>
   
    <body>
        <img src="media/logo.jpg " class="logo">
             <%@include file="publicheader.jsp"%>
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
                <table> <th>Login</th>
                    <tr><td> <input class="inp1" type="text" name="uName" placeholder="enter userName" required=""></td></tr>
                    <tr><td><input class="inp2" type="password" name="pwd" placeholder="enter password" required=""></td></tr>
                    <tr><td><p>Forgot Password</p></td></tr>
                
                 <tr><td><input type="submit" class="button" Value="Login" name="btn1" ></td></tr>
                <tr><td><p>Not a member?<span><a href="singnuppage.jsp">Sign up</a></span></p></td></tr>
                
                </table>
                </form>
            </div>
        </div>
    </body>
</html>











    
    
           
