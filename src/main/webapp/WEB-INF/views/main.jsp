<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Playdata
  Date: 2023-07-03
  Time: 오후 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/main" method ="post">
        <input type="text" name="key">
        <input type="text" name="value">
        <input type="submit">
    </form>
    <table>
        <tr>
            <td>key</td>
            <td>value</td>
        </tr>
        <c:forEach var="keyvalue" items="${list}">
        <tr>
            <td>${keyvalue.key}</td>
            <td>${keyvalue.value}</td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>


<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: Playdata--%>
<%--  Date: 2023-06-29--%>
<%--  Time: 오후 7:52--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--  <style>--%>
<%--    table {--%>
<%--      border-collapse: collapse;--%>
<%--      width: 100%;--%>
<%--    }--%>
<%--    th, td {--%>
<%--      text-align: left;--%>
<%--      padding: 8px;--%>
<%--      border-bottom: 1px solid #ddd;--%>
<%--    }--%>
<%--    th {--%>
<%--      background-color: #F2F2F2;--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<table>--%>
<%--  <tr>--%>
<%--    <th>Key</th>--%>
<%--    <th>Value</th>--%>
<%--  </tr>--%>
<%--  <c:forEach var="entry" items="${keyvalue}">--%>
<%--    <tr>--%>
<%--      <td>${entry.key}</td>--%>
<%--      <td>${entry.value}</td>--%>
<%--    </tr>--%>
<%--  </c:forEach>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>