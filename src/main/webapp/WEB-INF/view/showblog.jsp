<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="resource/css/mystyle.css">
 --><!-- jQuery library -->
 <link rel="stylesheet" href="../img/i1.jpg">
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

</head>
<body>




<!-- ================================Home navbar============================================= -->

  <nav class="navbar navbar-default navbar-fixed-top" style="background:#00ffff; solid; padding:20px;">
  <div class="container-fluid">
<!--     <div class="navbar-header">
  
      <a class="navbar-brand" href="#">Collaboration</a>
    </div> -->
   <ul class="nav navbar-nav">
       <%
   String user=(String)session.getAttribute("loggedInUserID"); 
   if(user==null)
   {
	   out.println("<button type='button' class='btn btn-default dropdown-toggle' style='margin:8px'><li class='active'><a href='login'>Login</a></li></button>"); 

	   out.println("<button type='button' class='btn btn-default dropdown-toggle' style='margin:8px'><li class='active'><a href='user'>Registration</a></li></button");
   }
   else
   {
	   out.println("<li class='active'><a href='logout'>Logout</a></li>");
	   out.println("<li> Welcome"+user+"</li>");
   }
   
   %>
   
   <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="Home">Home</a></li>
   </button>
  
  
      <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Blogs<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="blog">Add New Blog</a></li>
      <li><a href="showblog">Show List of Blogs</a></li>
    </ul></li>
     </button>
     
     <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Friends<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="unfriend">View Friends/Unfriend</a></li>
      <li ><a href="viewusers">Send Friend Request</a></li>
    <li ><a href="acceptrejectrequest">Accept/Reject Request</a></li>
    </ul></li>
    </button>
    
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Jobs<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="applyforjob">Search Job</a></li>
      <li><a href="job">Post New Jobs</a></li>
    </ul></li>
    </button>
    
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Chat Forums<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="chatforum">Create Chat Forum</a></li>
      <li><a href="viewchatforums">View Existing Forums</a></li>
    </ul></li>
    </button>
    
    
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="personalchatting">Personal Chat</a></li>
    </button>
     
     <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="updateprofile">Update Profile</a></li>
    </button>
    
     <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Blog-list<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="blog">Add New Blog</a></li>
      <li><a href="showblog">Show List of Blogs</a></li>
    </ul></li>
     </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showforum">FORUM-LISTS</a></li>
    </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showchat">CHAT-LISTS</a></li>
    </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showprofile">PROFILE-LISTS</a></li>
   </button>
   
</ul></div></nav>
  
  <br><br><br>
 
  
  
 </div>
 
  
  
  
</div>
</div>
</div>
</nav>
<!-- =========== -->



<!-- =====================================List of profile ==================================== -->
<br><br><br>

<div ng-app="myApp" ng-controller="customersCtrl"> 

<!-- <table>
  <tr ng-repeat="x in names">
    <td>{{ x.blog_name}}</td>
    
  </tr>
</table> -->


 <!-- *****************======================================================************ -->


<!-- <h3 class="text-danger" ng-repeat = "x in names"> Blog-Name=>{{x.blog_name}}</h3>
<p  class="text-info" ng-repeat = "x in names"> Description=> <br> {{x.description}}</p> -->

<!-- *****************========================================================*********** -->

 
  <div class="panel panel-default">
                Default panel contents
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
                              
                             
                              <td><h1>{{x.blog_name}}</h1></td>
                             <td><p>{{x.description}}<p></td>
                             
                            <td> 
                            
                   
                           <div class="container">
  <h2></h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Comment</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">comment</h4>
        </div>
        <div class="modal-body"> 
                            
                            
                            
                            
                          <div ng-app="myApp" ng-controller="CommentController">
                        <form ng-submit="CommentController.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="CommentController.blogcomment.id" />
                                 <div class="row">
 
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="create_comment">:</label>
                              <div class="col-md-7">
                                  <textarea rows="7" cols="150" ng-model="CommentController.blogcomment.create_comment" id="create_comment" class="form-control input-sm">
                                  </textarea>
                              </div>
                          </div>
                      </div>
                      
                        <div >  
                              <input type="submit"  value="{{CommentController.blogcomment.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid"/>
                                        <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Blog</button>
                              
                          </div>
                   </form>
                      
                      
                         
  
                         </div>
                          
                                              <script src="<c:url value='/static/app.js' />"></script>
      <script src="<c:url value='/static/comment_controller.js' />"></script>
      <script src="<c:url value='/static/comment_service.js' />"></script>
                          
                          
                          </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
                          
                          
                          
                          
                          
               
                          
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