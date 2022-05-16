<%--
  Created by IntelliJ IDEA.
  User: artem
  Date: 16.05.2022
  Time: 02:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<%=session.getAttribute("email")%>
<br>
<%=session.getAttribute("user_password")%>
<br>
<%=session.getAttribute("firstname")%>
<br>
<%=session.getAttribute("lastname")%>
<br>
<%=session.getAttribute("address")%>
<br>
<%=session.getAttribute("cardname")%>
<br>
<%=session.getAttribute("cardnumber")%>
<br>
<%=session.getAttribute("cardexpr")%>
<br>
<%=session.getAttribute("cardcvv")%>
<br>
<%=session.getAttribute("username")%>
<br>
<%=session.getAttribute("country")%>
<br>
</body>
</html>
