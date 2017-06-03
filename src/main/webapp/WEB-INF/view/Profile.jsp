
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- <style>
body {
    background-image: url("img/i1.jpg");
}
.no-background {
    background-image: url("images/blank.jpg");
}
</style> -->


</head>
<body>
<h1 style="background:#808080;"> Welcome to Profile  ${loginMessage} </h1>

<table class="table">
<thead>
<tr>
<th>ID</th>
<th>NAME</th>

</tr>
</thead>
<tbody>
 
<c:forEach var="user" items="${ist}">
<tr>
                     <td>${user.id}</td>
					 
					<td> ${user.username}</td>
		<td>${user.password}</td>
		<td>${user.address}</td>
		<td>${user.mail}</td>
		<td>${user.mobile}</td>
		<td>${user.role}</td>
		<td>${user.dob}</td>
		<td>${user.isonline}</td>
		<td>${user.gender}</td>
                     
</tr>
</c:forEach>
</tbody>
  
</table>


<c:if test="${isUserClickedHomePage==true}"><jsp:include page="Home.jsp"></jsp:include></c:if>

</body>
</html>