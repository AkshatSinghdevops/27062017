<!DOCTYPE html>
<html>
<head>

<!-- **********************BOOTSTRAP************************************* -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- ***********************close **************************************** -->

 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
 
 <script type="text/javascript">
 
    var websocket = new WebSocket("ws://localhost:8080/Collaboration/serverendpointdemo");
    websocket.onmessage = function processMessage(message){
    	
    	var jsonData = JSON.parse(message.data);
    	if(jsonData.message != null) messagesTextArea.value += jsonData.message + "\n";
    	
    }
    
    function sendMessage(){
    	
    	websocket.send(messageText.value);
    	
    	messageText.value = "";
    }
 
 </script>
 
 </head>
 <body>

<!-- <div ng-app="myApp" ng-controller="myCtrl">

 <table>
 
 </table>
{{ tasks }}
</div>

<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
	$http.get('http://localhost:8080/Collaboration/Chat').
    success(function(data) {
        $scope.tasks = data;
        
        }
   });
});
</script> -->

<script>
var app = angular.module('app', []);
app.controller('ctrl1', function($scope, $http) {
  $http.get("myFriends")  /* myFriends */
  .then(function(response) {
      $scope.friends = response.data;
  });
});
</script>




<!-- ======================================================================================= -->

<!-- <textarea id="messagesTextArea" readonly="readonly" rows="10" cols="50"></textarea>
<input type="text" id="messageText" size="50" />
<input type="button" value="Send" onclick="sendMessage();"/> -->


<!-- ========================================================================================= -->
<div class="col-md-4">

<div class="well">

<button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
      UserList
     <div ng-app="app" ng-controller="ctrl1"> 
<table class="table">
		<tr>
			
			
			
			
 <tr ng-repeat="f in friends" >
 
 
 <td> Index-No. => {{$index}} & Name => {{ f.friend_id }}</td>
 

  
  </tr>
 </table>
</div>
      
      
</button>

</div>
</div>


<div class="container text-center">
		<div class="row text-center">
			<div class="col-md-6 col-md-offset-6 text-center">
				<div class="panel panel-default text-center" style="background:#808080;">
					<div class="panel-heading">
						<h3 class="panel-title text-success"><span class="glyphicon glyphicon-envelope"></span>Chat Box</h3>
					</div>
					<div class="panel-body">
				
						
						
					<fieldset>

<textarea id="messages" readonly="readonly" rows="10" cols="50" style="background:#00ffff;"></textarea>


 User_id:<input type='text' id="user"  value='<%=session.getAttribute("loggedInUserID") %>' readonly='true'/></br>
     To :<input type='text' id='to'  /> 

<input type="text" id="userinput" size="50" rows='5' cols='60' placeholder="text here"/>




 <input type="submit"
            value="Send Message" onclick="start()" class="btn btn-danger"/>
 
 
					</fieldset>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- =============***********=========###########===========@@@@@@@@@@@@@===========&&&&&&&&&&&&&======== -->


 
 


<%-- 
<div>
         <br> 
         <div class="panel panel-default">
         <div class="panel-heading">
         <h3 class="panel-title text-success"><span class="glyphicon glyphicon-envelope"></span> Chat Box </h3>
         </div>
         <table>
         <tr>
       <td>
       
   
     From:</td><div>
     <td> <input type='text' id="user"  value='<%=session.getAttribute("loggedInUserID") %>' readonly='true'/></br>
   </td>   </div>
      </tr>
      <tr>
      <td>
     To:</td><td><input type='text' id='to'/>
     </td>
     </tr>
     <tr>
     <td>
     Enter message
     </td>
     <td>
     <textarea id="userinput" rows='5' cols='60'></textarea></br>
    </td>
    </tr>
    </table>
    </div>
    <input type="submit"
            value="Send Message" onclick="start()" class="btn btn-danger"/>
    <div id="messages"></div>
    </div> --%>
    
    
<!-- =============***********=========###########===========@@@@@@@@@@@@@===========&&&&&&&&&&&&&======== -->
    
    
    
    
    
    
    <script type="text/javascript">
    var app = angular.module('myApp', []);
    app.controller('ctrl', function($scope, $http) {
      $http.get("currentuser")
      .then(function(response) {
          $scope.user = response.data;
      });
    });
        var webSocket = new WebSocket(
                'ws://localhost:8080/Collaboration/serverendpointdemo');

        webSocket.onerror = function(event) {
            onError(event)
        };

        webSocket.onopen = function(event) {
        	
            onOpen(event)
            
        };

        webSocket.onmessage = function(event) {
            onMessage(event)
        };

        function onMessage(event) {
        var res=event.data;  
        	
        	<%-- document.getElementById('messages').innerHTML += '<div class="panel panel-primary"><div class="panel-heading">message on <%=new java.util.Date()%> </div>'
                    + event.data+'</div>';
        	document.getElementById('user').innerHTML=event.data; --%>
        	
        	
        	document.getElementById('messages').innerHTML += '<%=new java.util.Date()%>'
                + event.data+'';
    	document.getElementById('user').innerHTML=event.data;
        	
        	
        	
        	
        	
        	
        
        }
        function onOpen(event) {
            document.getElementById('messages').innerHTML = ''; /* Now Connection established */
        }

        function onError(event) {
            alert("error"+event.data);
        }

        function start() {
        	
                 var text = document.getElementById("userinput").value;
                var user=document.getElementById("user").value;
                var to=document.getElementById("to").value;
            webSocket.send( user + " SENDING TO " + to + " ==>> " + text );
            return false;
        }
        
    </script>














</body>
</html>