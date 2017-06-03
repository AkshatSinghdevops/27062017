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
<!-- <link rel="stylesheet" href="resource/css/mystyle.css">
 --><!-- jQuery library -->
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
</style>


background="i1.jpg"
 -->


</head>
<body >
<%-- <img src="<c:url value="img/Mycollabration.jpg"/>"/> --%>



<div class ="container-fluid  second_bar" style="background:#00ffff; solid; padding:20px;" >
<div class="container">



<div class="row">


 <div class="col-sm-12">
 
<nav class="navbar-default">
 
 <div class="navbar-header">
 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#Tnavbar">
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>
 </button>
 </div>
 
 
 
  <div id="Tnavbar" class="navbar-collapse collapse">
  <ul class="nav navbar-nav ">
   <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
  <li><a href="Home">Home</a></li>
  </button>
  <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
  <li><a href="login" >SingIn</a></li>
  </button>
  <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
  <li> <a href="singUp" >SingUp</a></li>
  </button>
   <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
  <li> <a href="Blog" >Blog</a></li>
  </button>
   <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
  <li> <a href="Forum" >Forum</a></li>
  </button>
   <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
  <li> <a href="AboutUs" >About-us</a></li>
  </button>
   <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
  <li> <a href="Chat" >Chat</a></li>
  </button>
  </ul>
  
  
     <div class="navbar-form navbar-right">
              <button type="button" class="btn btn-success dropdown-toggle"  style="margin:8px">
               <li> <a href="Profile" >Profile  ${loginMessage}</a></li>
               
               
                      <c:if test="${not empty loginMessage }"><li><a href="logout" style=" color:#fff;">Logout</a></li></c:if>
     </div>
  
  
  </div>
  
  
  
 
  
  
 </div>
 
  
  
  
</div>
</div>
</div>
</nav>
<!-- =========== -->
</div>
</div>
<div class="text-danger">
<h1>${msg}</h1>
</div>


<c:if test="${isUserClickedsingInPage==true}"><jsp:include page="singIn.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedsingUpPage==true}"><jsp:include page="singUp.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedBlogPage==true}"><jsp:include page="Blog.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedForumPage==true}"><jsp:include page="Forum.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedChatPage==true}"><jsp:include page="Chat.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedAboutUsPage==true}"><jsp:include page="AboutUs.jsp"></jsp:include></c:if>
<c:if test="${isUserClickedProfilePage==true}"><jsp:include page="Profile.jsp"></jsp:include></c:if>
</body>
</html>