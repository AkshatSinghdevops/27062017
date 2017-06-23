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

   <script type="text/javascript" src="jquery/js/jquery-1.4.4.min.js"></script>

    <script type="text/javascript">
        function animateImage() {
            console.log("Called");
            $('#bee').css({right:'10%'});   
            $('#bee').animate({right: '-100%'}, 5000, 'linear', function(){animateImage();});
        }
        $(document).ready(function() {
            animateImage();             
        }); 
    </script>

</head>
<body>


<!-- ================================Home navbar============================================= -->

<%--  <nav class="navbar navbar-default navbar-fixed-top" > <!-- style="background:#00ffff; solid; padding:20px;" -->
  <div class="container-fluid">
    <div class="navbar-header">
  
      <a class="navbar-brand " href="#"><marquee>Collaboration</marquee></a>
    </div>
   <ul class="nav navbar-nav">
  
   
   
   <button class="btn btn-danger" ><span class="glyphicon glyphicon-home"></span><a href="Home">Home</a> </button>
   
  
      <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Blogs<span class="caret"></span></a>
    <ul class="dropdown-menu">
       <li><a href="blog">Create-Blogs</a></li>
      <li><a href="showblog">Our-Blogs</a></li>
    </ul></li>
     </button>
     
     <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Friends<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="ViewFriend">Friend-LISTS</a></li>
       <li ><a href="ViewRequest">View-Request</a></li>
    <li ><a href="MyFriendList">MyFriend-List</a></li>
    </ul></li>
    </button>
    
    
    <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Jobs<span class="caret"></span></a>
    <ul class="dropdown-menu">
     <li><a href="joblist">Search</a></li>
      <li><a href="job">Post-Jobs</a></li>
    </ul></li>
    </button>
    
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Chat Forums<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="chatforum">Create Chat Forum</a></li>
      <li><a href="viewchatforums">View Existing Forums</a></li>
    </ul></li>
    </button>
    
    
     <!-- <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="blog">CREATE-BLOG</a></li>
    </button> -->
   
     
     <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="AboutUs">Update Profile</a></li>
    </button>
    
    <!-- <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showblog">BLOG-LISTS</a></li>
    </button> -->
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showforum">FORUM-LISTS</a></li>
    </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showchat">CHAT-LISTS</a></li>
    </button>
    
    
   
   <!-- <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="ViewFriend">Friend-LISTS</a></li>
   </button>
   
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="ViewRequest">Requests</a></li>
   </button> -->
   
   
    <!-- <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="AboutUs"><span class="glyphicon glyphicon-envelope"></span>AboutUsChating</a></li>
   </button>
   
   <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="job"><span class="glyphicon glyphicon-briefcase"></span>POST-NEW-JOB</a></li>
   </button>

  <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="joblist"><span class="glyphicon glyphicon-list"></span>MY-JOB-LIST</a></li>
   </button> -->
    
    
    <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showprofile"><span class="glyphicon glyphicon-user"></span>MY-PROFILE</a></li>
   </button>
    
      <!-- ======================================================== -->
         <%
   String user=(String)session.getAttribute("loggedInUserID"); 
   if(user==null)
   {   
	  
	   
	   out.println("<button type='button' class='btn btn-outline-primary dropdown-toggle' style='margin:8px'><li class='active'><a href='login'><span class='glyphicon glyphicon-log-in'>Sing-In</span></a></li></button>"); 

	   out.println("<button type='button' class='btn btn-outline-primary dropdown-toggle' style='margin:8px'><li class='active'><a href='user'><span class='glyphicon glyphicon-user'>Sing-Up</span></a></li></button");
   
     
   }
   else
   {
	   out.println("<button class='btn btn-outline-danger'><li class='active'><a href='logout'><span class='glyphicon glyphicon-off'></span>Logout</a></li></button>");
	  /*  out.println("<li> Welcome : " + user + "</li>"); */
   }
   
   %>
    
    <!-- ========================================================= -->
    
    

  <div class="text-center">
   <% 
   String user1=(String)session.getAttribute("loggedInUserID");
   
   if(user1==null){}
   else{
	   out.println("<li> Welcome : "+ user1 +"</li>");
   }
   %>
   
   </div>

 


</ul></div></nav>

   
  
  <br><br><br>
 
   <br><br><br>
  
 </div>
 
  
  
  
</div>
</div>
</div>
</nav>
<!-- =========== -->
</div>
</div>
 


 --%>

<!-- =====================================List of profile ==================================== -->
<br><br><br>

    <div style="width: 100%;"><img src="static/images/team.gif" id="bee" style="position:relative;"/></div>




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