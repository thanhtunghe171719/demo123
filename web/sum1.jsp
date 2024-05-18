<%-- 
    Document   : sum1
    Created on : Jan 5, 2024, 10:42:36 AMb
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
      int a,b,c;
      a = (Integer) request.getAttribute("a");
      b = (Integer) request.getAttribute("b");
      c = (Integer) request.getAttribute("c");
    %>    
    <body>
        <form action="sum" method="POST">
            <p> a = <input type="text" name="a" value="<%=a%>"/>
            <p> b = <input type="text" name="b" value="<%=b%>"/>
            <p> c = <input type="text" name="c" value="<%=c%>"/>
            <p> <input type="Submit" value="Sum"/>
        </form>
    </body>
</html>
