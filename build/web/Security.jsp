<%
    response.addHeader("Pragma", "no-Cache");
    response.addHeader("Cache-Control", "no-Store");

   // String value = (String) session.getAttribute("UId");
    String value = (String) request.getSession().getAttribute("UId");
    String value1 = (String) request.getSession().getAttribute("HId");
    

    if (value == null || value1 == null) {
        response.sendRedirect("Login.jsp");
    }
    if (session == null) {
        response.sendRedirect("Login.jsp");
    }
%>