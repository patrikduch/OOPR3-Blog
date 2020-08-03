<%--
  Created by IntelliJ IDEA.
  User: Programia
  Date: 20.11.2018
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page isErrorPage="true" %> <%-- Označení za error page --%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Throwable t = pageContext.getErrorData().getThrowable();
    // se rovna exception
%>

<%

    while(exception != null) {%>

        <p> Datovy typ: <%= exception.getClass().getName() %> </p> <br>

        <p> Zprava: <%= exception.getMessage() %> </p> <br>

<%
        exception = exception.getCause();

    }

%>



<h1 align="center">STATUS: <%= response.getStatus() %></h1>
<h3 align="center">Jejda, něco se stalo.</h3>


<a href="/views/view_home.jsp">Zpět na domovskou stránku </a>

</body>
</html>
