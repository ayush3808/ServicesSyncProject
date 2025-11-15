<%@include file="adminSecurity.jsp"%>
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
            height:500px;
            background-color:rgba(255,255,255,0.5);
            
            background-repeat:no-repeat;
            background-size:50%;
            box-shadow: 10px 10px 10px black;
            margin-left:250px;
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
                
                 border:solid black  ; 
                
                 margin-top: 10px;
                 margin-left: 100px;
                   
                 border-width:4px; 
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
        .button1{
                 width:200px;
            height:44px;
            background-color:white;
            color:black;
            border:none;
            font-size:22px;
            border-radius:25px;
            margin-top:280px;
            cursor:pointer;
             margin-left:850px;
             }
              .button1:hover{
            border:3px solid orange;
            color:white;
            font-size:20px;
            background-color:black;
        }
             
             
    </style>
   
    <body>
        
        <%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.ResultSet,java.util.ArrayList" %>
<%Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serviceSYNC","root","root");
 PreparedStatement st=con.prepareStatement("select * from employee_table");

ResultSet rs=st.executeQuery();
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
ArrayList list6=new ArrayList();
ArrayList list7=new ArrayList();
while(rs.next())
{
list1.add(rs.getString(1));
list2.add(rs.getString(2));
list3.add(rs.getString(3));
list4.add(rs.getString(4));
list5.add(rs.getString(5));
list6.add(rs.getString(6));
list7.add(rs.getString(7));
}


%>
        
        <img src="media/logo.jpg " class="logo">
         
        <%@include file="publicheader_1_1.jsp"%>
    <marquee>AUTOMOBILE SERVICE AT YOUR DOOR STEPS </marquee>
        
        <div class='divtheme'>
            
            
         
            <table align="left" class="tab"  style="color:orange" cellspacing="5" cellpadding="10" width="80%"  >
            <tr align="center" bgcolor="black" style= background:white class="tr1">
                   
                  <td>empId</td>
                 <td>empPassword</td>
                  <td>empName</td>
                   <td>empAddress</td>
                   <td>empCOntact</td>
                  <td>empEmail</td>
                   <td>empSalary</td>
                
                    </tr>
                     <%for(int i=0;i<list1.size();i++)
        {%>
    <tr align="center" bgcolor="black" > 
        <td ><%=list1.get(i)%></td>
         <td><%=list2.get(i)%></td>       
         <td><%=list3.get(i)%></td>
         <td><%=list4.get(i)%></td>
         <td><%=list5.get(i)%></td>       
         <td><%=list6.get(i)%></td>
         <td><%=list7.get(i)%></td>
    </tr><%}%>
                     
    <a href="employeeAccount.jsp"> <button class="button">Create Account </button></a>
  
            
            </table>
               <a href="deleteEmployeeAccount.jsp"> <button class="button1">delete Account </button></a>
        </div>
    </body>
</html>












