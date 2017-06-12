'use strict';

angular.module('myApp').factory('CommentService',['$http','$q',function($http, $q){
	
	 var REST_SERVICE_URI = 'http://localhost:8080/Collaboration/addcomment/';
	    
	 var REST_SERVICE_Fetch_URI = 'http://localhost:8080/Collaboration/commentlist/';
	 
	 var factory = {
	        fetchAllComments: fetchAllComments,
	        createComment: createComment,
	       
	     };
	 return factory;
	 
	 function fetchAllComments(){
		 var deferred = $q.defer();
		 $http.get(REST_SERVICE_Fetch_URI)
		 .then (
		   function(reponse){
		deferred.resolve(response.data);
		},
		function(errResponce){
			console.error('Error while Fetching data')
			deferred.reject(errResponse)
		}
		 );
		 
		return deferred.promise; 
	 }
	 
	 
	 function createComment(blogcomment){
		  var deferred = $q.defer();
		  $http.post(REST_SERVICE_URL,blogcomment)
		  .then (
			function(reponse){
				deferred.resolve(response.data);
				},
				function(errResponse){
					 console.error('Error while Creating Data')
					 deferred.reject(errResponse)
				}
		  );
		  
		  return deferred.promise;
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	
}]);

