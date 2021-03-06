﻿<%@page import="java.util.Date"%>
<html lang="en">
  <head>
    <meta charset="utf-8">

    <title>登录页面</title>

	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<style type="text/css">
		.center{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		}
	</style>
  </head>
	
	<body>
		<%=new Date()%>
		<div class="center">
			<form  role="form" id="target" action="Se1414080902230Servlet">
				<div class="input-group">
					<input type="text" name="username" class="form-control" placeholder="用户名" required autofocus></input><br>
					<input type="password" name="password" class="form-control"placeholder="密码" required></input>
				
					<div class="checkbox">
						<label>
							<input type="checkbox" name="remember" value="记住密码">记住密码</input>
						</label>
					</div>
						<button class="btn btn-primary"type="submit">登录</button>
						<button  class="btn btn-primary"type="onclick">注册</button><br>
					<button class="btn btn-primary btn-block"type="button" onclick="requestJson()">请求JSON文件</button>
					
				</div>
			</form>
		</div>
		<script>
			$( "#target" ).submit(function( event ) {
				alert( "Handler for .submit() called." );
				event.preventDefault();
			});
		</script>
		<script>
			function requestJson(){
				$.ajax({
					url: "success.json"
				}).done(function(data) {
					if ( console && console.log ) {
						console.dir(data);
						alert(data.msg);
					}
				});
			}
		</script>
	</body>
</html>