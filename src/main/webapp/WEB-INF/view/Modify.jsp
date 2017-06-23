<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body ng-app="myApp" class="ng-cloak">


 <script>
var app = angular.module('myApp', []);
app.controller('ctrl', function($scope, $http) {
  $http.get("myProfile")
  .then(function(response) {
      $scope.user = response.data;
  });
});
</script>
<img src='<c:url value='/static/images/image16.jpg' />'
		align="right" alt="This is image" width="400" height="500">
 <div ng-app="myApp" ng-controller="ctrl"> 
<h3>----Profile Updation----</h3>

 <form method="POST" name="myForm"  action="Modify" class="form-horizontal">
 <table>
  <input type="hidden" ng-model="user.id" />
  <tr>
  <td>
  <img src='<c:url value='/static/images/{{ user.id }}.jpeg' />'/>
  </td>
  </tr>
<tr><td>Name:</td><td><input type='text' value='{{ user.name }}' name="name" required/></td></tr>
<tr><td>Password:</td><td><input type='password' value='{{ user.password }}' name="password" required/></td></tr>
<tr><td>Address:</td><td><input type='text' value='{{ user.address }}' name="address" required/></td></tr>
<tr><td>Email ID:</td><td><input type='text' value='{{ user.email }}' name="email"  required/></td></tr>
<tr><td>Mobile No:</td><td><input type='text' value='{{ user.mobile }}' name="mobile" pattern = "[0-9]{10}" required/></td></tr>
<tr><td><input type='submit' value='submit'/></td></tr>
</table>
</form>


</body>
</html>