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
   
   
   <!--  <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="AboutUs"><span class="glyphicon glyphicon-envelope"></span>AboutUsChating</a></li>
   </button> -->
   
  <!--  <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
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


<img src="static/images/blog1.jpg" alt="Good Morning Friends" style="width:1100px; height:300px;  margin:20px;"/> 


<div ng-app="myApp" ng-controller="customersCtrl"> 



<div class="topbar">
        <div class="container">
          <div class="row">
            <div class="col-s-4">
              <h1 ng-click="blog.selectTab('blog')" class="push-left">{{blog.name}}</h1>
            </div>
            <div class="offset-s-4 col-s-4">
              <nav role='navigation' class="push-right">
                <ul>
                
                  <li>
                  <button>
                  <a href="blog" ng-click="blog.selectTab('new')">Add New Post</a>
                  </button>
                  </li>
                </ul>
              </nav> 
            </div>
          </div>
        </div>
        
        
        
        
        
 <!-- *****************======================================================************ -->


<!-- <h3 class="text-danger" ng-repeat = "x in names"> Blog-Name=>{{x.blog_name}}</h3>
<p  class="text-info" ng-repeat = "x in names"> Description=> <br> {{x.description}}</p> -->




<!-- *****************========================================================*********** -->

 
  <!-- <div class="panel panel-default">
                
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
 -->
 
 
 <table class="table">
		
			
 <tr ng-repeat="b in names" >
 
  <td><table>
<tr><td><h2 class="text-center">{{ b.blog_name }}</h2></td><tr>
<tr><td><table>
<tr><td> 
<tr><td>{{ b.description }}</td></tr>
<tr><td><table>
<th><td>

<br><br>
<!-- <a href="viewcomments?blogid={{ b.id }}">Comment</a></td> </th>
 -->
 <a href="comment?blogid={{ b.id }}">Comment</a></td> </th>
 
 </table></td> </tr>
</table></td><tr></table></td>
 
 </tr></table></div> 



      
 
 
 
 



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