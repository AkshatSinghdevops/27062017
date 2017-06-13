<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<body>

<br><br>



<script>
var app = angular.module('myApp', []);
app.controller('ctrl', function($scope, $http) {
  $http.get("getRequestsSendToMe")
  .then(function(response) {
      $scope.friend = response.data;
  });
});
</script>




 <div ng-app="myApp" ng-controller="ctrl"> 
<table class="tg" border="2">
		<tr>
			<th width="80">FriendID</th>
			<th width="80">Accept  Request</th>
			<th width="80">Reject  Request</th>
		</tr>
			
 <tr ng-repeat="f in friend" >
 
 <td >{{ f }} </td>
 <td><a href="acceptFriend/{{ f }}">Accept  Request</a></td>
  <td><a href="rejectFriend/{{ f }}">Reject  Request</a></td>
  </tr>
 </table>
</div>



</body>
</html>