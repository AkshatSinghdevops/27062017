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
<link rel="stylesheet" href="../resources/css/style.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <!-- <style>
body {
    background-image: url("static/images/request.jpg");
}
.no-background {
    background-image: url("static/images/request.jpg");
}
</style> -->

   

</head>
<body>


<!-- ================================Home navbar============================================= -->

 <div class="navbar navbar-default navbar-fixed-top" style="background:;color: #000;">
      <div class="container">
        <div class="navbar-header">
          <a href="/" class="navbar-brand">Collaboration!!</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            
            <li>
              <a href="Home">Home</a>
            </li>
            
            
            
    <li><a href="createForum">Create-Forum</a></li>
    
            
          </ul>
  
  
  


          <ul class="nav navbar-nav navbar-right">
            <!-- <li><a href="http://builtwithbootstrap.com/" target="_blank">Built With Bootstrap</a></li>
            <li><a href="https://wrapbootstrap.com/?ref=bsw" target="_blank">WrapBootstrap</a></li> -->
               <li><a>Welcome to Forum List</a></li>
          </ul>

        </div>
      </div>
    </div>

<!-- =====================================List of profile ==================================== -->
<script>
var app = angular.module('myApp', []);
app.controller('ctrl', function($scope, $http) {
  $http.get("list_chat_forum")
  .then(function(response) {
      $scope.chatforumlist = response.data;
  });
});
</script>
<img src='<c:url value='/static/images/coll.gif' />'
		align="center" alt="This is image" width="1000 " height="200"><br><br>
<h3> Forum List</h3>
 <div ng-app="myApp" ng-controller="ctrl"> 
<table class="table" border="2">
		<tr>
			<th width="80" class="text-danger">Forum ID</th>
			<th width="80" class="text-danger">User ID </th>
			<th width="120" class="text-danger"> Title</th>
		    <th width="80" class="text-danger">Date</th>
		    <th width="80" class="text-danger">Chatting</th>
			</tr>
			
 <tr ng-repeat="c in chatforumlist ">
 
 <td class="text-info">{{ c.id }} </td>
 <td class="text-success">{{ c.user_id}} </td>
 <td class="text-warning">{{ c.forum_name }}</td>
 <td class="text-danger">{{c.create_date |  date:'MM/dd/yyyy'}}</td>
 <td><a href="chattingpage?fid={{ c.id }}">See & Message</a></td>
 </tr>
 </table>
</div>





<!-- ===================================================================================================== -->






<!-- <h1 style="background:#808080;"> Welcome to Forum </h1>
<div ng-app="myApp" ng-controller="customersCtrl"> 

<table>
  <tr ng-repeat="x in names">
    <td>{{ x.blog_name}}</td>
    
  </tr>
</table>




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




 -->







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