

<%@page  import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement"%>
    
<%  String button=request.getParameter("btn1");
if(button!=null&&button.equals("submit"))
{
    
    
 
      String Username=request.getParameter("uName");
      String fullName=request.getParameter("fName");
      String contact=request.getParameter("cont");
      String password=request.getParameter("pwd");
      String address=request.getParameter("address");
      String gender=request.getParameter("gen");
      String email=request.getParameter("mail");

   Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serviceSYNC","root","root");
            PreparedStatement st= con.prepareStatement("insert into user_signup_table values(?,?,?,?,?,?,?)");
            st.setString(1,Username);
            st.setString(2,fullName);
            st.setString(3,contact);
            st.setString(4,password);
            st.setString(5,address);
            st.setString(6,gender);
            st.setString(7, email);
            st.executeUpdate();
            con.close();
            response.sendRedirect("login.jsp");


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
            outline:none;
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
.inp7{
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
                 left:630px;
                 width:40px;
                 padding:19px 13px;
                 
             }
             .menutab:hover{
                 background-color:orange;
             }
    </style>
    
    
    <body>
        <img src="media/logo.jpg "class="logo">
        <%@include file="publicheader.jsp"%>
    <marquee>AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
         <div class="contain">
            <div class="text">
                <form action="" method="post">
                <table><th>Sign Up</th>
                    <tr><td><input  type="text" name="uName" placeholder="enter Username" class="inp1" required=""></td></tr>
                    <tr><td>  <input  type="text" name="fName" placeholder="enter fullname " class="inp2" required=""></td></tr>
                      <tr><td><input  type="number" name="cont" placeholder="enter contact" class="inp3" required=""></td></tr>
                     <tr><td> <input  type="password" name="pwd" placeholder="enter password" class="inp4" required=""></td></tr>
                      <tr><td> <input type="text" name="address" placeholder="enter address" class="inp5" required=""></td></tr>
                      <br>
                
                    <tr><td> <select  name="gen" class="inp6" required="">
                                    <option>Gender</option>
                                      <option>male</option>
                                        <option>female</option>
                            </select></td></tr><br>
               <tr><td> <input type="mail" name="mail" placeholder="enter email" class="inp7"required="" ></td></tr>
               <tr><td><input type="submit" class="button" name="btn1" value="submit" ></td></tr>
                
                </table>
                </form>
                
            </div>
            
        </div>
    </body>
</html>
