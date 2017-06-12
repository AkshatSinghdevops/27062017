<html ng-app="myapp">
<head>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script type="text/javascript" src="/angular.min.js"></script>

</head>

<body ng-controller="customersCtrl">





<table cellpadding="2" cellspacing="2">

<tr>
<th>   ID  </th>
<th>   USEI_ID  </th>

<th>   BLOG_ID  </th>

<th>   ID  </th>
</tr>


   
</table>








<script type="text/javascript">

var myapp = angular.module('myapp',[]);
myapp.controller('customersCtrl',function($scope){
	
	$scope.listComment = [
	                      
	                      {id:'01',user_id:'niit',blog_id:'niit' }
	                      ];
	
	
});


</script>






<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("http://localhost:8080/Collaboration/comment")
    .then(function (response) {$scope.names = response.data;});
});
</script>









</body>
</html>