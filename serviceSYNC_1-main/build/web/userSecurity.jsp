
  <%
    response.addHeader("Pragma", "no-Cache");
    response.addHeader("Cache-Control","no-Store");
    String value=(String)session.getAttribute("bob");
     
    if(value==null)
    {
        response.sendRedirect("homepage.jsp");
    }
     
    if(session==null){
    response.sendRedirect("homepage.jsp");
}
%>  





