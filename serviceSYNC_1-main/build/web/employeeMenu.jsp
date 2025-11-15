<%@include file="employeeSecurity.jsp"%>
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
            height:500px;
            background-color:black;
            margin-left:36%;
            margin-top:0%;
            text-align:center;
            color:white;
        }
        .contain.text{
            position:relative;
            top:0%;
        }
        .inp1{
            border:solid;
            background-color:black;
            border-bottom:2px solid white;
            width:290px;
            font-size:30px;
            margin-top:40px;
            outline:none;
            color:white;
           margin-left:30px;
           justify-content:space-around; 
            
        }
        .inp2{
            border:solid;
            background-color:black;
            border-bottom:2px solid white;
            width:290px;
            font-size:30px;
            margin-top:40px;
            outline:none;
            color:white;
           margin-left:30px;
            
        }
          .inp3{
            border:solid;
            background-color:black;
            border-bottom:2px solid white;
            width:290px;
            font-size:30px;
            margin-top:40px;
            outline:none;
            color:white;
           margin-left:30px;
            
        }
          .inp4{
            border:solid;
            background-color:black;
            border-bottom:2px solid white;
            width:290px;
            font-size:30px;
            margin-top:40px;
            outline:none;
            color:white;
 margin-left:30px;
            
        }
        .inp5{
            border:solid;
            background-color:black;
            border-bottom:2px solid white;
            width:290px;
            font-size:30px;
            margin-top:40px;
            outline:none;
            color:white;
           margin-left:30px;
            
        }
        .inp6{
            border:solid;
            background-color:black;
            border-bottom:2px solid white;
            width:290px;
            font-size:30px;
            margin-top:40px;
            outline:none;
            color:white;
           margin-left:30px;
            
        }
        .inp7{
            border:solid;
            background-color:black;
            border-bottom:2px solid white;
            width:290px;
            font-size:30px;
            margin-top:40px;
            outline:none;
            color:white;
           margin-left:30px;
            
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
        <img src="media/logo.jpg "class="logo">
         
        <%@include file="publicheader_1_1_1.jsp"%>
    <marquee>AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
        
    <div class="divtheme">
             
    <div class="contain">
            <div class="text">
                
               <table>
                   
                   <tr><td class="inp1"><a href="employeeProfile.jsp">Employee Profile</td></tr></a>
             <tr><td class="inp1"><a href="ServiceNotification.jsp">Service Notification</td></tr></a>
                             <tr><td class="inp6"><a href="http://wa.me/7999065050">Contact</td></tr></a>  
        <tr><td> </td></tr>
                
                <tr><td class="inp7"><a href="AboutUs_1_1_1.jsp">About us</td></tr></a>
        <tr><td> </td></tr>
                </table>
                
                
            </div>
        </div>
            
</div>
            
            
    
    </body>
</html>












