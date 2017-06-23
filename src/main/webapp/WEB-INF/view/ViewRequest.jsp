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

<body >


<!-- ================================Home navbar============================================= -->


 
 
 
  <nav class="navbar navbar-default navbar-fixed-top" > <!-- style="background:#00ffff; solid; padding:20px;" -->
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
    
    
   <!--   <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="blog">CREATE-BLOG</a></li>
    </button> -->
   
     
     <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="AboutUs">Update Profile</a></li>
    </button>
    
   <!--  <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showblog">BLOG-LISTS</a></li>
    </button> -->
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showforum">FORUM-LISTS</a></li>
    </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showchat">CHAT-LISTS</a></li>
    </button>
    
    
   
  <!--  <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="ViewFriend">Friend-LISTS</a></li>
   </button>
   
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="ViewRequest">Requests</a></li>
   </button>
    -->
   
    <!-- <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="AboutUs"><span class="glyphicon glyphicon-envelope"></span>AboutUsChating</a></li>
   </button> -->
   
   <!-- <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
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
 <br><br>



<!-- ================================================================== -->
<div class="carousel-inner" role="listbox" >
    <div class="item active" >
      <img src="static/images/req.gif" alt="Chania" style="width:900px; height:300px;  margin:8px;">
    
    <div class="container">
            <div class="carousel-caption">
          
   <p><a class="btn btn-sm btn-default" href="###" role="button"> My Friends Team </a></p>           
  
            </div>
          </div>
    
    
    </div></div>
<!-- ==================================================================== -->
<script>
var app = angular.module('myApp', []);
app.controller('ctrl', function($scope, $http) {
  $http.get("getRequestsSendToMe")
  .then(function(response) {
      $scope.friend = response.data;
  });
});
</script>



<h2> List of Request </h2>
 <div ng-app="myApp" ng-controller="ctrl"> 
<table class="table">
		<tr>
			<th width="80" class="text-success">FriendID</th>
			<th width="80" class="text-info">Accept  Request</th>
			<th width="80" class="text-danger">Reject  Request</th>
		</tr>
			
 <tr ng-repeat="f in friend" >
 
 <td class="text-warning">{{ f }} </td>
 <td>
 
 <button>
 <a href="acceptFriend/{{ f }}">Accept  Request</a>
 
 </button>
 </td>
  
  <td>
 <button>
  <a href="rejectFriend/{{ f }}">Reject  Request</a>
  </button>
  </td>
  
  
  </tr>
 </table>
</div>



</body>
</html>