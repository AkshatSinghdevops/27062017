<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

<!-- ==========***************************=========================*****************************============= -->


<!-- ===========############################################################################==================== -->


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="resource/css/mystyle.css">
 --><!-- jQuery library -->
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<style>

.topbar {
  background:@blue;
  color:green;
  width:100%;
  z-index:9999;
  padding:5px 20px;
  
  h1 {
    cursor:pointer;
  }
  
  nav {
    margin-top:25px;
    
    ul {
      padding:0;
      margin:0;
      
      li {
        display:inline-block;
        padding:10px;
        
        a {
          color:white;
          text-decoration:none;
        }
      }
    }
  }
}


</style>
</head>
<body>




<!-- ================================Home navbar============================================= -->

 <jsp:include page="Home.jsp"></jsp:include>

<!-- =====================================List of profile ==================================== -->
<br><br><br>

<div ng-app="myApp" ng-controller="customersCtrl"> 

<!-- <table>
  <tr ng-repeat="x in names">
    <td>{{ x.blog_name}}</td>
    
  </tr>
</table> -->

<div class="topbar">
        <div class="container">
          <div class="row">
            <div class="col-s-4">
              <h1 ng-click="blog.selectTab('blog')" class="push-left">{{blog.name}}</h1>
            </div>
            <div class="offset-s-4 col-s-4">
              <nav role='navigation' class="push-right">
                <ul>
                
                  <li><a href="blog" ng-click="blog.selectTab('new')">Add New Post</a></li>
                </ul>
              </nav> 
            </div>
          </div>
        </div>
        
        
        
        
        
 <!-- *****************======================================================************ -->


<!-- <h3 class="text-danger" ng-repeat = "x in names"> Blog-Name=>{{x.blog_name}}</h3>
<p  class="text-info" ng-repeat = "x in names"> Description=> <br> {{x.description}}</p> -->

<!-- *****************========================================================*********** -->

 
  <div class="panel panel-default">
                
              <div class="panel-heading"><span class="lead">List of BLOGS </span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              
                             
                              <th>Blog-name</th>
                              <th>Description</th>
                            
                            
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="x in names">
                              
                             
                              <td><h1 class="text-success">{{x.blog_name}}</h1></td>
                             <td><p>{{x.description}}<p></td>
                             
                            <td><a href="comment{{x.id}}"> comment </a></td>
                           
               </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>



</div>




<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("http://localhost:8080/Collaboration/Blog")
    .then(function (response) {$scope.names = response.data;});
    
    
    $scope.add=function(){
    	
    	$http.post("http://localhost:8080/Collaboration/Blog" + 'addblog' , x).success
    	(function (response){
    			
    	
    });
    };
});
</script>






      



                          
      


</body>
</html>