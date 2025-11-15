<%@page  import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement"%>
    
<% String button=request.getParameter("btn1");
  if(button!=null&&button.equals("submit"))
    
    {
      String name=request.getParameter("1");
      String contact=request.getParameter("2");
      String mail=request.getParameter("3");
        String conres=request.getParameter("4");  
 Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serviceSYNC","root","root");
            PreparedStatement st= con.prepareStatement("insert into contact_us_table (name,contact,email,contactReason) values(?,?,?,?)");
            st.setString(1,name);
            st.setString(2,contact);
            st.setString(3,mail);
             st.setString(4,conres);
            
        st.executeUpdate();
            con.close();
             response.sendRedirect("Contact.jsp");
}
    %>
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
            height:500px;
            background-color:black;
            margin-left:20px;;
            margin-top:10px;
            text-align:center;
            color:white;
            
            display:flex;
           algin-iteam:left;
           justify-content:space-evenly; 
        }
        .contain.text{
            position:relative;
            top:10px;
            
        }
        .contain1{
            width:280px;
            height:150px;
            background-color:black;
            margin-left:100px;;
            margin-top:10px;
            text-align:center;
            color:white;
        
        }
        .contain1.text{
            position:relative;
            top:10px;
            
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
        .contain1 th{
      
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
            display: flex;
            justify-content: space-between;
            align-items: center;
            width:90%;
            height:600px;
            background-color:rgba(255,255,255,0.5);
           
            background-repeat:no-repeat;
            background-size:100%;
            box-shadow: 10px 10px 10px black;
            margin-left:70px;
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
                 
            .bo:hover{
                 background-color: orange;
             }
             
    </style>
             
    
    <body>
        <img src="media/logo.jpg "class="logo">
         
        <%@include file="publicheader.jsp"%>
    <marquee>AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
        
        <div class='divtheme'>
      
             <div class="contain">
            <div class="text">
          <form action="" method="post">
              
                <table> <th>Contact us</th>
                    <tr><td> <input class="inp1" type="text" name="1" placeholder="enter userName" required=""></td></tr>
                    <tr><td><input class="inp2" type="number" name="2" placeholder="enter UserContact no" required=""></td></tr>
                    <tr><td><input class="inp2" type="mail" name="3" placeholder="enter Email" required=""></td></tr>
                    <tr><td><input  type="text" class="inp2" name="4" placeholder="enter Contact reason" required=""></td></tr>
                       
                 <tr><td><input type="submit" class="button" Value="submit" name="btn1"></td></tr>
                 
                 
                 <td ><a href="http://wa.me/7999065050">ContactUs:On:- WhatsApp</a></td>
                            
                       
                </table>
                </form>
                </div>
                 </div>
             
                   
                
               
    <div>
        <iframe width="520" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=Goyal%20Nagar%20Indore+(serviceSYNC)&amp;t=&amp;z=12&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe> <a href='https://www.acadoo.de/'>Masterarbeit Unterstützung</a> <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=c9ab1041723107205b2e8a78824d811888c2dc50'></script>
    </div>
            
                <div class="contain1">
                
                <p style="font-size:20px;  ">Our HelpLine No:-<br>7999065050 <br> <br> Email:-<br>darshantongiya@gmail.com</p>
                
            </div>
               
                </table> 
                   
              </div>
         </div>
    </body>
</html>












