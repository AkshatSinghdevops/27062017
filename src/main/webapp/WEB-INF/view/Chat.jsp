<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</head>
Hello Form Chat
<body ng-app="collaboration2">

  <div ng-controller="cnt2">
  <table>
  <thead>
  <tr>
      <th>ID</th>
      <th>USER_ID</th>
      <th>FRIENF_ID </th>
      <th>MESSAGE </th>
      <th>CREATE_DATE</th>
  </tr>
  </thead>
  <tbody>
  <tr ng-repeat="Forumdata in Forumdatas">
  <td>{{Forumdata.id}}</td>
  <td>  {{Forumdata.user_id}}</td>
    <td>{{Forumdata.friend_id}}</td>
   <td> {{Forumdata.message}}</td>
    <td>{{Forumdata.create_date}}</td>
  
  </tbody>
  
  </table>
  
  
  </div>
</body>
</html>
















