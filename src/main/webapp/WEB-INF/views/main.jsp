<%--
  Created by IntelliJ IDEA.
  User: Playdata
  Date: 2023-06-29
  Time: 오후 7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }
    th, td {
      text-align: left;
      padding: 8px;
      border-bottom: 1px solid #ddd;
    }
    th {
      background-color: #F2F2F2;
    }
  </style>
</head>
<body>
<table>
  <tr>
    <th>Key</th>
    <th>Value</th>
  </tr>

  <c:forEach var="entry" items="${keyvalue}">
    <tr>
      <td>${entry.key}</td>
      <td>${entry.value}</td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
