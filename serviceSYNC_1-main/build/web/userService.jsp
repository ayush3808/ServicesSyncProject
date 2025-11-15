






<%@include file="userSecurity.jsp"%>
<%@page  import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement"%>
    
<%  String button=request.getParameter("btn1");
 if(button!=null&&button.equals("Next"))
 {
      String name=request.getParameter("Name");
      String email=request.getParameter("mail");
      String vehicleType=request.getParameter("type");
 
      String vehicleNo=request.getParameter("vehicle");
      String contact=request.getParameter("cont"); 
      String serviceType=request.getParameter("servType"); 
      String serviceStatus=request.getParameter("pending");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serviceSYNC","root","root");
            PreparedStatement st= con.prepareStatement("insert into service_info_table(name,email,vehicleType,vehicleNo,contact,serviceType,serviceStatus) values(?,?,?,?,?,?,?)");
            st.setString(1,name);
            st.setString(2,email);
            st.setString(3,vehicleType);
           st.setString(4,vehicleNo);
          st.setString(5,contact);
            st.setString(6,serviceType);
            st.setString(7,"pending");
            st.executeUpdate();
            con.close();
              response.sendRedirect("userService.jsp");
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
        <img src="media/logo.jpg " class="logo">
         
        <%@include file="publicheader_1.jsp"%>
    <marquee> AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
          
      <div class="contain">
            <div class="text">
                <form action="" method="post">
                    <table><th> Service </th>
                        <tr><td><input  type="text" name="Name" placeholder="enter name" class="inp1" required=""></td></tr>
                    <tr><td>  <input  type="text" name="mail" placeholder="enter email " class="inp2" required=""></td></tr>
                    <tr><td> <select  name="type" class="inp3" required="">
                                     <option>Type</option>
                                     <option>two wheeler</option>
                                     <option>four wheeler</option>
                                     <option>other</option>
                            </select></td></tr>

                    <tr><td><input  type="text" name="vehicle" placeholder="enter vehicle no" class="inp4" required=""></td></tr>
                    <tr><td> <input  type="number" name="cont" placeholder="enter Contact" class="inp5" required=""></td></tr>    
                    <tr><td> <select  name="servType" class="inp6" required="">
                                    <option>Service Type</option>
                                    <option>Battery jumpstart</option>
                                    <option>Flat tyre</option>
                                    <option>Towing service</option>
                                    <option>Starting problem</option>
                                    <option>2w General Service</option>
                            </select></td></tr>
                               <br>            
                     <tr><td><input type="submit" class="button" name="btn1" value="Next" ></td></tr>
                
                 </table>
                </form>    
            </div>           
        </div>
    </body>
</html>
