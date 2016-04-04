<%@page import="java.io.PrintWriter" %>
<%--<%@ page import="java.io.Printwriter" %>--%>
<%
    out.println("<pre>");
    Throwable t = (Throwable)request.getAttribute("ex");
    if(t!=null){
        t.printStackTrace(new PrintWriter(out));
    }
    out.println("</pre>");
%>
