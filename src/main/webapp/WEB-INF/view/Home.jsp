<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


<link href="../resources/css/style.css" rel="stylesheet">


<style>

footer {
	background: #2b2b2b;
	text-align: center;
	color: #ddd;
	padding:50px 0 50px;
}

footer a {
    color: #ddd;
}

footer a:hover {
    color: #fff;
}

footer ul.social-networks {
	list-style:none;
}

footer ul.social-networks li {
	display:inline;
}

footer ul.social-networks li i {
	display:inline-block;
}

footer ul.social-networks li a {
	color: #5e5e5e;
	margin: 0 5px;
}

footer ul.social-networks li a:hover {
	text-decoration:none;
	-webkit-transition: all 0.4s ease-in-out;
	-moz-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	-ms-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}

footer ul.social-networks li i.icon-bgdark {
	background:#414141;
	color: #656565;
}


footer ul.social-networks li a i.icon-instagram:hover {
	background: #ba7b3d;
	color: #fff;
}

footer ul.social-networks li a i.icon-twitter:hover {
	background: #5ad2eb;
	color: #fff;
}
footer ul.social-networks li a i.icon-dribbble:hover {
	background: #f57b71;
	color: #fff;
}
footer ul.social-networks li a i.icon-pinterest:hover {
	background: #d84848;
	color: #fff;
}




/* =========================================================
07. Icons
============================================================ */

/* bg */
i.icon-bglight {
	color: #444;
	background: #f7f7f7;
}
i.icon-bglight.active {
	color: #fff;
}

i.icon-bglight.active:hover{
	color: #444;
	background: #f7f7f7;
}

i.icon-bgdark {
	color: #f7f7f7;
	background: #333;
}
i.icon-bgdark:hover {
	color: #fff;
}
i.icon-bgdark.active:hover {
	color: #f7f7f7;
	background: #333;
}

/* square */
i.icon-square {
	display: inline-block;
	text-align: center;
	width: 24px !important;
	height: 24px !important;
	line-height: 24px !important;
}
i.icon-square.icon-2x{
	width: 48px !important;
	height: 48px !important;
	line-height: 48px !important;
}
i.icon-square.icon-3x{
	width: 72px !important;
	height: 72px !important;
	line-height: 72px !important;
}
i.icon-square.icon-4x{
	width: 96px !important;
	height: 96px !important;
	line-height: 96px !important;
}
i.icon-square.icon-5x{
	width: 120px !important;
	height: 120px !important;
	line-height: 120px !important;
}

/* rounded */
i.icon-rounded {
	display: inline-block;
	border-radius: 6px !important;
	-moz-border-radius: 6px !important;
	-webkit-border-radius: 6px !important;
	-o-border-radius: 6px !important;
	-ms-border-radius: 6px !important;
	text-align: center;
	width: 24px !important;
	height: 24px !important;
	line-height: 24px !important;
}

.icon-rounded.icon-2x{
	width: 48px !important;
	height: 48px !important;
	line-height: 48px !important;
}
.icon-rounded.icon-3x{
	width: 72px !important;
	height: 72px !important;
	line-height: 72px !important;
	border-radius: 8px !important;
	-moz-border-radius: 8px !important;
	-webkit-border-radius: 8px !important;
	-o-border-radius: 8px !important;
	-ms-border-radius: 8px !important;
}
.icon-rounded.icon-4x{
	width: 96px !important;
	height: 96px !important;
	line-height: 96px !important;
	border-radius: 10px !important;
	-moz-border-radius: 10px !important;
	-webkit-border-radius: 10px !important;
	-o-border-radius: 10px !important;
	-ms-border-radius: 10px !important;
}
.icon-rounded.icon-5x{
	width: 120px !important;
	height: 120px !important;
	line-height: 120px !important;
	border-radius: 12px !important;
	-moz-border-radius: 12px !important;
	-webkit-border-radius: 12px !important;
	-o-border-radius: 12px !important;
	-ms-border-radius: 12px !important;
}


/* circled */
i.icon-circled {
	display: inline-block;
	border-radius: 1000px !important;
	-moz-border-radius: 1000px !important;
	-webkit-border-radius: 1000px !important;
	-o-border-radius: 1000px !important;
	-ms-border-radius: 1000px !important;
	text-align: center;
	width: 24px !important;
	height: 24px !important;
	line-height: 24px !important;
}

