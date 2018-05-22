<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up Page</title>
	<link rel="stylesheet" type="text/css" href="css/signup.css" />
	<script type="text/javascript" src="js/lib/jquery-1.10.2.min.js"></script>

</head>
<body>
    <div class="nav">注册</div>
	<div class="sign_up_form">
		<form action="" class="from_bady">
			<table border="1">
				<tr>
					<td class="row_name">用户名</td>  
					<td><input type="text" name="name" class="name" id="userName"></td>  
				</tr>  
				<tr>  
					<td class="row_name">密码</td>  
					<td><input type="password" name="password" class="password" id="password"></td>
				</tr>  
				<tr>  
					<td class="row_name">确认密码</td>  
					<td><input type="password" name="confirm_password" class="password_confirm"></td>
					<div class="error_message"></div>
				</tr>  			
				<tr>  
					<td><input type="button" value="注册" id="regist"></td>  
				</tr>  
			</table>
		</form>
	</div>
</body>
	<script type="text/javascript">
        
        $("#regist").click(function(){
        	$.post("http://localhost:8080/BSCHI/user/regist", 
					{userName: $("#userName").val(), password: $("#password").val()},
					function(data){
						if (data["code"] == "0"){
							alert("恭喜注册成功");
						}else if (data["code"] == "-1"){
							alert("抱歉，用户名已经存在");
						}
			})
        })
	</script>

</html> 