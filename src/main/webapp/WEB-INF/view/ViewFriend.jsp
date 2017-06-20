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
<!-- <link rel="stylesheet" href="resource/css/mystyle.css">
 --><!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>






</head>

<body>
<jsp:include page="Home.jsp"></jsp:include>
 
<br><br><br> 


 
<script>

var app = angular.module('myApp',[]);
app.controller('ctrl',function($scope,$http){
	
	$http.get("users").then(function(response)
	{
		 $scope.user = response.data;
	});
});

</script>
 
 <div ng-app="myApp" ng-controller="ctrl"> 

<div class="text-center"> 
<input type='text' ng-model='searchtext' placeholder='Search Your Friend' autofocus/><br><br>
</div>  
  
<table class="table">
	
 
		<tr>
		<th></th>
		<th>Name</th>
		<th>Address</th>
	    <th>Role</th>
<th width="120">Sending Request</th>
			</tr>
			
 <tr ng-repeat="b in user | filter:searchtext" >
 <td><img src="https://www.infrascan.net/demo/assets/img/avatar5.png" class="img-circle" width="60px"></td>
<td>{{ b.name }}</td>
<td >{{ b.address }} </td>
<td >{{ b.role }} </td>
 <td><a href="addFriend/{{b.id}}">Send-Request</a></td>
  </tr>
  </table>
</div>











</body>
</html>