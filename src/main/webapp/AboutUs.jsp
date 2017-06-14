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



<!-- 

<from>
<input id="textMessage" type="text">
<input onclick="sendMessage();" value="Send Message" type="button">
</from>

<br>
<textarea id="messagetextarea" rows="10" cols="50"></textarea>






 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>


<script type="text/javascript">
var webSocket = new webSocket("ws://localhost:8080/Collaboration/serverendpointdemo");
var messagetextarea = document.getElementById("messagetextarea");

webSocket.onopen = function(message){processOpen(message);};
webSocket.onclose = function(message){processClose(message);};
webSocket.onerror = function(message){processError(message);};
webSocket.onmessage = function(message){processMessage(message);};

function processOpen(message){
	
	messagetextarea.value += "server connect...." +"\n";
	
}
function processMessage(message)
{
	messagetextarea.value += "receved from server ==>" + message.data + "\n";
	
	}
function sendMessage()
{
	
	if(textMessage.value!="close"){
	
	 webSocket.send(textMessage.value);
	 messagetextarea.value += "send to server ==> " + textMessage.value + "\n";
	 textMessage.value="";
	}
	else
		 webSocket.close();
	 }


function processClose(message)
{
	
	webSocket.send("client disconnect.........");
	
	messagetextarea.value += "Disconnect server.............";  
	
	}








function processError(message)
{
	messagetextarea.value += "Error..........\n";
	
	
	}

</script> -->
<!-- ======================================================================================= -->

<textarea id="messagesTextArea" readonly="readonly" rows="10" cols="50"></textarea>
<input type="text" id="messageText" size="50" />
<input type="button" value="Send" onclick="sendMessage();"/>


<!-- ========================================================================================= -->




<div class="text-center">
<div class="container text-center">
		<div class="row text-center">
			<div class="col-md-6 col-md-offset-6 text-center">
				<div class="panel panel-default text-center" style="background:#800000;">
					<div class="panel-heading">
						<h3 class="panel-title">Chat Box</h3>
					</div>
					<div class="panel-body">
				
						
						
					<fieldset>

<textarea id="messagesTextArea" readonly="readonly" rows="10" cols="50" style="background:#00ffff;"></textarea>
<input type="text" id="messageText" size="50" placeholder="text here" />
<input type="button" class="btn btn-danger" value="Send" onclick="sendMessage();"/>
 
 
					</fieldset>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

























</body>
</html>