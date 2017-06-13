<!DOCTYPE html>
<html>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
 --><body>

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





<from>
<input id="textMessage" type="text">
<input onclick="sendMessage();" value="Send Message" type="button">
</from>

<br>
<textarea id="messagetextarea" rows="10" cols="50"></textarea>
<script type="text/javascript">
var webSocket = new webSocket("http://localhost:8080/Collaboration/serverendpointdemo");
var messagetextarea = document.getElementById("messagetextarea");
webSocket.onopen = function(Message){processOpen(Message);};
webSocket.onclose = function(Message){processClose(Message);};
webSocket.onerror = function(Message){processError(Message);};
webSocket.onmessage = function(Message){processMessage(Message);};
function processOpen(Message){
	messagetextarea.value += "server connect...." +"\n";
	
}
function processMessage(Message)
{
	messagetextarea.value += "receved from server ==>" + Message.data + "\n";
	
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


function processClose(Message)
{
	
	webSocket.send("client disconnect.........");
	messagetextarea.value += "Disconnect server.............";  
	
	}








function processError(Message)
{
	messagetextarea.value += "Error..........\n";
	
	
	}

</script>

</body>
</html>