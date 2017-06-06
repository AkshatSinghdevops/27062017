var collabora=angular.module('collbora',['collaboraservice']);
collabora.controller('cntrl',function($scope,$http){
	
	var geturl="http://localhost:8080/Collaboration/Profile"
		$http.get(geturl).
	     success(function(data) {
	         $scope.mydata = data;
	         
	    });
	
})


var collaboration = angular.module('collaboration',['collaborationservice']);
collaboration.controller('cnt',function($csope,$http){
	 
	 var geturl ="http://localhost:8080/Collaboration/Blog"
		 $http.get(geturl).
		 success(function(data){
			  
			 $scope.Blogdata = data; 
		 });
	 
})


var collaboration1 = angular.module('collaboration1',['collaboration1services']);
collaboration1.controller('cnt1',function($csope,$http){
	
	var geturl="http://localhost:8080/Collaboration/Forum"
		
		$http.get(geturl).
		success(function(data1){
		
		$scope.Forumdata = data1;
		
		
	});
})

var collaboration2 = angular.module('collaboration2',['collaboration1services']);
collaboration2.controller('cnt2',function($csope,$http){
	
	var geturl="http://localhost:8080/Collaboration/Chat"
		
		$http.get(geturl).
		success(function(data2){
		
		$scope.Forumdata = data2;
		
		
	});
})


var collaboration3 = angular.module('collaboration3',['collaboration1services']);
collaboration3.controller('cnt3',function($csope,$http){
	
	var geturl="http://localhost:8080/Collaboration/singIn"
		
		$http.get(geturl).
		success(function(data3){
		
		$scope.Forumdata = data3;
		
		
	});
})


var collabora1=angular.module('collbora1',['collaboraservice']);
collabora1.controller('cntrl',function($scope,$http){
	
	var geturl="http://localhost:8080/Collaboration/NewFile"
		$http.get(geturl).
	     success(function(data1) {
	         $scope.mydata1 = data1;
	         
	    });
	
})



