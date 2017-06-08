'use strict'

angular.modul('myApp').controller('CommentController',
		['$scope','CommentService', function($scope,CommentService)
                                                       
         {
			var self= this;
			self.blogcomment = {id:null,create_comment:'' };
			self.blogcomments=[];
			
			self.submit();
			
			
			fetchAllComments();
			
			
			function fetchAllComments()
			{
				CommentService.fetchAllComments()
				.then(
				  function(d)
				  {
					   self.blogcomments=d;
				  },
				  function(errResponse)
				  {
					   console.error('Error while fetching')
				  }
				);
			}
			
			
			
			
			function createComment(blogcomment)
			{
				 CommentService.createComment(blogcomment)
				 .then(
					 fetchAllComments,
					function(errResponse)
					{
						 console.error('error while create')
					}
				   );
			}
			
			
			function updateComment(blogcomment, id){
		        CommentService.updateBlog(blogcomment, id)
		            .then(
		            fetchAllComment,
		            function(errResponse){
		                console.error('Error while updating Blogcomment');
		            }
		        );
		    }
			
			
			
			
			
			
			
			
			
	
			
			function submit(){
				
				if(self.blogcomment.id===null)
					{
					console.log('Saving New Blog', self.blogcomment);
		            createComment(self.blogcomment);
		        }else{
		            updateBlogComment(self.blogcomment, self.blogcomment.id);
		            console.log('blogcomment updated with id ', self.blogcomment.id);
		        }
				
				
			}
			
		
			
			
			
			
			
			
			
			
             }]);


