<%-- 
    Document   : index
    Created on : 26-May-2022, 7:40:37 AM
    Author     : HP
--%>

<%@page import="com.mycompany.e.commerce.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-commerce --Home</title>
        <%@include file="components/common_css_js.jsp" %>
         </head>
    <body>
        <%@include file="components/navbar.jsp"%>
        <h1>Hello World!</h1>
        <h1> Creating Session Factory object</h1>
        <% 
          out.println(FactoryProvider.getFactory()+"<br>");
          out.println(FactoryProvider.getFactory()+"<br>");
          out.println(FactoryProvider.getFactory());
       
        %>
    </body>
</html>
