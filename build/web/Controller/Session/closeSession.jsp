<%-- 
    Document   : closeSession
    Created on : Apr 20, 2014, 5:32:35 PM
    Author     : nameless999
--%>


        <%
            session.invalidate();
            response.sendRedirect("../../index.jsp");
        %>

