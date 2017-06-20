<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script> 
      <script src="<c:url value='/static/app.js' />"></script>
      <script src="<c:url value='/static/job_controller.js' />"></script>
      <script src="<c:url value='/static/job_service.js' />"></script>
  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body ng-app="myApp" class="ng-cloak">
                          
 
 
 <div class="generic-container" ng-controller="JobController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading">
              
    <%-- <span class="lead"><img src='<c:url value='/static/images/image15.jpg' />'
	 alt="This is image" width="900" height="100"></span> --%>
	 
	<h1 class="text-success">Welecome To Admin Page </h1>
	<p2 class="text-info"> Now, Create A Job Vacancy </p2> 
	 
	 </div>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
     
                    
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable text-danger" for="title">Job Title:</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.job.title" id="title" class="title form-control input-sm" placeholder="Enter Your Job Name (like engineers,developers ect.,..)" required />
                              </div>
                          </div>
                    
                     
                      
                     
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable text-warning" for="qualification">Required Qualification:</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.job.qualification" id="qualification" class="qualification form-control input-sm" placeholder="Enter Qualification " required />
                              </div>
                          </div>
                     
                   
                     
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable text-success" for="description">Description</label>
                              <div class="col-md-7">
                                   <textarea rows="8" cols="80" ng-model="ctrl.job.description" id="description" class="form-control input-sm" placeholder="Enter Some Description about your job." required>
                              </textarea>
                              </div>
                          </div>
                     
                  
                      
                          <div class="form-group col-md-12">
                          <script>
                                $(document).ready(function() {
                             $("#datepicker").datepicker({dateFormat: "dd-mm-yy"});
                                });
                                </script>
                              <label class="col-md-2 control-lable text-info" for="datepicker">Date</label>
                              <div class="col-md-7">
                              
                                  <input type="text" ng-model="ctrl.job.dateTime" id="datepicker" class="form-control input-sm" placeholder="select date." required/>
                             
                          </div>
                      </div></div>
                      <br>
                     
                          <div class="form-actions floatRight text-center">
                              <input type="submit"  value="{{!ctrl.job.id ? 'Add' : 'Update'}}" class="btn btn-outline-danger" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-outline-danger" ng-disabled="myForm.$pristine">Reset</button>
                          </div>
                     
                  </form>
                  
                 <div class="text-center text-danger">
                 
                 <h2>List Of Jobs</h2>
                 </div>
                 <br>
                  <table class="table" >
<tr>
<th class="text-danger">Jod ID</th>
<th class="text-success">Job Title</th>
<th class="text-info">Job Qualififcation</th>
<th class="text-primary">Job Description</th>
<th class="text-warning">Date Time</th>
<th class="text-default">Editing</th>
<th class="text-danger">Details</th>
</tr>
<tr ng-repeat="u in ctrl.jobs">
<td ng-bind="u.id">{{ u.id }}</td>
<td ng-bind="u.title">{{ u.title }}</td>
<td ng-bind="u.qualification" > {{ u.qualification }}</td>
<td ng-bind="u.description">{{ u.description }}</td>
<td ng-bind="u.dateTime">{{ u.dateTime }}</td>
<td>

<button type="button" ng-click="ctrl.edit(u.id)"><span class="glyphicon glyphicon-pencil"></span></button>
  <a href="postAJob/delete?id={{ u.id }}" onclick="return confirm('Are you sure to remove it?')"><span class="glyphicon glyphicon-trash"></span></a>
  </td>
   <td><a href="viewappliedprofile?id={{ u.id }}">Details</a> </td>                          
</tr>
</table>
                 
              </div>
          </div></div>
 
 
</body>
</html>