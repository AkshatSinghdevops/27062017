<html ng-app="myapp">
<head>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script type="text/javascript" src="/angular.min.js"></script>

</head>

<body>


<div class="container text-center">
		<div class="row text-center">
			<div class="col-md-6 col-md-offset-6 text-center">
				<div class="panel panel-default text-center" style="background:#808080;">
					<div class="panel-heading">
						<h2 class="panel-title text-success">Blog-Comment</h2>
					</div>
					<div class="panel-body">
				
						
						
					<fieldset>

  <textarea id="messagesTextArea" readonly="readonly" rows="10" cols="100" style="background:#00ffff;"></textarea>

  <input type="text" id="messageText" size="50" placeholder="text here"/>

  <input type="button" class="btn btn-danger" value="Send" onclick="sendMessage();"/>
 
 
					</fieldset>
						
					</div>
				</div>
			</div>
		</div></div>







</body>
</html>