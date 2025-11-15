<%@include file="adminSecurity.jsp"%>
<html>
    <style>
       .about{
  width:100%;
  padding:78px 0px;
  background-color:orange;
}
 .about img{
 image-spacing:30px;
 height:500px;
 width:500px;
}
.about-text{
    width:550px;
}
.main{
width:1130px;
max-width:95%;
margin:0 auto;
display:flex;
algin-iteam:center;
justify-content:space-around; 


}
.about-text h1{
   
 font-size:70px;
  
  margin-bottom:10px;
}
.about-text h5{
color:white;
font-size:25px;

}
span{
color:black;
font-size:44px;
}
.about-text p{
 color:black;
 letter-spacing:1px;
 line-height:28px;
 font-size:18px;
 margin-bottom:40px;
}
button{
 background:white;
color:black;
text-decoration:none;
border:2px solid transprant;
font-weight:bold;
padding:13px 30px;
border-radius:30px;
transition:.4s;
}

  
  

 button:hover{
            border:3px solid orange;
            color:white;
            font-size:20px;
            background-color:black;
        }

        
        
        
        
        
        
    </style>
    <!DOCTYPE html>

<html>
    <style>
        body{
             
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
            background-color:orange;
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
    <img src="media/logo.jpg "class="logo">
         
        <%@include file="publicheader_1_1.jsp"%>
    <marquee>AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
        
<section class="about">
<div class="main">
<img src="media/aboutus.jpg">
<div class="about-text">
<h1>About us </h1>
<h5>service<span>SYNC</span></h5>

<p>Service Sync is your go-to platform for connecting with skilled professionals to address your vehicle's needs. Whether it's routine maintenance or unexpected repairs, we're here to streamline the process and ensure your vehicle is in good hands.Our dedicated team is committed to providing you with accurate information and exceptional service. Thank you for choosing Service Sync as your automotive companion. We're here to keep your vehicle running smoothly, hassle-free.</p>

<a href="service_1_1.jsp"><button type="button"> About Our Service</button></a>
</div>
</div>
</section>


</body>
</html>