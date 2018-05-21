<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>
  <link rel="stylesheet" type="text/css" href="css/login.css" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <script type="text/javascript" src="js/lib/jquery-1.10.2.min.js"></script>
  <script type="text/javascript">
        function login() {
            console.log("in log in");
            $.ajax({
                type: "POST",//Request type
                //dataType: "json",// The server return data type
                url: "user/login.action" ,//url 
                data: $('#login_form').serialize(), //The Parameter Serialization
                success: function (result) {
                  //window.location.href="main"
               }
            });
        }
  </script>
</head>
                                      
<body>
	<div class="login">
		<div class="heading">
			<h2 class="login_title">Sign in</h2>
			<form class="form_layout" id="login_form" action="user/login.action" method="post">

				<div class="input-group input-group-lg">
					<input type="text" class="form-control" name="name"
						placeholder="Username or email">
				</div>

				<div class="input-group input-group-lg">
					<input type="password" class="form-control" placeholder="Password" name="password">
				</div>

				<button class="float" type="submit" >Login</button>
				<div class="float">   
				    <a class="sign_up_link" href="regist.jsp">sign up</a>
				</div>
			</form>
		</div>
	</div>
	<div class="footer">
		<p class="footer_content">Copyright © 2018 schwa test company, Inc All right Reserved</p>
	</div>
</body>

</html>