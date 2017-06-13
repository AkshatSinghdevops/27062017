
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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


</head>
<body>
 

<!-- ================================Home navbar============================================= -->


<jsp:include page="Home.jsp"></jsp:include>

<!-- =====================================List of profile ==================================== -->

<div ng-app="myApp" ng-controller="customersCtrl"> 


<h1 class="text-danger text-center" ng-repeat = "x in names"> Welcome  - {{x.name}} </h1>



<!-- ======================LIST OF FRIENDS & SEARCH ======================================== -->
<div class="text-right">
 <button type="button " class="btn btn-info "  style="margin:8px">
   
   <a href="ViewFriend">Find-Friend</a>
    
    </button>
</div>

<!-- ================================CLOSED==================================================== -->

<div class="container well span6" style="width:240px; height:300px;  margin:8px;">
	<div class="row-fluid">
        <div class="span2" >
		    <img src="https://www.infrascan.net/demo/assets/img/avatar5.png" class="img-circle" width="80px">
        </div>
        
        <div class="span8">
            <h3 ng-repeat = "x in names">{{x.name}}</h3>
            <h6 ng-repeat = "x in names">Email: {{x.email}}</h6>
            <h6 ng-repeat = "x in names">Date-Of-Birth:{{x.dob}}</h6>
            
            <h6><a href="#">More About... </a></h6>
        </div>
        
        <div class="span2">
            <div class="btn-group">
                <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
                    Action 
                    <span class="icon-cog icon-white"></span><span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a><button href="#"><span class="icon-wrench"></span> Modify</a></li>
                    <li><a><button href="#"><span class="icon-trash"></span> Delete</a></li>
                </ul>
            
                
               
            
            
              </div>
            
             <button type="button" class="btn btn-success">
                
                <a href="MyFriendList">MyFriends</a>
                
                </button>
            </div>
    
</div>
</div>
<!-- =========================CLOSING OF PROFILE CART======================================== -->










<!-- <table class="table">
<thead>
<tr>
<th>ID</th>
<th>NAME</th>
<th>ADDRESS</th>
<th>Online</th>



</tr>
</thead>
<tbody>
 

<tr ng-repeat = "x in names">
        <td>{{x.id}}</td>
					 
		<td>{{x.name}}</td>
		
		<td>{{x.address}}</td>
		
		
		
	
		<td>{{x.isonline}}</td>
		
                     
</tr>

</tbody>
  
</table> -->




</div>
<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("http://localhost:8080/Collaboration/Profile")
    .then(function (response) {$scope.names = response.data;});
});
</script>
<c:if test="${isUserClickedHomePage==true}"><jsp:include page="Home.jsp"></jsp:include></c:if>

<!-- ====================LIST OF PROFILE CLOSED=============================================== -->












</body>
</html>