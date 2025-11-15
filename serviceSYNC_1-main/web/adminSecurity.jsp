
  <%
    response.addHeader("Pragma", "no-Cache");
    response.addHeader("Cache-Control","no-Store");
    String value=(String)session.getAttribute("boom");
    if(value==null)
    {
        response.sendRedirect("admin.jsp");
    }
    if(session==null){
    response.sendRedirect("admin.jsp");
}
%>  





