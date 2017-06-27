<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="<c:url value='/static/app.js'/>"></script>
<script src="<c:url value='/static/comment_controller.js'/>"></script>
<script src="<c:url value='/static/comment_service.js'/>"></script>

</head>
<body ng-app="myApp" class="ng-cloak">


<!-- ================================Home navbar============================================= -->

 <div class="navbar navbar-inverse navbar-fixed-top" style="background:;color: #000;">
      <div class="container">
        <div class="navbar-header">
          <a href="/" class="navbar-brand">Collaboration!!</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
     <ul class="nav navbar-nav">
          <li>
              <a href="Home">Home</a>
          </li>
     </ul>
  
  
         <ul class="nav navbar-nav navbar-right">
            <!-- <li><a href="http://builtwithbootstrap.com/" target="_blank">Built With Bootstrap</a></li>
            <li><a href="https://wrapbootstrap.com/?ref=bsw" target="_blank">WrapBootstrap</a></li> -->
               <li><a>Welcome to Forum  Message</a></li>
          </ul>

        </div>
      </div>
    </div>

<!-- =====================================List of profile ==================================== -->
<br><br><br><br>
 <div class="generic-container" ng-controller="MessageForumController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading text-success "><span class="lead"><h3>-----Add Message To a Forum-----</h3></span></div><br><br>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.messageforum.id" />
                    
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="message">Type Message:</label>
                              <div class="col-md-7">
                                  <textarea rows="8" cols="80" ng-model="ctrl.messageforum.forum_comment" id="message" class="form-control input-sm" placeholder="Enter your message." required>
                                  </textarea>
                              </div>
                          </div>
                      </div> <br>
                      
                      <div class="row">
                          <div class="form-actions floatRight text-center">
                              <input type="submit"  value="{{!ctrl.messageforum.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                             </div>
                      </div>
                      </form>
                      
                       <table class="table" >
<tr>
<th>ID</th>
<th>Forum Message</th>
<th>Froum Id</th>
</tr>
<tr ng-repeat="u in chatforumlist ">
<td>{{u.forum_id}}</td>
<td >{{ u.user_id }}</td>
<td >{{ u.forum_comment }}</td>                      
</tr>
</table>
                      
                      </div></div></div>
<script>                      
var app = angular.module('myApp', []);
app.controller('MessageForumController', function($scope, $http) {
  $http.get("list_message_forum")
  .then(function(response) {
      $scope.chatforumlist = response.data;
  });
});
</script>
<!-- ============================================================================================= -->
</body>
</html>