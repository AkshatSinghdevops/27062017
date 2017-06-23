
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


</head>
<body>
 

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
    
    
     <!-- <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="blog">CREATE-BLOG</a></li>
    </button> -->
   
     
    
    
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
 <br><br><br><br>

<!-- =====================================List of profile ==================================== -->

<div ng-app="myApp" ng-controller="customersCtrl"> 

<marquee>
<h1 class="text-danger" ng-repeat = "x in names"> Welcome  - {{x.name}} </h1>
</marquee>


<!-- ======================LIST OF FRIENDS & SEARCH ======================================== -->




<div class="text-right">


<button type="button " class="btn btn-lg btn-success "  style="margin:8px">
           <img src="static/images/team.gif"  class="img-circle" width="50px"/>
   
   <a href="MyFriendList">MyFriends</a>
    
    </button>



<button type="button " class="btn btn-lg btn-warning "  style="margin:8px">
           <img src="static/images/gip.gif"  class="img-circle" width="50px"/>
   
   <a href="AboutUs">OnlineChat</a>
    
    </button>

 
 <button type="button " class="btn btn-sm btn-info "  style="margin:8px">
           <img src="static/images/request.jpg"  class="img-circle" width="40px"/>
   
   <a href="ViewRequest"> View-Requests <span class="badge">1</span></a>
    
    </button>
 
 
 
 <button type="button " class="btn btn-sm btn-default"  style="margin:8px">
   
             <img src="static/images/findfriend.jpg"  class="" width="80px"/>
   
   
   <a href="ViewFriend"> Find-Friend</a>
    
    </button>
</div>

<!-- ================================CLOSED==================================================== -->

<div class="container well span6" style="width:240px; height:300px;  margin:8px;">
	<div class="row-fluid">
        <div class="span2" >
<!-- 		    <img src="https://www.infrascan.net/demo/assets/img/avatar5.png" class="img-circle" width="80px">
 -->        
 
         
 
 <tr ng-repeat="x in names| filter:gender">
  <td ng-click="detailView($index)">
     <div ng-init="genderImage = x.gender == 'female' ? 'static/images/female.jpg' : 'static/images/male.jpg'">
        <img src="static/images/male.jpg" ng-src="{{x.genderImage}}" class="img-circle" width="80px"/>
     </div></td></tr>
 
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
                    <li><button ><a href="Modify"><code>DELETE</code> Your Account </a></button></li>
                    
                </ul>
            
                
               
            
            
              </div>
            
             <button type="button" class="btn btn-outline-primary">
                
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
var app = angular.module('myApp', [])
           
           
           .filter("gender",function()
        	{
        	   return function(gender)
        	   {
        		   switch(gender){
        		   
        		   case "female":
        			   return "static/images/female.jpg";
        			   
        		   case "male":
        			   return "static/images/male.jpg";
        		   
        		   }
        	   }
        	}	   
           
           );
           
           
app.controller('customersCtrl', function($scope, $http) {
    $http.get("http://localhost:8080/Collaboration/Profile")
    .then(function (response) {$scope.names = response.data;});
});
</script>
<c:if test="${isUserClickedHomePage==true}"><jsp:include page="Home.jsp"></jsp:include></c:if>

<!-- ====================LIST OF PROFILE CLOSED=============================================== -->












</body>
</html>