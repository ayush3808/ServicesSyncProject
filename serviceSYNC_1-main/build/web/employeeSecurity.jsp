
  <%
    response.addHeader("Pragma", "no-Cache");
    response.addHeader("Cache-Control","no-Store");
    String value=(String)session.getAttribute("SHUBH");
    if(value==null)
    {
        response.sendRedirect("employee.jsp");
    }
    if(session==null){
    response.sendRedirect("employee.jsp");
}
%>  





