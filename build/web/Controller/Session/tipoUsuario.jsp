<%-- 
    Document   : tipoUsuario
    Created on : Apr 21, 2014, 7:49:57 AM
    Author     : nameless999
--%>

<%

        String no = "no";
        session.setAttribute("tipoUsuario", null );
        session.setAttribute("Usuario", request.getParameter("Nombre"));
        session.setAttribute("Contraseņa", request.getParameter("Password"));
        session.setAttribute("Ipassword", "no");
        session.setAttribute("Inombre", "no");
        response.sendRedirect("../../Login");
%>
