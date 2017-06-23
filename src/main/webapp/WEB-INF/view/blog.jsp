<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
  
  
   <style>
         .Search {
     position: absolute;
     top: 355px;
     left: 575px;
}
.Search input {
     height: 50px;
     width: 180pt;
}
        </style>
<title>Insert title here</title>
</head>
 <body ng-app="myApp" class="ng-cloak"  >
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
<li ><a href="MyFriendList">MyFriend-List</a></li>    </ul></li>
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
    
    
    <!--  <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="blog">CREATE-BLOG</a></li>
    </button> -->
   
     
     <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="AboutUs">Update Profile</a></li>
    </button>
    
  <!--   <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
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

</div>
</div>
 <br><br><br><br>
<!-- =============================================================================================================== -->
 <div class="generic-container text-center" ng-controller="BlogController as ctrl">
  <div class="panel panel-default">
   <div class="panel-heading"><span class="lead"><img src='<c:url value='/static/images/2.jpg'/>'width="1000" height="150"/></span></div><br>
   <div class="formcontainer">
    <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
     <input type="hidden" ng-model="ctrl.blog.id" />
           <div class="row">
            <div class="form-group col-md-12">
            <label class="col-md-2 control-lable btn btn-primary btn-sm" for="blog_name">Blog Title:</label>
               <div class="col-md-7">
               <input type="text" ng-model="ctrl.blog.blog_name" id="blog_name" class="title form-control input-sm" placeholder="Enter your blog title" required/>
               </div> </div></div>
           <div class="row">
            <div class="form-group col-md-12">
             <label class="col-md-2 control-lable btn btn-primary btn-sm" for="description">Description:</label>
               <div class="col-md-7">
               <textarea rows="8" cols="80" ng-model="ctrl.blog.description" id="description" class="form-control input-sm" placeholder="Enter your blog description." required>
                </textarea> </div></div> </div> 
        <div class="row">
         <div class="form-actions floatRight  text-center">
          <input type="submit"  value="{{!ctrl.blog.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
          <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Blog</button>
           </div> </div> </form>
                       <div class="container">
                  <table class="table">

<tr ng-repeat="u in ctrl.blogs"><td><table><tr>
<td ng-bind="u.dateTime">
{{ u.dataTime |  date:'MM/dd/yyyy'}}</td></tr>
<tr><td><table><tr><td> <img src='<c:url value='/static/images/{{ u.userID }}.jpeg' />' width="75" height="75"/></td></tr>
<tr><td ng-bind="u.title">{{ u.blog_name }}</td><tr>
<tr><td ng-bind="u.description">{{ u.description }}</td></tr>
<tr><td><table>
<th><td><button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width">Edit</button></td> </th>
<th><td> <a href="manage_blog_remove?id={{ u.id }}"  onclick="return confirm('Are you sure?')">Remove</a> </td></th>
 </table></td> </tr>
</table></td><tr></table></td>
</tr></table>
               </div>  </div> </div></div>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/app.js' />"></script>
      <script src="<c:url value='/static/blog_controller.js' />"></script>
      <script src="<c:url value='/static/blog_service.js' />"></script>            
</body>
</html>