.icon-circled.icon-2x{
	width: 48px !important;
	height: 48px !important;
	line-height: 48px !important;
}
.icon-circled.icon-3x{
	width: 72px !important;
	height: 72px !important;
	line-height: 72px !important;
}
.icon-circled.icon-4x{
	width: 96px !important;
	height: 96px !important;
	line-height: 96px !important;
}
.icon-circled.icon-5x{
	width: 120px !important;
	height: 120px !important;
	line-height: 120px !important;
}

i.icon-white {
	color:#fff;
}


/* more icon sizes for font-awesome icons */

.icon-6x {
  font-size: 6em;
}
.icon-6x.icon-border {
  border-width: 6px;
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;
  border-radius: 8px;
}

.icon-7x {
  font-size: 7em;
}
.icon-6x.icon-border {
  border-width: 6px;
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;
  border-radius: 8px;
}

.icon-8x {
  font-size: 8em;
}
.icon-6x.icon-border {
  border-width: 6px;
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;
  border-radius: 8px;
}

.icon-9x {
  font-size: 9em;
}
.icon-6x.icon-border {
  border-width: 6px;
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;
  border-radius: 8px;
}
.icon-10x {
  font-size: 10em;
}
.icon-6x.icon-border {
  border-width: 6px;
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;
  border-radius: 8px;
}



</style>


</head>
<%--  <body >
<img src="<c:url value="img/Mycollabration.jpg"/>"/> --%>


  
  
 <!-- <body ng-app="myApp" class="ng-cloak"  > -->
 <body>
 
 
 
  <nav class="navbar navbar-default navbar-fixed-top" style="background:#E9967A;"> <!-- style="background:#FFA07A; solid; padding:20px;" -->
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
    <li class="active"><a href="AboutUs"><span class="glyphicon glyphicon-envelope"></span>Chating</a></li>
   </button> -->
   
  <!--  <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="job"><span class="glyphicon glyphicon-briefcase"></span>POST-NEW-JOB</a></li>
   </button>

  <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="joblist"><span class="glyphicon glyphicon-list"></span>MY-JOB-LIST</a></li>
   </button>
     -->
    <ul class="nav navbar-nav navbar-right">
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

  </ul>


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
 
 

 
<!-- ===============================--carousel--=============================================== -->
   <marquee class="text-danger">Welcome ,Collaboration Web-Site</marquee>


 <jsp:include page='carousel/caro.jsp'></jsp:include>

 
<!-- ===================================--close--============================================== -->

<footer>
<div class="container">
	<div class="row">
		<div class="span6 offset3">
			<ul class="social-networks">
				<li><a href="#"><i class="icon-circled icon-bgdark icon-instagram icon-2x"></i></a></li>
				<li><a href="#"><i class="icon-circled icon-bgdark icon-twitter icon-2x"></i></a></li>
				<li><a href="#"><i class="icon-circled icon-bgdark icon-dribbble icon-2x"></i></a></li>
				<li><a href="#"><i class="icon-circled icon-bgdark icon-pinterest icon-2x"></i></a></li>
			</ul>
			<p class="copyright">
				&copy; 2017 Copy rights by.........
			</p>
		</div>
	</div>
</div>
<!-- ./container -->
</footer>

 
 
 <!-- ============================================================================================================= -->   
 
 









<c:if test="${isUserClickedsingInPage==true}"><jsp:include page="singIn.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedsingUpPage==true}"><jsp:include page="singUp.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedBlogPage==true}"><jsp:include page="showblog.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedForumPage==true}"><jsp:include page="showforum.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedChatPage==true}"><jsp:include page="showchat.jsp"></jsp:include></c:if>
<%-- <c:if test="${isUserClickedAboutUsPage==true}"><jsp:include page="AboutUs.jsp"></jsp:include></c:if>
 --%><c:if test="${isUserClickedProfilePage==true}"><jsp:include page="showprofile.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedFriendPage==true}"><jsp:include page="ViewFriend.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedRequest==true}"><jsp:include page="ViewRequest.jsp"></jsp:include></c:if>




</body>
</html>