<%-- 
    Document   : tipoUsuario
    Created on : Apr 21, 2014, 7:49:57 AM
    Author     : nameless999
--%>

<%

        session.setAttribute("tipoUsuario", null );
        session.setAttribute("Usuario", request.getParameter("Nombre"));
        session.setAttribute("Contraseña", request.getParameter("Password"));
        session.setAttribute("Ipassword", "no");
        session.setAttribute("Inombre", "no");
        response.sendRedirect("../../Login");
%>
