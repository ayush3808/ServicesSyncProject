
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
                 
            .bo:hover{
                 background-color: orange;
             }
             .menutab{
                 margin-top:5px; 
                 
                  position: absolute;
                 height:40px;
                 left:650px;
                 width:40px;
                 padding:19px 13px;
                 
             }
             .menutab:hover{
                 background-color:orange;
             }
             }
    </style>
             
    
    <body>
        <img src="media/logo.jpg "class="logo">
         
         <table width='100%' class='tabtheme'>
            <tr>
                <td><h1>serviceSYNC</h1></td>
              
                <td class='tdtheme'><a href="homepage.jsp"> Home </a></td>
                <td class='tdtheme'><a href="AboutUs.jsp">About Us</a></td>
                <td class='tdtheme'><a href="service.jsp">Service</a></td>
                <td class='tdtheme'><a href="Contact.jsp">Contact</a></td>
                <td class='tdtheme'><a href="login.jsp">Login</a></td>
                
                
            </tr>
        </table>
    <marquee>AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
        
        <div class='divtheme'>
            <h1 class="title">service<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<spane> SYNC</spane><br><br>&nbsp;&nbsp;<a href="login.jsp"><button class="bo"><b>Book your service</b></button></br></br></h1></a>
            

            
            
            
            
        </div>
    </body>
</html>












