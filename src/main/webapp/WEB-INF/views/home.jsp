<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String cp = request.getContextPath(); %> <%--ContextPath 선언 --%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<%=cp%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=cp%>/resources/css/style.css" rel="stylesheet">
    <title>TEST</title>
</head>
<body class="top-navigation">
	<jsp:include page="include/header.jsp"></jsp:include>
    <script src="http://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="<%=cp%>/resources/js/bootstrap.min.js"></script>
    <jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>