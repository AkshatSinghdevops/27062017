<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<body>

<!-- ================================Home navbar============================================= -->

<jsp:include page="Home.jsp"></jsp:include>




<!-- =====================================List of profile ==================================== -->
<br><br><br>













<h1 style="background:#808080;"> Welcome to Forum </h1>
<div ng-app="myApp" ng-controller="customersCtrl"> 

<!-- <table>
  <tr ng-repeat="x in names">
    <td>{{ x.blog_name}}</td>
    
  </tr>
</table> -->




<table>
   <tr>
      <th>ID</th>
      <th>USER_ID</th>
      <th>MESSAGE</th>
      <th>CREATE_DATE</th>
      <th>FORUM_NAME</th>
      
   </tr>
   
   <tr ng-repeat = "x in names">
      <td>{{ x.id }}</td>
      <td>{{ x.user_id }}</td>
      <td>{{ x.message }}</td>
      <td>{{ x.create_date }}</td>
      <td>{{ x.forum_name }}</td>
   </tr>
</table>





</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("http://localhost:8080/Collaboration/Forum")
    .then(function (response) {$scope.names = response.data;});
});
</script>












<!-- <div ng-app="myApp" ng-controller="myCtrl">

{{ tasks }}
</div>

<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
	$http.get('http://localhost:8080/Collaboration/Forum').
    success(function(data) {
        $scope.tasks = data;
        
        
   });
});
</script> -->

</body>
</html>